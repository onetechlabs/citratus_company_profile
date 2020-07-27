<?php namespace Onetechlabs\Product\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateOnetechlabsProduct extends Migration
{
    public function up()
    {
        Schema::table('onetechlabs_product_', function($table)
        {
            $table->integer('product_batch');
            $table->dateTime('product_date_production');
            $table->string('product_place_production');
            $table->text('product_composition');
            $table->text('product_operator_production');
            $table->date('product_expired_date');
            $table->text('product_coordinate');
            $table->text('product_how_to_use');
            $table->text('product_efficacy');
            $table->dropColumn('created_at');
            $table->dropColumn('updated_at');
        });
    }
    
    public function down()
    {
        Schema::table('onetechlabs_product_', function($table)
        {
            $table->dropColumn('product_batch');
            $table->dropColumn('product_date_production');
            $table->dropColumn('product_place_production');
            $table->dropColumn('product_composition');
            $table->dropColumn('product_operator_production');
            $table->dropColumn('product_expired_date');
            $table->dropColumn('product_coordinate');
            $table->dropColumn('product_how_to_use');
            $table->dropColumn('product_efficacy');
            $table->timestamp('created_at')->nullable()->default('NULL');
            $table->timestamp('updated_at')->nullable()->default('NULL');
        });
    }
}
