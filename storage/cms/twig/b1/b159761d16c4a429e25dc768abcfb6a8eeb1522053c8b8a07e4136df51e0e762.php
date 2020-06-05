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

/* B:\Programming\PHP\htdocs\company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_one.htm */
class __TwigTemplate_4c9e8d60baf5bacabf1a4d5a141922eadd7b049ed4c8e925d208a05605381615 extends \Twig\Template
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
        echo "<section id=\"one\" class=\"main\">
    <div class=\"spotlight\">
        <div class=\"content\">
            <header class=\"major\">
                <h2>Apa itu Citratus ?</h2>
            </header>
            <p>Citratus adalah disinfektan bakar dibuat dari bahan-bahan alami beraroma serai menyegarkan yang dari ratusan tahun lalu sudah digunakan oleh para leluhur sebagai warisan adiluhung dapat membantu mencegah berkembangnya virus dan bakteri serta nyamuk dan serangga pada ruangan anda. serta memberikan efek segar alami yang menenangkan .</p>
            <ul class=\"actions\">
                <li><a href=\"";
        // line 9
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("apa-itu-citratus");
        echo "\" class=\"button\">Pelajari lebih lanjut</a></li>
            </ul>
        </div>
        <span class=\"image\"><img src=\"";
        // line 12
        echo url("/storage/app/media/1.jpeg");
        echo "\" alt=\"image\" /></span>
    </div>
</section>";
    }

    public function getTemplateName()
    {
        return "B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_one.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  53 => 12,  47 => 9,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<section id=\"one\" class=\"main\">
    <div class=\"spotlight\">
        <div class=\"content\">
            <header class=\"major\">
                <h2>Apa itu Citratus ?</h2>
            </header>
            <p>Citratus adalah disinfektan bakar dibuat dari bahan-bahan alami beraroma serai menyegarkan yang dari ratusan tahun lalu sudah digunakan oleh para leluhur sebagai warisan adiluhung dapat membantu mencegah berkembangnya virus dan bakteri serta nyamuk dan serangga pada ruangan anda. serta memberikan efek segar alami yang menenangkan .</p>
            <ul class=\"actions\">
                <li><a href=\"{{'apa-itu-citratus'|page}}\" class=\"button\">Pelajari lebih lanjut</a></li>
            </ul>
        </div>
        <span class=\"image\"><img src=\"{{ url('/storage/app/media/1.jpeg') }}\" alt=\"image\" /></span>
    </div>
</section>", "B:\\Programming\\PHP\\htdocs\\company_profile/themes/zwiebl-zwiebl_stellar/partials/home_page/section_one.htm", "");
    }
}
