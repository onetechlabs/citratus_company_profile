<?php namespace Onetechlabs\Product;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
    }

    public function registerSettings()
    {
    }
    public function registerReportWidgets()
    {
        return [
            'Onetechlabs\Product\ReportWidgets\Product' => [
                'label' => 'Status Stock',
                'context' => 'dashboard'
            ],
            'Onetechlabs\Product\ReportWidgets\Chooseaproduct' => [
                'label' => 'Choosing a Product',
                'context' => 'dashboard'
            ]
        ];
    }
}
