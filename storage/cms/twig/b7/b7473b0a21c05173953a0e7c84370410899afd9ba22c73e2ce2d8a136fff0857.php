<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* /home/onetech2/citratus.onetechlabsindonesia.xyz/themes/zwiebl-zwiebl_stellar/partials/home_page/navigation.htm */
class __TwigTemplate_a2341b581671748f20917ead09b22e9a54e6f08543c17b59297b3202f9dd402a extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<!-- Nav -->
<nav id=\"nav\">
    <ul>
        <li><a href=\"#one\">Citratus</a></li>
        <li><a href=\"#two\">Testimoni</a></li>
        <li><a href=\"#three\">Galeri</a></li>
        <li><a href=\"#four\">Berita</a></li>
    </ul>
</nav>";
    }

    public function getTemplateName()
    {
        return "/home/onetech2/citratus.onetechlabsindonesia.xyz/themes/zwiebl-zwiebl_stellar/partials/home_page/navigation.htm";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- Nav -->
<nav id=\"nav\">
    <ul>
        <li><a href=\"#one\">Citratus</a></li>
        <li><a href=\"#two\">Testimoni</a></li>
        <li><a href=\"#three\">Galeri</a></li>
        <li><a href=\"#four\">Berita</a></li>
    </ul>
</nav>", "/home/onetech2/citratus.onetechlabsindonesia.xyz/themes/zwiebl-zwiebl_stellar/partials/home_page/navigation.htm", "");
    }
}
