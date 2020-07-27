<?php namespace Onetechlabs\StockSold\Models;

use Model;

/**
 * Model
 */
class StockSold extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'onetechlabs_stocksold_';

    /**
     * @var array Validation rules
     */
    public $rules = [
        'product_name' => 'required',
        'amount_of_stock_sold' => 'required|numeric',
        'additional_information' => 'required',
        'date_sold' => 'required',
    ];
}
