<?php 
class Cms5efb612842068235802564_14559d6c8ebbe8cb55de7ec91237d88bClass extends Cms\Classes\PageCode
{
public function onEnd()
{
// Optional - set the page title to the category name
if ($this->category)
$this->page->title = $this->category->name;
}
}
