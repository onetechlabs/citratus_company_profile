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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/footer.htm */
class __TwigTemplate_7a8a20801e9bb106c0f8fc520d8b78aff37b64da9c5550e1605290330d31124c extends \Twig\Template
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
        echo "<div class=\"bottom-footer\">
    <p>Copyright &copy; 2020 <a href=\"#\">PT. Panji Herbal Indonesia</a></p>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/footer.htm";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"bottom-footer\">
    <p>Copyright &copy; 2020 <a href=\"#\">PT. Panji Herbal Indonesia</a></p>
</div>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/footer.htm", "");
    }
}
