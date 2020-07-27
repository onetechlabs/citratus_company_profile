<?php namespace Onetechlabs\StockSold\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateOnetechlabsStocksold extends Migration
{
    public function up()
    {
        Schema::create('onetechlabs_stocksold_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('product_name');
            $table->integer('amount_of_stock_sold');
            $table->text('additional_information');
            $table->date('date_sold');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('onetechlabs_stocksold_');
    }
}
