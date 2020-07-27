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
class Chooseaproduct extends ReportWidgetBase
{
    /**
     * @var string A unique alias to identify this widget.
     */
    protected $defaultAlias = 'chooseaproduct';

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
                'default'           => 'Choose a Product',
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
        $product = Db::select('SELECT DISTINCT(product_name) FROM `onetechlabs_product_`; ');
        $this->vars['product_name_list'] = $product;

    }
}
