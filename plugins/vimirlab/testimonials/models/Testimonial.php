<?php namespace VimirLab\Testimonials\Models;

use Model;

class Testimonial extends Model
{
    use \October\Rain\Database\Traits\Validation;
	
	public $table='vimirlab_testimonials_testimonials';
	
	protected $guarded = ['*'];
	
	public 	$attachOne = [
		'featured_image' => 'System\Models\File',
	];
	
	public $rules = [
		'name'    => ['required'],
		'email' => ['required','email'],
		'title'    => ['required'],
		'content' => ['required'],
	];
}
