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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/pages/samples/kenali-citratus.htm */
class __TwigTemplate_b1826f5a79b69ea7be411f7909df88c4cd47ad35fdd48c6d66f00d0ccfd3c28e extends \Twig\Template
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
                    <h2>Kenali Citratus</h2>
                    <span>Beranda / <a href=\"";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("samples/kenali-citratus");
        echo "\">Kenali Citratus</a></span>
                </div>
            </div>
        </div>
    </div>
</div>

<div id=\"timeline-post\">
    ";
        // line 15
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("about/intro"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 16
        echo "</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/pages/samples/kenali-citratus.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  60 => 16,  56 => 15,  45 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div id=\"heading\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div class=\"heading-content\">
                    <h2>Kenali Citratus</h2>
                    <span>Beranda / <a href=\"{{ 'samples/kenali-citratus'|page }}\">Kenali Citratus</a></span>
                </div>
            </div>
        </div>
    </div>
</div>

<div id=\"timeline-post\">
    {% partial \"about/intro\" %}
</div>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/pages/samples/kenali-citratus.htm", "");
    }
}
