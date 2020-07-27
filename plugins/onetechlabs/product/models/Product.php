<?php namespace Onetechlabs\Product\Models;

use Model;

/**
 * Model
 */
class Product extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'onetechlabs_product_';

    /**
     * @var array Validation rules
     */
    public $rules = [
        'product_name' => 'required',
        'product_code' => 'required',
        'product_description' => 'required',
        'product_price_rp_perpcs' => 'required|numeric',
        'product_stock' => 'required|numeric',
        'product_images' => 'required',
        'product_batch' => 'required',
        'product_date_production' => 'required',
        'product_place_production' => 'required',
        'product_composition' => 'required',
        'product_operator_production' => 'required',
        'product_expired_date' => 'required',
        'product_coordinate' => 'required',
        'product_how_to_use' => 'required',
        'product_efficacy' => 'required'
    ];

    public $attachMany = [
        'product_images' => 'System\Models\File'
    ];
}
