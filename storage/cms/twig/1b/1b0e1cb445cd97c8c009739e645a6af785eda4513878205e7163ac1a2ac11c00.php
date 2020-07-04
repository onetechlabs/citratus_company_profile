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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/all_pages/footer.htm */
class __TwigTemplate_b56f71bb95f69dc2da2816f44bd84bec59637d27a172742ba583dc8f3126895f extends \Twig\Template
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
        echo "<!-- Footer -->
<footer id=\"footer\">
    <section style=\"
        background: #FFF;
        padding: 10px;
        border-radius: 21px;
    \">
       <p>
          <iframe src=\"";
        // line 9
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "map_google_link", [], "any", false, false, false, 9), "html", null, true);
        echo "\" width=\"100%\" height=\"100%\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>

        </p>
    </section>
    <section>
        <h2>Kontak Kami </h2>
        <dl class=\"alt\">
            <dt>Alamat</dt>
            <dd>";
        // line 17
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "address", [], "any", false, false, false, 17), "html", null, true);
        echo "</dd>
            <dt>Phone</dt>
            <dd>";
        // line 19
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "phone", [], "any", false, false, false, 19), "html", null, true);
        echo "</dd>
            <dt>Email</dt>
            <dd><a href=\"mailto:";
        // line 21
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "email", [], "any", false, false, false, 21), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "email", [], "any", false, false, false, 21), "html", null, true);
        echo "</a></dd>
        </dl>
        <ul class=\"icons\">
            ";
        // line 24
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 24) != "")) {
            // line 25
            echo "                <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 25), "html", null, true);
            echo "\" class=\"icon fa-twitter alt\"><span class=\"label\">Twitter</span></a></li>
            ";
        }
        // line 27
        echo "
            ";
        // line 28
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "facebook_link", [], "any", false, false, false, 28) != "")) {
            // line 29
            echo "                <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 29), "html", null, true);
            echo "\" class=\"icon fa-facebook alt\"><span class=\"label\">Facebook</span></a></li>
            ";
        }
        // line 31
        echo "
            ";
        // line 32
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "instagram_link", [], "any", false, false, false, 32) != "")) {
            // line 33
            echo "                <li><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 33), "html", null, true);
            echo "\" class=\"icon fa-instagram alt\"><span class=\"label\">Instagram</span></a></li>
            ";
        }
        // line 35
        echo "        </ul>
    </section>
    <p class=\"copyright\">Copyright &copy; ";
        // line 37
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 37), "website_name", [], "any", false, false, false, 37), "html", null, true);
        echo " .</p>
</footer>
<div id=\"open-modal\" class=\"modal-window\">
    <div>
        <a href=\"#\" title=\"Close\" class=\"modal-close\">Tutup</a>
        <h1>";
        // line 42
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Pi"] ?? null), "heading_online_store", [], "any", false, false, false, 42), "html", null, true);
        echo "</h1>
        <div style=\"color: #8c8c8c;height: 80px;overflow: auto;\">";
        // line 43
        echo twig_get_attribute($this->env, $this->source, ($context["Pi"] ?? null), "online_store_information", [], "any", false, false, false, 43);
        echo "</div>
        <hr style=\"border-bottom-color: rgba(191, 191, 191, 0.35);\">
        <h1>";
        // line 45
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Pi"] ?? null), "heading_offline_store", [], "any", false, false, false, 45), "html", null, true);
        echo "</h1>
        <div style=\"color: #8c8c8c;height: 80px;overflow: auto;\">";
        // line 46
        echo twig_get_attribute($this->env, $this->source, ($context["Pi"] ?? null), "offline_store_information", [], "any", false, false, false, 46);
        echo "</div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/all_pages/footer.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  131 => 46,  127 => 45,  122 => 43,  118 => 42,  110 => 37,  106 => 35,  100 => 33,  98 => 32,  95 => 31,  89 => 29,  87 => 28,  84 => 27,  78 => 25,  76 => 24,  68 => 21,  63 => 19,  58 => 17,  47 => 9,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- Footer -->
<footer id=\"footer\">
    <section style=\"
        background: #FFF;
        padding: 10px;
        border-radius: 21px;
    \">
       <p>
          <iframe src=\"{{Contact.map_google_link}}\" width=\"100%\" height=\"100%\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>

        </p>
    </section>
    <section>
        <h2>Kontak Kami </h2>
        <dl class=\"alt\">
            <dt>Alamat</dt>
            <dd>{{Contact.address}}</dd>
            <dt>Phone</dt>
            <dd>{{Contact.phone}}</dd>
            <dt>Email</dt>
            <dd><a href=\"mailto:{{Contact.email}}\">{{Contact.email}}</a></dd>
        </dl>
        <ul class=\"icons\">
            {% if Contact.twitter_link != \"\" %}
                <li><a href=\"{{Contact.twitter_link}}\" class=\"icon fa-twitter alt\"><span class=\"label\">Twitter</span></a></li>
            {% endif %}

            {% if Contact.facebook_link != \"\" %}
                <li><a href=\"{{Contact.twitter_link}}\" class=\"icon fa-facebook alt\"><span class=\"label\">Facebook</span></a></li>
            {% endif %}

            {% if Contact.instagram_link != \"\" %}
                <li><a href=\"{{Contact.twitter_link}}\" class=\"icon fa-instagram alt\"><span class=\"label\">Instagram</span></a></li>
            {% endif %}
        </ul>
    </section>
    <p class=\"copyright\">Copyright &copy; {{ this.theme.website_name }} .</p>
</footer>
<div id=\"open-modal\" class=\"modal-window\">
    <div>
        <a href=\"#\" title=\"Close\" class=\"modal-close\">Tutup</a>
        <h1>{{Pi.heading_online_store }}</h1>
        <div style=\"color: #8c8c8c;height: 80px;overflow: auto;\">{{Pi.online_store_information|raw }}</div>
        <hr style=\"border-bottom-color: rgba(191, 191, 191, 0.35);\">
        <h1>{{Pi.heading_offline_store }}</h1>
        <div style=\"color: #8c8c8c;height: 80px;overflow: auto;\">{{Pi.offline_store_information|raw }}</div>
    </div>
</div>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/all_pages/footer.htm", "");
    }
}
