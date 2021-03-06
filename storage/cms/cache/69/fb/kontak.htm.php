<?php 
use Onetechlabs\Contact\Models\Contact;
use Onetechlabs\Purchaseinformation\Models\Purchaseinformation;
class Cms5f5b1f6b500b2652634241_a6bcec218e9d2b706c54bc084bf1cabcClass extends Cms\Classes\PageCode
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
      $htmlTopLink .= "<a href='".$link[1]."'>".$link[0]."</a><br>";
    }
    $this['headingPi']=$PiQuery->heading_online_store;
    $this['headingPi2']=$PiQuery->heading_offline_store;
    $this['offline_store_loctation']=$PiQuery->offline_store_information ;
    $this['Pi'] = $htmlTopLink;"";
    $ptn = "/^0/";
    $str = $contact['phone'];
    $rpltxt = "62";
    $rpltxt2 = "+62 ";
    $this['Contact'] = $contact;
    $this['ContactDisplay'] = preg_replace($ptn, $rpltxt2, $str);
}
}
