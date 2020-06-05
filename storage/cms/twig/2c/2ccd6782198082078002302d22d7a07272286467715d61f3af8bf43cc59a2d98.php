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

/* B:\Programming\PHP\htdocs\company_profile/themes/zwiebl-zwiebl_stellar/partials/all_pages/header.htm */
class __TwigTemplate_f093b50d20d8467709a0910783c0094d3b4a7d03f10ddce2949b89ad007f1a55 extends \Twig\Template
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
        echo "<!-- Header -->
<header id=\"header\" style=\"padding: 3em 5em 0em 5em !important;\" class=\"alt\">
    <h1>";
        // line 3
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 3), "title", [], "any", false, false, false, 3), "html", null, true);
        echo "</h1>
    <p>";
        // line 4
        echo twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 4), "description", [], "any", false, false, false, 4);
        echo "</p>
</header>";
    }

    public function getTemplateName()
    {
        return "B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/all_pages/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  45 => 4,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!-- Header -->
<header id=\"header\" style=\"padding: 3em 5em 0em 5em !important;\" class=\"alt\">
    <h1>{{ this.page.title }}</h1>
    <p>{{ this.page.description|raw }}</p>
</header>", "B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/all_pages/header.htm", "");
    }
}
