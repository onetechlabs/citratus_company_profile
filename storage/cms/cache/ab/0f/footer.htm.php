<?php 
use Onetechlabs\Contact\Models\Contact;use Onetechlabs\Purchaseinformation\Models\Purchaseinformation;class Cms5efff3009d0d2509576685_b7eaefab18df360e67c4811f6446714dClass extends Cms\Classes\PartialCode
{


public function onStart()
{
    $this['Contact'] = Contact::find(1);
    $this['Pi'] = Purchaseinformation::find(1);
}
}
