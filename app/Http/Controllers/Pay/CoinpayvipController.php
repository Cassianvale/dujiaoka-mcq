<?php
/**
 * CoinpayvipController.php
 * Coinpay.vip
 * Author CoinpayVIP
 * Created on 2022/4/17 11:59
 */
 
namespace App\Http\Controllers\Pay;

use App\Exceptions\RuleValidationException;
use App\Http\Controllers\PayController;
use Illuminate\Http\Request;

class CoinpayvipController extends PayController
{

    public function gateway(string $payway, string $orderSN)
    {
        try {
            // 加载网关
            $this->loadGateWay($orderSN, $payway);
			$parameter = array(
				"merchantId" => $this->payGateway->merchant_id,
				"outTradeNo"	=> $this->order->order_sn,
				"subject"	=> $this->order->order_sn,//商品名称(非空)
				"totalAmount"	=> (float)$this->order->actual_price,//原价
				"body"	=> $this->order->order_sn,
				"noUrl"	=> url($this->payGateway->pay_handleroute . '/notify_url'),//回调地址
				"reUrl"	=> route('coinpayvip-return', ['order_id' => $this->order->order_sn]),//支付成功跳转地址（不会传递任何参数，一般为订单详情url）
				"payType"	=> $payway,
				"returnMode" =>"2"//返回方式 0->GET,1->POST,2->JSON
			);

			$parameter['sign']=$this->CoinpayvipSign($parameter, $this->payGateway->merchant_key);
			
			//$this->payGateway->merchant_pem为网关地址
			$ret_json=$this->curlphp($this->payGateway->merchant_pem,$parameter,1);
            $ret_array = @json_decode($ret_json, true);
			if($ret_array['code']=='1'){
				return redirect()->away($ret_array['msg']);
			}else{
				return $this->err(__('dujiaoka.prompt.abnormal_payment_channel') . $ret_array['msg']);
			}
        } catch (RuleValidationException $exception) {
            return $this->err($exception->getMessage());
        }
    }

	private function CoinpayvipSign($parameter,$Key)
    {
        reset($parameter);
		ksort($parameter);
        $myparameter='';
        foreach ($parameter as $pars) {
			$myparameter.=$pars;
		}
		$sign=md5($myparameter.$Key);
        return $sign;
    }
	private function curlphp($url,$params=false,$ispost=0){//0为get 1为post 
		$ch = curl_init();
		curl_setopt( $ch, CURLOPT_HTTP_VERSION , CURL_HTTP_VERSION_1_1 );
		curl_setopt( $ch, CURLOPT_USERAGENT , 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22' );
		curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT , 30 );
		curl_setopt( $ch, CURLOPT_TIMEOUT , 30);
		curl_setopt( $ch, CURLOPT_RETURNTRANSFER , true );
		curl_setopt( $ch, CURLOPT_SSL_VERIFYPEER, FALSE);//禁用后cURL将终止从服务端进行验证
		curl_setopt( $ch, CURLOPT_SSL_VERIFYHOST, FALSE);//不验证HTTPS证书
		if( $ispost )
		{
			curl_setopt( $ch , CURLOPT_POST , true );
			curl_setopt( $ch , CURLOPT_POSTFIELDS , $params );
			curl_setopt( $ch , CURLOPT_URL , $url );
		}
		else
		{
			if($params){
				curl_setopt( $ch , CURLOPT_URL , $url.'?'.$params );
			}else{
				curl_setopt( $ch , CURLOPT_URL , $url);
			}
		}
		$response = curl_exec( $ch );
		if ($response === FALSE) {
			echo "cURL Error: " . curl_error($ch);
			return false;
		}
		curl_close( $ch );
		return $response;
	}
	
    public function notifyUrl(Request $request)
    {
		//获取返回json数据
		$json_param = json_decode(file_get_contents('php://input'), true);
		
		$order = $this->orderService->detailOrderSN($json_param['outTradeNo']);
        if (!$order) {
            return 'fail';
        }
		
		$payGateway = $this->payService->detail($order->pay_id);
        if (!$payGateway) {
            return 'fail';
        }
		
		if($json_param['merchantId']==$payGateway->merchant_id and $json_param['tradeStatus']=='success'){
			$requestsign = $json_param['sign'];
			unset($json_param['sign']);
			$sign=$this->CoinpayvipSign($json_param, $payGateway->merchant_key);
			if($sign==$requestsign){
				$this->orderProcessService->completedOrder($json_param['outTradeNo'], $json_param['totalAmount'], $json_param['orderNo']);
            	return 'success';
			}else{
				return 'fail';
			}
		}else{
			return 'fail';
		}
        
    }

    public function returnUrl(Request $request)
    {
        $oid = $request->get('order_id');
        // 异步通知还没到就跳转了，所以这里休眠2秒
        sleep(2);
        return redirect(url('detail-order-sn', ['orderSN' => $oid]));
    }
	

}
