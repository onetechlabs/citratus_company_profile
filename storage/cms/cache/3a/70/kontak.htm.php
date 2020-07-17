<?php 
use Onetechlabs\Contact\Models\Contact;
use Onetechlabs\Purchaseinformation\Models\Purchaseinformation;
class Cms5f115bce1db8b119951458_f6f08acab5c69ccaf76a2b4790aa50d2Class extends Cms\Classes\PageCode
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
