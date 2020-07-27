<?php namespace Onetechlabs\StockSold;

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
            'Onetechlabs\StockSold\ReportWidgets\StockSold' => [
                'label' => 'Status Stock Sold',
                'context' => 'dashboard'
            ]
        ];
    }
}
