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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/top.htm */
class __TwigTemplate_75416fa516eecffe45c7979a83ff560bf27ff795642b41c9d1a27b27ae094ca8 extends \Twig\Template
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
        echo "<div id=\"top-header\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-6\">
                <div class=\"home-account\">
                    ";
        // line 6
        echo twig_escape_filter($this->env, ($context["headingPi"] ?? null), "html", null, true);
        echo " | ";
        echo ($context["Pi"] ?? null);
        echo "
                </div>
            </div>
            <div class=\"col-md-6\">
                <div class=\"cart-info\">
                    <i class=\"fa fa-mobile-phone\"></i>
                    (<a href=\"https://api.whatsapp.com/send?phone=";
        // line 12
        echo twig_escape_filter($this->env, ($context["Contact"] ?? null), "html", null, true);
        echo "&text=Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\">Tanyakan via Whatsapp</a>) ";
        echo twig_escape_filter($this->env, ($context["ContactDisplay"] ?? null), "html", null, true);
        echo "
                </div>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/top.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  55 => 12,  44 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div id=\"top-header\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-6\">
                <div class=\"home-account\">
                    {{headingPi}} | {{ Pi|raw }}
                </div>
            </div>
            <div class=\"col-md-6\">
                <div class=\"cart-info\">
                    <i class=\"fa fa-mobile-phone\"></i>
                    (<a href=\"https://api.whatsapp.com/send?phone={{Contact}}&text=Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\">Tanyakan via Whatsapp</a>) {{ContactDisplay}}
                </div>
            </div>
        </div>
    </div>
</div>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/top.htm", "");
    }
}
