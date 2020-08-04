<?php 
class Cms5f1fff2014704784291745_74de89659659ba4f1d4f1bd5b44c2b01Class extends Cms\Classes\PageCode
{
public function onEnd()
{
    // Optional - set the page title to the post title
    if (isset($this->post))
    $this->page->title = $this->post->title;
    $this->page->description = str_limit($this->post->summary, 60, "...");
}
}
