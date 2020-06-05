<?php namespace VimirLab\Testimonials\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class CreateTestimonialsTable extends Migration
{
	public function up()
    {
		Schema::create('vimirlab_testimonials_testimonials', function ($table){
			$table->engine = 'InnoDB';
            $table->increments('id');
			$table->string('name');
            $table->string('email');
            $table->string('title');
            $table->text('content')->nullable();
            $table->boolean('is_active')->default(false);
            $table->timestamps();
		});
	}

    public function down()
    {
        Schema::dropIfExists('vimirlab_testimonials_testimonials');
    }   
}