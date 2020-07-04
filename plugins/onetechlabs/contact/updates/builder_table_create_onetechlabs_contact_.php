<?php namespace Onetechlabs\Contact\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateOnetechlabsContact extends Migration
{
    public function up()
    {
        Schema::create('onetechlabs_contact_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->string('email', 255);
            $table->string('phone', 20);
            $table->text('address');
            $table->text('twitter_link')->nullable();
            $table->text('facebook_link')->nullable();
            $table->text('instagram_link')->nullable();
            $table->text('map_google_link');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('onetechlabs_contact_');
    }
}
