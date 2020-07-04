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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/navigation.htm */
class __TwigTemplate_a3eafb278d49c29d0c180ab15a23d06097a4480b30e2b5b86d43862b1f310739 extends \Twig\Template
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
        <li><a href=\"/#open-modal\">Pembelian</a></li>
    </ul>
</nav>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/navigation.htm";
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
        <li><a href=\"/#open-modal\">Pembelian</a></li>
    </ul>
</nav>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/navigation.htm", "");
    }
}
