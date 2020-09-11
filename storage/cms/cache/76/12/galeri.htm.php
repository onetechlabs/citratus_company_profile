<?php 
use Cms\Classes\Theme;class Cms5f5b1f3f4be8c732190774_f7eb4bec56f70517e55770e67d9fc597Class extends Cms\Classes\PageCode
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
