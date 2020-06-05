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
use VimirLab\Testimonials\Components\Testimonials;

class Testimonials extends ComponentBase
{	
	public $testimonials;
	
	public $viewAll;
	
	public function componentDetails()
	{
		return [
			'name' => 'Testimonials List',
			'description' => 'View all testimonial'
		];
	}
	
	public function onRun()
	{
		$this->testimonials = $this->loadTestimonials();
		$this->addCss('/plugins/vimirlab/testimonials/assets/testimonials.css');
	}
	
	public function loadTestimonials()
	{
		$testimonial = Testimonial::where('is_active', 1)->get();
		
		return $testimonial;
	}
}