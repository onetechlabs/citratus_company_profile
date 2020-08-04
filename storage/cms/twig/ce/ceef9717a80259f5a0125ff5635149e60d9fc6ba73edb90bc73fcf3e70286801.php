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

/* /home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/pages/samples/karir.htm */
class __TwigTemplate_9adbf9aa1c6a6a1fd6abd15087c86367d659247437a3eafa274c258a04601341 extends \Twig\Template
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
                    <h2>Karir</h2>
                    <span>Beranda / <a href=\"";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("samples/karir");
        echo "\">Karir</a></span>
                </div>
             </div>
        </div>
    </div>
</div>

<div id=\"product-post\">
    <div class=\"container\">
    <div class=\"row\">
        <div class=\"col-md-12\">
            <div class=\"heading-section\">
                <h2>Berkarirlah bersama kami</h2>
                <img src=\"";
        // line 20
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/under-heading.png");
        echo "\" alt=\"\" >
            </div>
        </div>
    </div>
    <div id=\"contact-us\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"product-item col-md-12\">
                    <div class=\"row\">
                        <div class=\"col-md-12\">
                            <div class=\"col-md-6\" style=\"margin-bottom:10px;\">
                                <img src=\"";
        // line 31
        echo $this->extensions['System\Twig\Extension']->mediaFilter("LowkerSekretaris.png");
        echo "\" alt=\"\" >
                            </div>
                            <div class=\"col-md-6\">
                                <img src=\"";
        // line 34
        echo $this->extensions['System\Twig\Extension']->mediaFilter("info_lowongan_kerja.jpeg");
        echo "\" alt=\"\" ><br><br>
                                <img src=\"";
        // line 35
        echo $this->extensions['System\Twig\Extension']->mediaFilter("lowongan-sales-spreading.png");
        echo "\" alt=\"\" >
                            </div>
                        </div>    
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t<div class=\"info\">
\t\t\t\t\t\t\t<h3> <center>PT. Panji Herbal Indonesia sedang membutuhkan karyawan baru. kirimkan lamaran  via email PTPHIndonesia@gmail.com.</center><br>
\t\t\t\t\t\t\t<center><small>Untuk keterangan lebih lanjut hubungi :  <br>(Citratus Center) +62821 1283 1609<br>(Anton) +62813 1755 8886</small></center></h3>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div> 
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>
\t
</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/pages/samples/karir.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  85 => 35,  81 => 34,  75 => 31,  61 => 20,  45 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div id=\"heading\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div class=\"heading-content\">
                    <h2>Karir</h2>
                    <span>Beranda / <a href=\"{{ 'samples/karir'|page }}\">Karir</a></span>
                </div>
             </div>
        </div>
    </div>
</div>

<div id=\"product-post\">
    <div class=\"container\">
    <div class=\"row\">
        <div class=\"col-md-12\">
            <div class=\"heading-section\">
                <h2>Berkarirlah bersama kami</h2>
                <img src=\"{{ 'assets/images/under-heading.png'|theme }}\" alt=\"\" >
            </div>
        </div>
    </div>
    <div id=\"contact-us\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"product-item col-md-12\">
                    <div class=\"row\">
                        <div class=\"col-md-12\">
                            <div class=\"col-md-6\" style=\"margin-bottom:10px;\">
                                <img src=\"{{ 'LowkerSekretaris.png'|media }}\" alt=\"\" >
                            </div>
                            <div class=\"col-md-6\">
                                <img src=\"{{ 'info_lowongan_kerja.jpeg'|media }}\" alt=\"\" ><br><br>
                                <img src=\"{{ 'lowongan-sales-spreading.png'|media }}\" alt=\"\" >
                            </div>
                        </div>    
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t<div class=\"info\">
\t\t\t\t\t\t\t<h3> <center>PT. Panji Herbal Indonesia sedang membutuhkan karyawan baru. kirimkan lamaran  via email PTPHIndonesia@gmail.com.</center><br>
\t\t\t\t\t\t\t<center><small>Untuk keterangan lebih lanjut hubungi :  <br>(Citratus Center) +62821 1283 1609<br>(Anton) +62813 1755 8886</small></center></h3>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div> 
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>
\t
</div>", "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/pages/samples/karir.htm", "");
    }
}
