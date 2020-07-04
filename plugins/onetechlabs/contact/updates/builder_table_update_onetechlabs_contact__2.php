<?php namespace Onetechlabs\Contact\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateOnetechlabsContact2 extends Migration
{
    public function up()
    {
        Schema::table('onetechlabs_contact_', function($table)
        {
            $table->text('twitter_link')->default('null')->change();
            $table->text('facebook_link')->default('null')->change();
            $table->text('instagram_link')->default('null')->change();
        });
    }
    
    public function down()
    {
        Schema::table('onetechlabs_contact_', function($table)
        {
            $table->text('twitter_link')->default('NULL')->change();
            $table->text('facebook_link')->default('NULL')->change();
            $table->text('instagram_link')->default('NULL')->change();
        });
    }
}
