<?php namespace VimirLab\Testimonials\Controllers;

use BackendMenu;
use Backend\Classes\Controller;

class Testimonials extends Controller
{
    public $implement = [
        'Backend.Behaviors.FormController',
        'Backend.Behaviors.ListController',
    ];

    public $formConfig = 'config_form.yaml';
    public $listConfig = 'config_list.yaml';

    public $requiredPermissions = ['vimirlab.testimonials.testimonials'];
	
	public function __construct()
    {
        parent::__construct();

        BackendMenu::setContext('VimirLab.Testimonials', 'testimonial', 'testimonial');
    }
}
