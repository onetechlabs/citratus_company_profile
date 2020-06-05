<?php namespace VimirLab\Testimonials\Components;

use Lang;
use Input;
use Redirect;
use BackendAuth;
use Cms\Classes\Page;
use Cms\Classes\ComponentBase;
use October\Rain\Database\Model;
use October\Rain\Database\Collection;
use VimirLab\Testimonials\Models\Testimonial;
use VimirLab\Testimonials\Components\Slider;

class Slider extends ComponentBase
{	
	public $testimonials;
	
	public $viewAll;
	
	public function componentDetails()
	{
		return [
			'name' => 'Testimonial Slider',
			'description' => 'Add testimonial slider to cms page'
		];
	}
	
	public function defineProperties()
	{
		return [
			'listPage' => [
				'title' => 'View all Page Link',
				'description' => 'Url of the view all testimonial page link.',
				'type' => 'string',
				'type'        => 'dropdown',
				'default' => ''
			]
		];
	}
	
	public function getListPageOptions()
    {
        return Page::sortBy('baseFileName')->lists('baseFileName', 'baseFileName');
    }
	
	public function onRun()
	{
		$this->testimonials = $this->loadTestimonials();
		
		$this->addCss('/plugins/vimirlab/testimonials/assets/slider.min.css');
		$this->addJs('/plugins/vimirlab/testimonials/assets/slider.min.js');
		$this->addJs('/plugins/vimirlab/testimonials/assets/slider.js');
		$this->addCss('/plugins/vimirlab/testimonials/assets/testimonials.css');
	}
	
	public function loadTestimonials()
	{
		$testimonial = Testimonial::where('is_active', 1)->get();
		
		$this->viewAll = $this->property('listPage');
		
		return $testimonial;
	}
}