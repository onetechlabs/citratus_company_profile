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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/pages/samples/kontak.htm */
class __TwigTemplate_31c2e1a50939e8fdb790ddc0d95f542aef9b98383f848259674a1f64febeb9c0 extends \Twig\Template
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
                    <h2>Hubungi Kami</h2>
                    <span>Beranda / <a href=\"";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("samples/kontak");
        echo "\">Hubungi Kami</a></span>
                </div>
             </div>
        </div>
    </div>
</div>

<div id=\"product-post\">
    <div class=\"container\">
    <div class=\"row\">
        <div class=\"col-md-12\">
            <div class=\"heading-section\">
                <h2>Detail Informasi Kontak Kami</h2>
                <img src=\"";
        // line 20
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/under-heading.png");
        echo "\" alt=\"\" >
            </div>
        </div>
    </div>
    <div id=\"contact-us\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"product-item col-md-12\">
                    <div class=\"row\">
                        <div class=\"col-md-8\">
                            <iframe src=\"";
        // line 30
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "map_google_link", [], "any", false, false, false, 30), "html", null, true);
        echo "\" style=\"width:100%\" height=\"200\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>
                        </div>
                        <div class=\"col-md-4\">
\t\t\t\t\t\t\t<div class=\"info\">
\t\t\t\t\t\t\t\t<p>";
        // line 34
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "address", [], "any", false, false, false, 34), "html", null, true);
        echo "</p>
\t\t\t\t\t\t\t\t<ul>
                  ";
        // line 36
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "facebook_link", [], "any", false, false, false, 36) != "")) {
            // line 37
            echo "                    <li><i class=\"fa fa-facebook\"></i><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "facebook_link", [], "any", false, false, false, 37), "html", null, true);
            echo "\">Kunjungi FB</a></li>
                  ";
        }
        // line 39
        echo "                  ";
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 39) != "")) {
            // line 40
            echo "                    <li><i class=\"fa fa-twitter\"></i><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 40), "html", null, true);
            echo "\">Kunjungi Twitter</a></li>
                  ";
        }
        // line 42
        echo "                  ";
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "instagram_link", [], "any", false, false, false, 42) != "")) {
            // line 43
            echo "                    <li><i class=\"fa fa-instagram\"></i><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "instagram_link", [], "any", false, false, false, 43), "html", null, true);
            echo "\">Kunjungi IG</a></li>
                  ";
        }
        // line 45
        echo "                  ";
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "facebook_link", [], "any", false, false, false, 45) != "")) {
            // line 46
            echo "                  ";
        } elseif ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 46) != "")) {
            // line 47
            echo "                  ";
        } elseif ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "instagram_link", [], "any", false, false, false, 47) != "")) {
            // line 48
            echo "                  ";
        } else {
            // line 49
            echo "                    Mohon Seluruh Sosial Media Kami sedang dalam Perbaikan.
                  ";
        }
        // line 51
        echo "                  <li><i class=\"fa fa-phone\"></i>";
        echo twig_escape_filter($this->env, ($context["ContactDisplay"] ?? null), "html", null, true);
        echo "</li>
                  <li><i class=\"fa fa-envelope\"></i><a href=\"#\">";
        // line 52
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "email", [], "any", false, false, false, 52), "html", null, true);
        echo "</a></li>
\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>

</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/pages/samples/kontak.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  133 => 52,  128 => 51,  124 => 49,  121 => 48,  118 => 47,  115 => 46,  112 => 45,  106 => 43,  103 => 42,  97 => 40,  94 => 39,  88 => 37,  86 => 36,  81 => 34,  74 => 30,  61 => 20,  45 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div id=\"heading\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div class=\"heading-content\">
                    <h2>Hubungi Kami</h2>
                    <span>Beranda / <a href=\"{{ 'samples/kontak'|page }}\">Hubungi Kami</a></span>
                </div>
             </div>
        </div>
    </div>
</div>

<div id=\"product-post\">
    <div class=\"container\">
    <div class=\"row\">
        <div class=\"col-md-12\">
            <div class=\"heading-section\">
                <h2>Detail Informasi Kontak Kami</h2>
                <img src=\"{{ 'assets/images/under-heading.png'|theme }}\" alt=\"\" >
            </div>
        </div>
    </div>
    <div id=\"contact-us\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"product-item col-md-12\">
                    <div class=\"row\">
                        <div class=\"col-md-8\">
                            <iframe src=\"{{Contact.map_google_link}}\" style=\"width:100%\" height=\"200\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>
                        </div>
                        <div class=\"col-md-4\">
\t\t\t\t\t\t\t<div class=\"info\">
\t\t\t\t\t\t\t\t<p>{{Contact.address}}</p>
\t\t\t\t\t\t\t\t<ul>
                  {% if Contact.facebook_link != \"\" %}
                    <li><i class=\"fa fa-facebook\"></i><a href=\"{{Contact.facebook_link}}\">Kunjungi FB</a></li>
                  {% endif %}
                  {% if Contact.twitter_link != \"\" %}
                    <li><i class=\"fa fa-twitter\"></i><a href=\"{{Contact.twitter_link}}\">Kunjungi Twitter</a></li>
                  {% endif %}
                  {% if Contact.instagram_link != \"\" %}
                    <li><i class=\"fa fa-instagram\"></i><a href=\"{{Contact.instagram_link}}\">Kunjungi IG</a></li>
                  {% endif %}
                  {% if Contact.facebook_link != \"\" %}
                  {% elseif Contact.twitter_link != \"\" %}
                  {% elseif Contact.instagram_link != \"\" %}
                  {% else %}
                    Mohon Seluruh Sosial Media Kami sedang dalam Perbaikan.
                  {% endif %}
                  <li><i class=\"fa fa-phone\"></i>{{ContactDisplay}}</li>
                  <li><i class=\"fa fa-envelope\"></i><a href=\"#\">{{Contact.email}}</a></li>
\t\t\t\t\t\t\t\t</ul>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>

</div>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/pages/samples/kontak.htm", "");
    }
}
