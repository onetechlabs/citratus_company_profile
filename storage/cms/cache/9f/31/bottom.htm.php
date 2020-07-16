<?php 
use Onetechlabs\Contact\Models\Contact;
use Onetechlabs\Purchaseinformation\Models\Purchaseinformation;
class Cms5f0e7e1f4f514487122233_7dc985757bc0a5093156d54e013ae14eClass extends Cms\Classes\PartialCode
{
public function onStart()
{
    $contact = Contact::find(1);
    $ptn = "/^0/";
    $str = $contact['phone'];
    $rpltxt = "62";
    $rpltxt2 = "+62 ";
    $this['Contact'] = $contact;
    $this['ContactDisplay'] = preg_replace($ptn, $rpltxt2, $str);
}
}
