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

/* /home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/services.htm */
class __TwigTemplate_51ff3b4211c36efd49cc042aa9b406e48877017a8c1d74977b1c4dd6ab66cf23 extends \Twig\Template
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
        echo "<div class=\"container\">
    <div class=\"row\">
        <div class=\"col-md-12\">
            <div class=\"heading-section\">
                <h2>Keunggulan Citratus</h2>
                <img src=\"";
        // line 6
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/under-heading.png");
        echo "\" alt=\"\" >
            </div>
        </div>
    </div>
    <div class=\"row\">
        <div class=\"col-md-4 col-sm-12\">
            <div class=\"service-item\">
                <h4>100% Herbal</h4>
                <p>dibuat dari bahan-bahan alami beraroma serai menyegarkan yang sudah digunakan oleh para leluhur sebagai warisan adiluhung .</p>
            </div>
        </div>
        <div class=\"col-md-4 col-sm-12\">
            <div class=\"service-item\">
                <h4>Bahan Baku Aman</h4>
                <p>Salah satu bahan dasar dari pembuatan citratus adalah kemenyan asli yang dipadu dengan beberapa ramuan herbal justru memberikan efek melegakan pernafasan dan membersihkan udara dan dapat membantu mencegah berkembangnya virus dan bakteri serta nyamuk dan serangga pada ruangan anda.</p>
            </div>
        </div>
        <div class=\"col-md-4 col-sm-12\">
            <div class=\"service-item\">
                <h4>Ampuh Membunuh Virus & Nyamuk</h4>
                <p>Citratus dibuat bakar dengan tujuan asap yang tercipta dari bahan bahan alami non karbon bisa menembus virus dan bakteri karena asap yang tercipta berukuran nano meter juga.</p>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/services.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  44 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"container\">
    <div class=\"row\">
        <div class=\"col-md-12\">
            <div class=\"heading-section\">
                <h2>Keunggulan Citratus</h2>
                <img src=\"{{ 'assets/images/under-heading.png'|theme }}\" alt=\"\" >
            </div>
        </div>
    </div>
    <div class=\"row\">
        <div class=\"col-md-4 col-sm-12\">
            <div class=\"service-item\">
                <h4>100% Herbal</h4>
                <p>dibuat dari bahan-bahan alami beraroma serai menyegarkan yang sudah digunakan oleh para leluhur sebagai warisan adiluhung .</p>
            </div>
        </div>
        <div class=\"col-md-4 col-sm-12\">
            <div class=\"service-item\">
                <h4>Bahan Baku Aman</h4>
                <p>Salah satu bahan dasar dari pembuatan citratus adalah kemenyan asli yang dipadu dengan beberapa ramuan herbal justru memberikan efek melegakan pernafasan dan membersihkan udara dan dapat membantu mencegah berkembangnya virus dan bakteri serta nyamuk dan serangga pada ruangan anda.</p>
            </div>
        </div>
        <div class=\"col-md-4 col-sm-12\">
            <div class=\"service-item\">
                <h4>Ampuh Membunuh Virus & Nyamuk</h4>
                <p>Citratus dibuat bakar dengan tujuan asap yang tercipta dari bahan bahan alami non karbon bisa menembus virus dan bakteri karena asap yang tercipta berukuran nano meter juga.</p>
            </div>
        </div>
    </div>
</div>", "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/services.htm", "");
    }
}
