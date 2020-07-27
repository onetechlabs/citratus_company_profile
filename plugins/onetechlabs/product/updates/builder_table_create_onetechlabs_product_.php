<?php namespace Onetechlabs\Product\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateOnetechlabsProduct extends Migration
{
    public function up()
    {
        Schema::create('onetechlabs_product_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('product_name');
            $table->string('product_code');
            $table->text('product_description');
            $table->integer('product_price_rp_perpcs');
            $table->integer('product_stock');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('onetechlabs_product_');
    }
}
