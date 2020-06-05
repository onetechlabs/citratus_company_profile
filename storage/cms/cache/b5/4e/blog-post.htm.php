<?php 
class Cms5ed765fe029c8398134626_9fdc2f8b7c26cacc989ec9883a77e321Class extends Cms\Classes\PageCode
{
public function onEnd()
{
    // Optional - set the page title to the post title
    if (isset($this->post))
    $this->page->title = $this->post->title;
    $this->page->description = str_limit($this->post->summary, 60, "...");
}
}
