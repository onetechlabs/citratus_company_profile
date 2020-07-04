<?php namespace Onetechlabs\Contact\Models;

use Model;

/**
 * Model
 */
class Contact extends Model
{
    use \October\Rain\Database\Traits\Validation;

    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'onetechlabs_contact_';

    /**
     * @var array Validation rules
     */
    public $rules = [
      'email' => 'required|email',
      'phone' => 'required',
      'address' => 'required',
      'map_google_link' => 'required'
    ];
}
