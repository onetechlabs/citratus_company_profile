<?php namespace Onetechlabs\Product\ReportWidgets;

use Backend\Classes\ReportWidgetBase;
use Exception;
use DB;

/**
 * User welcome report widget.
 *
 * @package october\backend
 * @author Alexey Bobkov, Samuel Georges
 */
class Product extends ReportWidgetBase
{
    /**
     * @var string A unique alias to identify this widget.
     */
    protected $defaultAlias = 'product';

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
                'default'           => 'Status Stock',
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
        $stock = Db::select('select getTotalStockByProductName("'.$product_n.'") AS `total_stock`');
        $this->vars['stock'] = $stock;

    }
}
