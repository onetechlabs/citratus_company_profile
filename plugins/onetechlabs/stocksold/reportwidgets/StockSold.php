<?php namespace Onetechlabs\StockSold\ReportWidgets;

use Backend\Classes\ReportWidgetBase;
use Exception;
use DB;

/**
 * User welcome report widget.
 *
 * @package october\backend
 * @author Alexey Bobkov, Samuel Georges
 */
class StockSold extends ReportWidgetBase
{
    /**
     * @var string A unique alias to identify this widget.
     */
    protected $defaultAlias = 'stocksold';

    /**
     * Renders the widget.
     */
    public function render()
    {
        $this->loadData();
        return $this->makePartial('widget');
    }

    public function defineProperties()
    {
        return [
            'title' => [
                'title'             => 'backend::lang.dashboard.widget_title_label',
                'default'           => 'Status Stock Sold',
                'type'              => 'string',
                'validationPattern' => '^.+$',
                'validationMessage' => 'backend::lang.dashboard.widget_title_error',
            ]
        ];
    }

    /**
     * @inheritDoc
     */

    protected function loadData()
    {
        $product_n =  isset($_GET['product_name']) ? $_GET['product_name'] : "No Product Name";
        $stock_sold = Db::select('select getStockSold("'.$product_n.'") AS `total_stock_sold`');
        $stock_sold_today = Db::select('select getStockSoldToday("'.$product_n.'") AS `total_stock_sold`');
        $stock_sold_thismonth = Db::select('select getStockSoldThisMonth("'.$product_n.'") AS `total_stock_sold`');
        $stock_sold_thisyear = Db::select('select getStockSoldThisYear("'.$product_n.'") AS `total_stock_sold`');
        $this->vars['stock_sold'] = $stock_sold;
        $this->vars['stock_sold_today'] = $stock_sold_today;
        $this->vars['stock_sold_thismonth'] = $stock_sold_thismonth;
        $this->vars['stock_sold_thisyear'] = $stock_sold_thisyear;

    }
}
