<?php namespace Onetechlabs\Contact\ReportWidgets;

use Backend\Classes\ReportWidgetBase;
use Exception;

/**
 * User welcome report widget.
 *
 * @package october\backend
 * @author Alexey Bobkov, Samuel Georges
 */
class Contact extends ReportWidgetBase
{
    /**
     * @var string A unique alias to identify this widget.
     */
    protected $defaultAlias = 'contact';

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
                'default'           => 'Company Information',
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
        $contact = \Onetechlabs\Contact\Models\Contact::find(1);
        $ptn = "/^0/";
        $str = $contact['phone'];
        $rpltxt = "62";
        $rpltxt2 = "+62 ";
        $this->vars['contact'] = $contact;
        $this->vars['contact_display'] = preg_replace($ptn, $rpltxt2, $str);

    }
}
