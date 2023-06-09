<?php
/**
 * The file was created by Assimon.
 *
 * @author    assimon<ashang@utf8.hk>
 * @copyright assimon<ashang@utf8.hk>
 * @link      http://utf8.hk/
 */

namespace App\Admin\Charts;


use App\Models\Order;
use Dcat\Admin\Admin;
use Dcat\Admin\Widgets\Metrics\Bar;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

// 销售额
class SalesCard extends Bar
{

    /**
     * 初始化卡片内容
     */
    protected function init()
    {
        parent::init();

        $color = Admin::color();

        $dark35 = $color->dark35();

        // 卡片内容宽度
        $this->contentWidth(5, 7);
        // 标题
        $this->title(admin_trans('dujiaoka.sales_chart'));
        // 设置下拉选项
        $this->dropdown([
            'today' => admin_trans('dujiaoka.this_today'),
            'seven' => admin_trans('dujiaoka.this_seven_days'),
            'month' => admin_trans('dujiaoka.this_month'),
            'year' => admin_trans('dujiaoka.this_year'),

        ]);
        // 设置图表颜色
        $this->chartColors([
            $dark35,
            $color->primary(),
        ]);
    }

    /**
     * 处理请求
     *
     * @param Request $request
     *
     * @return mixed|void
     */
    public function handle(Request $request)
    {
        switch ($request->get('option')) {
            case 'seven':
                $startTime = Carbon::now()->startOfWeek();
                $endTime = Carbon::now()->endOfWeek();
                break;
            case 'month':
                $startTime = Carbon::now()->startOfMonth();
                $endTime = Carbon::now()->endOfMonth();
                break;
            case 'year':
                $startTime = Carbon::now()->startOfYear();
                $endTime = Carbon::now()->endOfYear();
                break;
            case 'today':
                $startTime = Carbon::now()->startOfDay();
                $endTime = Carbon::now()->endOfDay();
                break;
            default:
                $startTime = Carbon::now()->startOfDay();
                $endTime = Carbon::now()->endOfDay();
                break;
        }
        // 分组查询
        $orderGroup = Order::query()
            ->where('created_at', '>=', $startTime)
            ->where('created_at', '<=', $endTime)
            ->where('status', '>', Order::STATUS_PENDING)
            ->select(DB::raw('DATE(created_at) as date'), DB::raw('sum(actual_price) as actual_price'))
            ->groupBy('date')
            ->pluck('actual_price')
            ->toArray();
        $totalPrice = array_sum($orderGroup);
        $this->withContent($totalPrice, '', '', $startTime, $endTime);
        $this->withChart([
            [
                'name' => admin_trans('dujiaoka.sales_chart'),
                'data' => $orderGroup,
            ]
        ]);
    }

    /**
     * 设置图表数据.
     *
     * @param array $data
     *
     * @return $this
     */
    public function withChart(array $data)
    {
        return $this->chart([
            'series' => $data,
        ]);
    }

    /**
     * 设置卡片内容.
     *
     * @param string $title
     * @param string $value
     * @param string $style
     *
     * @return $this
     */
    public function withContent($title, $value, $style = 'success', $startTime, $endTime)
    {
        $minHeight = '183px';
        $uri = admin_route('order.index', [
            'created_at[start]' => $startTime->format('Y-m-d H:i:s'),
            'created_at[end]' => $endTime->format('Y-m-d H:i:s')
        ]);
        return $this->content(
            <<<HTML
<div class="d-flex p-1 flex-column justify-content-between" style="padding-top: 0;width: 100%;height: 100%;min-height: {$minHeight}">
    <div class="text-left">
        <h1 class="font-lg-2 mt-2 mb-0">{$title}￥</h1>
        <h5 class="font-medium-2" style="margin-top: 10px;">
            <span class="text-{$style}">{$value} </span>
        </h5>
    </div>

    <a href="{$uri}" class="btn btn-primary shadow waves-effect waves-light">View Details <i class="feather icon-chevrons-right"></i></a>
</div>
HTML
        );
    }

}
