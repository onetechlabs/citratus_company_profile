<?php 
use Cms\Classes\Theme;class Cms5efb5ddc8c437560456223_4bd6ca6d794b4d9d497a867b5c456a57Class extends Cms\Classes\PartialCode
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
