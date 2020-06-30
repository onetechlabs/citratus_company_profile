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
    <div class=\"flex-container\">
    <div class=\"flexslider\">
        <ul class=\"slides\">
            ";
        // line 9
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["gallery"] ?? null));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 10
            echo "                <li>
                    <img src=\"storage/app/media/konten_citratus/citratus_images/";
            // line 11
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\"/>
                </li>
            ";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 14
            echo "            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 15
        echo "        </ul>
    </div>
    </div>
    <div style=\"margin-top:20px; text-align: center;\" class=\"gallery_videos\">
    ";
        // line 19
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["gallery_videos"] ?? null));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 20
            echo "        <video style=\"height: 300px; margin:10px;\" autobuffer controls>
          <source id=\"mp4\" src=\"storage/app/media/konten_citratus/citratus_videos/";
            // line 21
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\" type=\"video/mp4\">
        </video>
    ";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 24
            echo "        <h2>No Videos</h2>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 26
        echo "    <div>
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
        return array (  98 => 26,  91 => 24,  83 => 21,  80 => 20,  75 => 19,  69 => 15,  63 => 14,  55 => 11,  52 => 10,  47 => 9,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- Third Section -->
<section id=\"three\" class=\"main\">
    <header class=\"major\">
        <h2>Galeri Kami</h2>
    </header>
    <div class=\"flex-container\">
    <div class=\"flexslider\">
        <ul class=\"slides\">
            {% for item in gallery %}
                <li>
                    <img src=\"storage/app/media/konten_citratus/citratus_images/{{item}}\"/>
                </li>
            {% else %}
            {% endfor %}
        </ul>
    </div>
    </div>
    <div style=\"margin-top:20px; text-align: center;\" class=\"gallery_videos\">
    {% for item in gallery_videos %}
        <video style=\"height: 300px; margin:10px;\" autobuffer controls>
          <source id=\"mp4\" src=\"storage/app/media/konten_citratus/citratus_videos/{{item}}\" type=\"video/mp4\">
        </video>
    {% else %}
        <h2>No Videos</h2>
    {% endfor %}
    <div>
</section>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_three.htm", "");
    }
}
