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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_four.htm */
class __TwigTemplate_d34fa95ab98aae49e6f75454dad3af35d940ddb45de48bc60e853aa49920121f extends \Twig\Template
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
        echo "<section id=\"four\" class=\"main\">
    <header class=\"major\">
        <h2>Postingan / Berita Kami</h2>
        <p>Untuk mendapatkan informasi terupdate seputar produk kami, klik tombol dibawah ini.</p>
    </header>
    <footer class=\"major\">
        <ul class=\"actions\">
            <li><a href=\"";
        // line 8
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("blog");
        echo "\" class=\"button special\">Tampilkan Postingan / Berita Kami</a></li>
        </ul>
    </footer>
</section>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_four.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  46 => 8,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<section id=\"four\" class=\"main\">
    <header class=\"major\">
        <h2>Postingan / Berita Kami</h2>
        <p>Untuk mendapatkan informasi terupdate seputar produk kami, klik tombol dibawah ini.</p>
    </header>
    <footer class=\"major\">
        <ul class=\"actions\">
            <li><a href=\"{{'blog'|page}}\" class=\"button special\">Tampilkan Postingan / Berita Kami</a></li>
        </ul>
    </footer>
</section>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_four.htm", "");
    }
}