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

/* /home/citratus/public_html/themes/jtherczeg-grill/partials/bottom.htm */
class __TwigTemplate_1d244b2fafa66db247f85cff10d622e874d91806ece029f257f1a375b26e8d58 extends \Twig\Template
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
        echo "<div class=\"main-footer\">
    <div class=\"row\" style=\"margin-top:30px;\">
        <div class=\"col-md-3\" style=\"border-right: 3px solid #95c88e;\">
            <div class=\"more-info\">
                <h4 class=\"footer-title\">Media Sosial</h4><hr style=\"border-top: 1px solid #95c88e;\">
                <ul>
                    ";
        // line 7
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "facebook_link", [], "any", false, false, false, 7) != "")) {
            // line 8
            echo "                      <li><i class=\"fa fa-facebook\"></i><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "facebook_link", [], "any", false, false, false, 8), "html", null, true);
            echo "\">Kunjungi FB</a></li>
                    ";
        }
        // line 10
        echo "                    ";
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 10) != "")) {
            // line 11
            echo "                      <li><i class=\"fa fa-twitter\"></i><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 11), "html", null, true);
            echo "\">Kunjungi Twitter</a></li>
                    ";
        }
        // line 13
        echo "                    ";
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "instagram_link", [], "any", false, false, false, 13) != "")) {
            // line 14
            echo "                      <li><i class=\"fa fa-instagram\"></i><a href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "instagram_link", [], "any", false, false, false, 14), "html", null, true);
            echo "\">Kunjungi IG</a></li>
                    ";
        }
        // line 16
        echo "                    ";
        if ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "facebook_link", [], "any", false, false, false, 16) != "")) {
            // line 17
            echo "                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "twitter_link", [], "any", false, false, false, 17) != "")) {
            // line 18
            echo "                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, ($context["Contact"] ?? null), "instagram_link", [], "any", false, false, false, 18) != "")) {
            // line 19
            echo "                    ";
        } else {
            // line 20
            echo "                      Mohon Seluruh Sosial Media Kami sedang dalam Perbaikan.
                    ";
        }
        // line 22
        echo "                </ul>
            </div>
        </div>
        <div class=\"col-md-9\">
            <div class=\"about\">
                <h4 class=\"footer-title\">Apa itu Citratus ?</h4><hr style=\"border-top: 1px solid #95c88e;\">
                <p>Disinfektan bakar dibuat dari bahan-bahan alami beraroma menyegarkan untuk membantu mencegah berkembangnya Virus dan Bakteri serta nyamuk dan serangga pada ruangan anda serta memberikan efek segar alami yang menenangkan dan tidak menyebabkan sesak nafas .</p>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/citratus/public_html/themes/jtherczeg-grill/partials/bottom.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  87 => 22,  83 => 20,  80 => 19,  77 => 18,  74 => 17,  71 => 16,  65 => 14,  62 => 13,  56 => 11,  53 => 10,  47 => 8,  45 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"main-footer\">
    <div class=\"row\" style=\"margin-top:30px;\">
        <div class=\"col-md-3\" style=\"border-right: 3px solid #95c88e;\">
            <div class=\"more-info\">
                <h4 class=\"footer-title\">Media Sosial</h4><hr style=\"border-top: 1px solid #95c88e;\">
                <ul>
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
                </ul>
            </div>
        </div>
        <div class=\"col-md-9\">
            <div class=\"about\">
                <h4 class=\"footer-title\">Apa itu Citratus ?</h4><hr style=\"border-top: 1px solid #95c88e;\">
                <p>Disinfektan bakar dibuat dari bahan-bahan alami beraroma menyegarkan untuk membantu mencegah berkembangnya Virus dan Bakteri serta nyamuk dan serangga pada ruangan anda serta memberikan efek segar alami yang menenangkan dan tidak menyebabkan sesak nafas .</p>
            </div>
        </div>
    </div>
</div>", "/home/citratus/public_html/themes/jtherczeg-grill/partials/bottom.htm", "");
    }
}
