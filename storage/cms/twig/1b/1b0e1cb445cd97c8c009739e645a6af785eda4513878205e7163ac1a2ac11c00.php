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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/all_pages/footer.htm */
class __TwigTemplate_b56f71bb95f69dc2da2816f44bd84bec59637d27a172742ba583dc8f3126895f extends \Twig\Template
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
        echo "<!-- Footer -->
<footer id=\"footer\">
    <section style=\"
        background: #FFF;
        padding: 10px;
        border-radius: 21px;
    \">
        <span class=\"logo\"><img src=\"";
        // line 8
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/konten_citratus/logowilhels.png");
        echo "\" style=\" width: 200px; margin-left: auto; margin-right: auto; display: block; margin-bottom: 20px;\" alt=\"Logo\" /></span>
        <p>
            <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3962.6080632341086!2d108.39568361477161!3d-6.695369095159331!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNsKwNDEnNDMuMyJTIDEwOMKwMjMnNTIuMyJF!5e0!3m2!1sid!2sid!4v1591119932780!5m2!1sid!2sid\" width=\"100%\" height=\"225\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>
        </p>
    </section>
    <section>
        <h2>Kontak Kami</h2>
        <dl class=\"alt\">
            <dt>Alamat</dt>
            <dd>Jl. RAYA PALIMANAN GEMPOL DESA KEDUNG BUNDAR, KEC. GEMPOL ,CIREBON</dd>
            <dt>Phone</dt>
            <dd>(+62) 000 0000 0000</dd>
            <dt>Email</dt>
            <dd><a href=\"#\">info@mail.com</a></dd>
        </dl>
        <ul class=\"icons\">
            <li><a href=\"#\" class=\"icon fa-twitter alt\"><span class=\"label\">Twitter</span></a></li>
            <li><a href=\"#\" class=\"icon fa-facebook alt\"><span class=\"label\">Facebook</span></a></li>
            <li><a href=\"#\" class=\"icon fa-instagram alt\"><span class=\"label\">Instagram</span></a></li>
        </ul>
    </section>
    <p class=\"copyright\">Copyright &copy; Wilhels briket indonesia .</p>
</footer>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/all_pages/footer.htm";
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
        return new Source("<!-- Footer -->
<footer id=\"footer\">
    <section style=\"
        background: #FFF;
        padding: 10px;
        border-radius: 21px;
    \">
        <span class=\"logo\"><img src=\"{{'assets/images/konten_citratus/logowilhels.png'|theme}}\" style=\" width: 200px; margin-left: auto; margin-right: auto; display: block; margin-bottom: 20px;\" alt=\"Logo\" /></span>
        <p>
            <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3962.6080632341086!2d108.39568361477161!3d-6.695369095159331!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNsKwNDEnNDMuMyJTIDEwOMKwMjMnNTIuMyJF!5e0!3m2!1sid!2sid!4v1591119932780!5m2!1sid!2sid\" width=\"100%\" height=\"225\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>
        </p>
    </section>
    <section>
        <h2>Kontak Kami</h2>
        <dl class=\"alt\">
            <dt>Alamat</dt>
            <dd>Jl. RAYA PALIMANAN GEMPOL DESA KEDUNG BUNDAR, KEC. GEMPOL ,CIREBON</dd>
            <dt>Phone</dt>
            <dd>(+62) 000 0000 0000</dd>
            <dt>Email</dt>
            <dd><a href=\"#\">info@mail.com</a></dd>
        </dl>
        <ul class=\"icons\">
            <li><a href=\"#\" class=\"icon fa-twitter alt\"><span class=\"label\">Twitter</span></a></li>
            <li><a href=\"#\" class=\"icon fa-facebook alt\"><span class=\"label\">Facebook</span></a></li>
            <li><a href=\"#\" class=\"icon fa-instagram alt\"><span class=\"label\">Instagram</span></a></li>
        </ul>
    </section>
    <p class=\"copyright\">Copyright &copy; Wilhels briket indonesia .</p>
</footer>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/all_pages/footer.htm", "");
    }
}