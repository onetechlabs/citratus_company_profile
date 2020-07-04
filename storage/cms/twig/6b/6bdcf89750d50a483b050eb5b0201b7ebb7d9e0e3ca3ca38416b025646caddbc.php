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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_three.htm */
class __TwigTemplate_440ad2e63633bf7805b312e90ba730ab2d968629ca8a9dc0e0b0bf82e8e8ad32 extends \Twig\Template
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
        echo "<!-- Third Section -->
<section id=\"three\" class=\"main\">
    <header class=\"major\">
        <h2>Galeri Kami</h2>
    </header>


    <div class=\"masonry\">
      ";
        // line 9
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["gallery"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 10
            echo "        <a href=\"#open-image-";
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\"><div class=\"item\"><img src=\"storage/app/media/konten_citratus/citratus_images/";
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\" /></div></a>
        <div id=\"open-image-";
            // line 11
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\" class=\"modal-window\">
            <div>
                <a href=\"#three\" title=\"Close\" class=\"modal-close\">Tutup</a><br><br>
                <center><img src=\"storage/app/media/konten_citratus/citratus_images/";
            // line 14
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\" style=\"width:'100%'; max-height:400px;\" /></center>
            </div>
        </div>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 18
        echo "      ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["gallery_videos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 19
            echo "        <div class=\"item\">
          <video autobuffer controls>
            <source id=\"mp4\" src=\"storage/app/media/konten_citratus/citratus_videos/";
            // line 21
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\" type=\"video/mp4\">
          </video>
        </div>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 25
        echo "  \t</div>
</section>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_three.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  93 => 25,  83 => 21,  79 => 19,  74 => 18,  64 => 14,  58 => 11,  51 => 10,  47 => 9,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- Third Section -->
<section id=\"three\" class=\"main\">
    <header class=\"major\">
        <h2>Galeri Kami</h2>
    </header>


    <div class=\"masonry\">
      {% for item in gallery %}
        <a href=\"#open-image-{{item}}\"><div class=\"item\"><img src=\"storage/app/media/konten_citratus/citratus_images/{{item}}\" /></div></a>
        <div id=\"open-image-{{item}}\" class=\"modal-window\">
            <div>
                <a href=\"#three\" title=\"Close\" class=\"modal-close\">Tutup</a><br><br>
                <center><img src=\"storage/app/media/konten_citratus/citratus_images/{{item}}\" style=\"width:'100%'; max-height:400px;\" /></center>
            </div>
        </div>
      {% endfor %}
      {% for item in gallery_videos %}
        <div class=\"item\">
          <video autobuffer controls>
            <source id=\"mp4\" src=\"storage/app/media/konten_citratus/citratus_videos/{{item}}\" type=\"video/mp4\">
          </video>
        </div>
      {% endfor %}
  \t</div>
</section>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_three.htm", "");
    }
}
