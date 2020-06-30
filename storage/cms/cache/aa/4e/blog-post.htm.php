<?php 
class Cms5efb5f7345025434375845_648bacff3f263393db6fbd74bf2ec0e2Class extends Cms\Classes\PageCode
{
public function onEnd()
{
    // Optional - set the page title to the post title
    if (isset($this->post))
    $this->page->title = $this->post->title;
    $this->page->description = str_limit($this->post->summary, 60, "...");
}
}
