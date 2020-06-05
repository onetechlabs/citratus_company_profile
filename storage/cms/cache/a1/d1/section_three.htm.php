<?php 
use Cms\Classes\Theme;class Cms5ed75d5024f6a126579797_809af3eb1a0fd37fb73c21ca6b06b69cClass extends Cms\Classes\PartialCode
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
