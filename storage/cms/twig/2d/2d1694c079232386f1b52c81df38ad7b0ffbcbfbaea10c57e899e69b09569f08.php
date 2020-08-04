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

/* /home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/slider.htm */
class __TwigTemplate_36b91855733c8b192ed89e559e66df701c8be488454feb4a9e1d50a1d557bae1 extends \Twig\Template
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
        echo "<div class=\"flexslider\">
    <ul class=\"slides\">
        <li>
            <div class=\"slider-caption\">
                <h1>Apa itu Citratus ?</h1>
                <p>Disinfektan bakar dibuat dari bahan-bahan alami beraroma menyegarkan <br>untuk membantu mencegah berkembangnya Virus dan Bakteri serta nyamuk <br>dan serangga pada ruangan anda serta memberikan efek segar alami <br>yang menenangkan dan tidak menyebabkan sesak nafas .</p>
            </div>
        <img src=\"";
        // line 8
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/background_slide.png");
        echo "\" alt=\"\" />
        </li>
    </ul>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/slider.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  46 => 8,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"flexslider\">
    <ul class=\"slides\">
        <li>
            <div class=\"slider-caption\">
                <h1>Apa itu Citratus ?</h1>
                <p>Disinfektan bakar dibuat dari bahan-bahan alami beraroma menyegarkan <br>untuk membantu mencegah berkembangnya Virus dan Bakteri serta nyamuk <br>dan serangga pada ruangan anda serta memberikan efek segar alami <br>yang menenangkan dan tidak menyebabkan sesak nafas .</p>
            </div>
        <img src=\"{{ 'assets/images/background_slide.png'|theme }}\" alt=\"\" />
        </li>
    </ul>
</div>", "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/slider.htm", "");
    }
}
