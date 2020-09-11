<?php 
use Onetechlabs\Contact\Models\Contact;use Onetechlabs\Purchaseinformation\Models\Purchaseinformation;class Cms5f5b1f12dbf8b827784153_90e2da8f95e661c3538e72d0a5b00ac2Class extends Cms\Classes\PartialCode
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
