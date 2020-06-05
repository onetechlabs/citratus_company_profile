<?php 
use Cms\Classes\Theme;class Cms5ed7687879ba5270708458_8e3a483432ddda936f57d2c9a744b00fClass extends Cms\Classes\PartialCode
{

public function onStart()
  {
        $imageitems     = [ ];
        $filesImage     = File::allFiles( 'storage/app/media/konten_citratus/citratus_images/' );
        foreach ($filesImage as $item) {
            $imageitems[] = $item->getFilename();
        }
        rsort($imageitems, SORT_NUMERIC); // Bigest file number first
        $this['gallery'] = $imageitems;
        //dd( $imageitems );
        
        $videoitems     = [ ];
        $filesVideo    = File::allFiles( 'storage/app/media/konten_citratus/citratus_videos/' );
        foreach ($filesVideo as $item) {
            $videoitems[] = $item->getFilename();
        }
        rsort($videoitems, SORT_NUMERIC); // Bigest file number first
        $this['gallery_videos'] = $videoitems;
        //dd( $videoitems );
  }
}
