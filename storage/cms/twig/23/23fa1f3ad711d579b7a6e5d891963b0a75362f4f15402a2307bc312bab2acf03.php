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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/meta.htm */
class __TwigTemplate_659d1ce5ad509f5c388ab1da3dc8dcb67b41c2bc01ce1082156e3cb2a2779b64 extends \Twig\Template
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
        echo "<head>
<meta charset=\"utf-8\">
<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">
<meta name=\"description\" content=\"";
        // line 4
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 4), "meta_description", [], "any", false, false, false, 4), "html", null, true);
        echo "\">
<meta name=\"keywords\" content=\"";
        // line 5
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 5), "meta_keywords", [], "any", false, false, false, 5), "html", null, true);
        echo "\">
<meta name=\"author\" content=\"";
        // line 6
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 6), "meta_author", [], "any", false, false, false, 6), "html", null, true);
        echo "\">
<meta name=\"viewport\" content=\"width=device-width\">
<title>";
        // line 8
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 8), "title", [], "any", false, false, false, 8), "html", null, true);
        echo " - ";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 8), "site_name", [], "any", false, false, false, 8), "html", null, true);
        echo "</title>
        
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

";
        // line 12
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
        // line 13
        echo "<link href=\"";
        echo $this->extensions['Cms\Twig\Extension']->themeFilter([0 => "assets/css/bootstrap.css", 1 => "assets/css/font-awesome.css", 2 => "assets/css/templatemo_style.css", 3 => "assets/css/templatemo_misc.css", 4 => "assets/css/flexslider.css", 5 => "assets/css/testimonails-slider"]);
        // line 20
        echo "\" rel=\"stylesheet\">
</head>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/meta.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  70 => 20,  67 => 13,  64 => 12,  55 => 8,  50 => 6,  46 => 5,  42 => 4,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<head>
<meta charset=\"utf-8\">
<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">
<meta name=\"description\" content=\"{{ this.page.meta_description }}\">
<meta name=\"keywords\" content=\"{{ this.page.meta_keywords }}\">
<meta name=\"author\" content=\"{{ this.page.meta_author }}\">
<meta name=\"viewport\" content=\"width=device-width\">
<title>{{ this.page.title }} - {{ this.theme.site_name }}</title>
        
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

{% styles %}
<link href=\"{{ [
            'assets/css/bootstrap.css',
            'assets/css/font-awesome.css',
            'assets/css/templatemo_style.css',
            'assets/css/templatemo_misc.css',
            'assets/css/flexslider.css',
            'assets/css/testimonails-slider',
\t\t]|theme }}\" rel=\"stylesheet\">
</head>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/meta.htm", "");
    }
}
