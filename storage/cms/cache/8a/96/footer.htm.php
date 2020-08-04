<?php 
use Onetechlabs\Contact\Models\Contact;use Onetechlabs\Purchaseinformation\Models\Purchaseinformation;class Cms5f2972cf8b85d626061531_2bddb9c55c8a82a7ea4222945ccc7671Class extends Cms\Classes\PartialCode
{


public function onStart()
{
    $this['Contact'] = Contact::find(1);
    $this['Pi'] = Purchaseinformation::find(1);
}
}
