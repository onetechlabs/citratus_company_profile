<?php 
use Onetechlabs\Contact\Models\Contact;
use Onetechlabs\Purchaseinformation\Models\Purchaseinformation;
class Cms5f1f4880b5910950765058_1d1981c983834b338f476652a00227aaClass extends Cms\Classes\PartialCode
{
public function onStart()
{
    $contact = Contact::find(1);
    $PiQuery = Purchaseinformation::find(1);
    $PiFilter = str_replace("<p>","",$PiQuery->online_store_information);
    $PiSlice = explode("</p>",$PiFilter);
    $htmlTopLink="";
    for($startMenu=0; $startMenu < count($PiSlice)-1; $startMenu++){
      $link=explode("-",$PiSlice[$startMenu]);
      $htmlTopLink .= "<a href='".$link[1]."'>".$link[0]."</a>";
    }
    $this['headingPi']=$PiQuery->heading_online_store;
    $this['Pi'] = $htmlTopLink;
    $ptn = "/^0/";
    $str = $contact['phone'];
    $rpltxt = "62";
    $rpltxt2 = "+62 ";
    $this['Contact'] = preg_replace($ptn, $rpltxt, $str);
    $this['ContactDisplay'] = preg_replace($ptn, $rpltxt2, $str);
}
}