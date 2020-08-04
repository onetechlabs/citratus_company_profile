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

/* /home/citratus/public_html/themes/jtherczeg-grill/partials/slider.htm */
class __TwigTemplate_8ded6c5c1b3e6ea7b6423fe040a332aa4702032c43d21abf960f522c4c77cc42 extends \Twig\Template
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
        return "/home/citratus/public_html/themes/jtherczeg-grill/partials/slider.htm";
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
</div>", "/home/citratus/public_html/themes/jtherczeg-grill/partials/slider.htm", "");
    }
}
