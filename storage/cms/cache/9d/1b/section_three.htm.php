<?php 
use Cms\Classes\Theme;class Cms5f0004845797d975173699_cb5f4f456d164da4acfd87744e64672fClass extends Cms\Classes\PartialCode
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
