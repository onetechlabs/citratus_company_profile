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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/layouts/generic.htm */
class __TwigTemplate_d99e71570a3648238039d047fd0ec243c93d2ef1c638ab736c1dceef064b02fd extends \Twig\Template
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
        echo "<html>
<head>
    ";
        // line 3
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("html_base/meta_head"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 4
        echo "</head>
<body>
    <div id=\"wrapper\">
        ";
        // line 7
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("all_pages/header"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 8
        echo "        ";
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("all_pages/navigation"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 9
        echo "        <div id=\"main\">
            <section id=\"content\" class=\"main\">
                ";
        // line 11
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 12
        echo "            </section>
        </div>
        ";
        // line 14
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("all_pages/footer"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 15
        echo "    </div>
    ";
        // line 16
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("html_base/scripts"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 17
        echo "</body>
</html>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/layouts/generic.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  80 => 17,  76 => 16,  73 => 15,  69 => 14,  65 => 12,  63 => 11,  59 => 9,  54 => 8,  50 => 7,  45 => 4,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<html>
<head>
    {% partial \"html_base/meta_head\" %}
</head>
<body>
    <div id=\"wrapper\">
        {% partial \"all_pages/header\" %}
        {% partial \"all_pages/navigation\" %}
        <div id=\"main\">
            <section id=\"content\" class=\"main\">
                {% page %}
            </section>
        </div>
        {% partial \"all_pages/footer\" %}
    </div>
    {% partial \"html_base/scripts\" %}
</body>
</html>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/layouts/generic.htm", "");
    }
}
