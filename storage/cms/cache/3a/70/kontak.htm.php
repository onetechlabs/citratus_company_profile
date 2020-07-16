<?php 
use Onetechlabs\Contact\Models\Contact;
use Onetechlabs\Purchaseinformation\Models\Purchaseinformation;
class Cms5f0e7f6c2d8ba089692981_0a0a2a3b5119db425ff8cc4fec8288cbClass extends Cms\Classes\PageCode
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
