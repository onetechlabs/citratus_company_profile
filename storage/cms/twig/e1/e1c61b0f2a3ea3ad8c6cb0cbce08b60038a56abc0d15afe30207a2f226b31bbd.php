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

/* /home/citratus/public_html/themes/jtherczeg-grill/pages/samples/galeri.htm */
class __TwigTemplate_28e379d8c6e3913b0bb3b8708efed54261b39ac33ed41a8a63b56c2676e8689f extends \Twig\Template
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
        echo "<div id=\"heading\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div class=\"heading-content\">
                    <h2>Galeri Kami</h2>
                    <span>Beranda / <a href=\"";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("samples/products");
        echo "\">Galeri Kami</a></span>
                </div>
            </div>
        </div>
    </div>
</div>

<div id=\"products-post\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div id=\"product-heading\">
                    <h2>Galeri Foto & Video</h2>
                    <img src=\"";
        // line 20
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/under-heading.png");
        echo "\" alt=\"\" >
                </div>
\t\t\t</div>
        </div>
        <div class=\"row\">
            <div class=\"filters col-md-12 col-xs-12\">
                <ul id=\"filters\" class=\"clearfix\" style=\"padding-left: 0;\">
                    <li><span class=\"filter\" data-filter=\"all\">All</span></li>
                    <li><span class=\"filter\" data-filter=\".image\">Foto Foto</span></li>
                    <li><span class=\"filter\" data-filter=\".video\">Video</span></li>
                </ul>
            </div>
        </div>
        <div class=\"row masonry\" id=\"Container\">
            ";
        // line 34
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["gallery"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 35
            echo "              <div class=\"item mix portfolio-item image\">
                  <div class=\"portfolio-wrapper\">
                      <div class=\"portfolio-thumb\">
                          <img src=\"storage/app/media/konten_citratus/citratus_images/";
            // line 38
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\" alt=\"\">
                          <div class=\"hover\">
                              <div class=\"hover-iner\">
                                  <a class=\"fancybox\" href=\"storage/app/media/konten_citratus/citratus_images/";
            // line 41
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\"><img src=\"";
            echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/open-icon.png");
            echo "\" alt=\"\"></a>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 48
        echo "            ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["gallery_videos"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 49
            echo "              <div class=\"item mix portfolio-item video\">
                <video autobuffer controls>
                  <source id=\"mp4\" src=\"storage/app/media/konten_citratus/citratus_videos/";
            // line 51
            echo twig_escape_filter($this->env, $context["item"], "html", null, true);
            echo "\" type=\"video/mp4\">
                </video>
              </div>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 55
        echo "    \t</div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/citratus/public_html/themes/jtherczeg-grill/pages/samples/galeri.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  127 => 55,  117 => 51,  113 => 49,  108 => 48,  93 => 41,  87 => 38,  82 => 35,  78 => 34,  61 => 20,  45 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div id=\"heading\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div class=\"heading-content\">
                    <h2>Galeri Kami</h2>
                    <span>Beranda / <a href=\"{{ 'samples/products'|page }}\">Galeri Kami</a></span>
                </div>
            </div>
        </div>
    </div>
</div>

<div id=\"products-post\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div id=\"product-heading\">
                    <h2>Galeri Foto & Video</h2>
                    <img src=\"{{ 'assets/images/under-heading.png'|theme }}\" alt=\"\" >
                </div>
\t\t\t</div>
        </div>
        <div class=\"row\">
            <div class=\"filters col-md-12 col-xs-12\">
                <ul id=\"filters\" class=\"clearfix\" style=\"padding-left: 0;\">
                    <li><span class=\"filter\" data-filter=\"all\">All</span></li>
                    <li><span class=\"filter\" data-filter=\".image\">Foto Foto</span></li>
                    <li><span class=\"filter\" data-filter=\".video\">Video</span></li>
                </ul>
            </div>
        </div>
        <div class=\"row masonry\" id=\"Container\">
            {% for item in gallery %}
              <div class=\"item mix portfolio-item image\">
                  <div class=\"portfolio-wrapper\">
                      <div class=\"portfolio-thumb\">
                          <img src=\"storage/app/media/konten_citratus/citratus_images/{{item}}\" alt=\"\">
                          <div class=\"hover\">
                              <div class=\"hover-iner\">
                                  <a class=\"fancybox\" href=\"storage/app/media/konten_citratus/citratus_images/{{item}}\"><img src=\"{{ 'assets/images/open-icon.png'|theme }}\" alt=\"\"></a>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
            {% endfor %}
            {% for item in gallery_videos %}
              <div class=\"item mix portfolio-item video\">
                <video autobuffer controls>
                  <source id=\"mp4\" src=\"storage/app/media/konten_citratus/citratus_videos/{{item}}\" type=\"video/mp4\">
                </video>
              </div>
            {% endfor %}
    \t</div>
    </div>
</div>", "/home/citratus/public_html/themes/jtherczeg-grill/pages/samples/galeri.htm", "");
    }
}
