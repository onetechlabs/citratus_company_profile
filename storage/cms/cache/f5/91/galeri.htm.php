<?php 
use Cms\Classes\Theme;class Cms5f20e64f55deb510138207_a0b23c2216722730a40a3d33df70ab6aClass extends Cms\Classes\PageCode
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
