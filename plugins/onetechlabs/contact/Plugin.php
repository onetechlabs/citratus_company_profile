<?php namespace Onetechlabs\Contact;

use System\Classes\PluginBase;

class Plugin extends PluginBase
{
    public function registerComponents()
    {
    }

    public function registerSettings()
    {
    }
    /*
    * Register report widgets
    */
    public function registerReportWidgets()
    {
        return [
            'Onetechlabs\Contact\ReportWidgets\Contact' => [
                'label' => 'Contact',
                'context' => 'dashboard'
            ]
        ];
    }
}
