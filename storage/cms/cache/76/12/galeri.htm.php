<?php 
use Cms\Classes\Theme;class Cms5f2973010c49b809330904_1b3a9c03f94915322714532b8f858ab6Class extends Cms\Classes\PageCode
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
