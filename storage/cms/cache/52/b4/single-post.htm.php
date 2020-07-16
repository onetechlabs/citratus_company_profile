<?php 
class Cms5f0ed50be6a5a819416531_1f3aa5624081697de5fb0fdc6af75790Class extends Cms\Classes\PageCode
{
public function onEnd()
{
    // Optional - set the page title to the post title
    if (isset($this->post))
    $this->page->title = $this->post->title;
    $this->page->description = str_limit($this->post->summary, 60, "...");
}
}
