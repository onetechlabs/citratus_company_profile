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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/html_base/meta_head.htm */
class __TwigTemplate_0fe707b014c10c84c8060596893f3490d1bfa85d4a25ec1bcd2613c996b01b73 extends \Twig\Template
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
        echo "<meta charset=\"utf-8\">
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <meta name=\"description\" content=\"";
        // line 4
        echo twig_escape_filter($this->env, ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, true, false, 4), "meta_description", [], "any", true, true, false, 4)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, true, false, 4), "meta_description", [], "any", false, false, false, 4), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 4), "description", [], "any", false, false, false, 4))) : (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 4), "description", [], "any", false, false, false, 4))), "html", null, true);
        echo "\">
    <meta name=\"keywords\" content=\"";
        // line 5
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 5), "keywords", [], "any", false, false, false, 5), "html", null, true);
        echo "\">
    <meta name=\"author\" content=\"";
        // line 6
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 6), "website_author", [], "any", false, false, false, 6), "html", null, true);
        echo "\">
    <title>";
        // line 7
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 7), "website_name", [], "any", false, false, false, 7), "html", null, true);
        echo " - ";
        echo twig_escape_filter($this->env, ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, true, false, 7), "meta_title", [], "any", true, true, false, 7)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, true, false, 7), "meta_title", [], "any", false, false, false, 7), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 7), "title", [], "any", false, false, false, 7))) : (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 7), "title", [], "any", false, false, false, 7))), "html", null, true);
        echo "</title>
    <link rel=\"canonical\" href=\"";
        // line 8
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 8), "website_url", [], "any", false, false, false, 8), "html", null, true);
        echo "\" />
    <link rel=\"icon\" type=\"image/png\" href=\"";
        // line 9
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/img/icon.png");
        echo "\" />

    ";
        // line 11
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 11), "load_google_fonts", [], "any", false, false, false, 11)) {
            // line 12
            echo "    <link href=\"https://fonts.googleapis.com/css?family=";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 12), "google_font_family", [], "any", false, false, false, 12), "html", null, true);
            echo "\" rel=\"stylesheet\">
    ";
        }
        // line 14
        echo "    ";
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "theme", [], "any", false, false, false, 14), "load_fontawesome", [], "any", false, false, false, 14)) {
            // line 15
            echo "    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css\" rel=\"stylesheet\">
    ";
        }
        // line 17
        echo "
    <!--[if lte IE 8]><script src=\"";
        // line 18
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/js/ie/html5shiv.js");
        echo "\"></script><![endif]-->
    <!--[if lte IE 9]><link rel=\"stylesheet\" href=\"";
        // line 19
        echo $this->extensions['Cms\Twig\Extension']->themeFilter([0 => "assets/css/ie9.css"]);
        echo "\" /><![endif]-->
    <!--[if lte IE 8]><link rel=\"stylesheet\" href=\"";
        // line 20
        echo $this->extensions['Cms\Twig\Extension']->themeFilter([0 => "assets/css/ie8.css"]);
        echo "\" /><![endif]-->
    <style>
    #nav + #main {
      padding-top: 0 !important;
    }
    #testimonials video, #testimonials img{
      height: 200px;
      width: auto !important;
      margin-bottom:10px;
    }
    #testimonials video, #testimonials img, .testmo p {
      display: block;
      text-align: center;
      margin-left: auto;
      margin-right: auto;
    }
    @media only screen and (max-width: 768px) {
      #testimonials video, #testimonials img{
        width: 100% !important;
        height: auto !important;
        margin-bottom:10px;
      }
      .gallery_videos video, .gallery_videos video{
        width: 100% !important;
        height: auto !important;
      }
    }
    #testimonials{height: auto!important;overflow-y:hidden;}
    #testimonials ul
    {
        list-style-type: none !important;
    }
    .testmo
    {
        font: 15px/115% 'Source Sans Pro', sans-serif;
    font-weight: 200;
    color: #84888c;
    font-style: italic;
    padding: 10px;
    }
    .told_by
    {
        font: 14px/135% 'Source Sans Pro', sans-serif;
    font-weight: normal;
    color: #84888c;
    text-align: right;
    margin-top: 12px;
    }
    #testi_slider li{display:none;margin-top:250px}
    #testi_slider li.active{display:block;}

    /* #########################################################

    HOW TO CREATE A RESPONSIVE IMAGE SLIDER [TUTORIAL]

    \"How to create a Responsive Image Slider [Tutorial]\" was specially made for DesignModo by our friend Valeriu Timbuc.

    Links:
    http://vtimbuc.net
    http://designmodo.com
    http://vladimirkudinov.com

    ######################################################### */



    /* Browser Resets */
    .flex-container a:active,
    .flexslider a:active,
    .flex-container a:focus,
    .flexslider a:focus  { outline: none; }

    .slides,
    .flex-control-nav,
    .flex-direction-nav {
    \tmargin: 0;
    \tpadding: 0;
    \tlist-style: none;
    }

    .flexslider a img { outline: none; border: none; }

    .flexslider {
    \tmargin: 0;
    \tpadding: 0;
    }

    /* Hide the slides before the JS is loaded. Avoids image jumping */
    .flexslider .slides > li {
    \tdisplay: none;
    \t-webkit-backface-visibility: hidden;
    }

    .flexslider .slides img {
    \twidth: 100%;
    \tdisplay: block;

    \t-webkit-border-radius: 2px;
    \t-moz-border-radius: 2px;
    \tborder-radius: 2px;
    }

    /* Clearfix for the .slides element */
    .slides:after {
    \tcontent: \".\";
    \tdisplay: block;
    \tclear: both;
    \tvisibility: hidden;
    \tline-height: 0;
    \theight: 0;
    }

    html[xmlns] .slides { display: block; }
    * html .slides { height: 1%; }



    /* Theme Styles */
    .flexslider {
    \tposition: relative;
    \tzoom: 1;
    \tpadding: 10px;
    \tbackground: #ffffff;

    \t-webkit-border-radius: 3px;
    \t-moz-border-radius: 3px;
    \tborder-radius: 3px;

    \t-webkit-box-shadow: 0px 1px 1px rgba(0,0,0, .2);
    \t-moz-box-shadow: 0px 1px 1px rgba(0,0,0, .2);
    \tbox-shadow: 0px 1px 1px rgba(0,0,0, .2);
    }

    /* Edit it if you want */
    .flex-container {
    \tmin-width: 150px;
    \tmax-width: 960px;
        /*min-height: 500px;*/
    }

    .flexslider .slides { zoom: 1; }



    /* Direction Nav */
    .flex-direction-nav a {
    \tdisplay: block;
    \tposition: absolute;
    \tmargin: -17px 0 0 0;
    \twidth: 35px;
    \theight: 35px;
    \ttop: 50%;
    \tcursor: pointer;
    \ttext-indent: -9999px;
    \tz-index: 9999;

    \tbackground-color: #82d344;
    \tbackground-image: -webkit-gradient(linear, left top, left bottom, from(#82d344), to(#51af34));
    \tbackground-image: -webkit-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: -moz-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: -o-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: linear-gradient(to bottom, #82d344, #51af34);
    }

    .flex-direction-nav a:before {
    \tdisplay: block;
    \tposition: absolute;
    \tcontent: '';
    \twidth: 9px;
    \theight: 13px;
    \ttop: 11px;
    \tleft: 11px;
    \tbackground: url(http://designmodo.com/demo/responsiveslider/img/arrows.png) no-repeat;
    }

    .flex-direction-nav a:after {
    \tdisplay: block;
    \tposition: absolute;
    \tcontent: '';
    \twidth: 0;
    \theight: 0;
    \ttop: 35px;
    }

    .flex-direction-nav .flex-next {
    \tright: -5px;

    \t-webkit-border-radius: 3px 0 0 3px;
    \t-moz-border-radius: 3px 0 0 3px;
    \tborder-radius: 3px 0 0 3px;
    }

    .flex-direction-nav .flex-prev {
    \tleft: -5px;

    \t-webkit-border-radius: 0 3px 3px 0;
    \t-moz-border-radius: 0 3px 3px 0;
    \tborder-radius: 0 3px 3px 0;
    }

    .flex-direction-nav .flex-next:before { background-position: -9px 0; left: 15px; }
    .flex-direction-nav .flex-prev:before { background-position: 0 0; }

    .flex-direction-nav .flex-next:after {
    \tright: 0;
    \tborder-bottom: 5px solid transparent;
    \tborder-left: 5px solid #31611e;
    }

    .flex-direction-nav .flex-prev:after {
    \tleft: 0;
    \tborder-bottom: 5px solid transparent;
    \tborder-right: 5px solid #31611e;
    }



    /* Control Nav */
    .flexslider .flex-control-nav {
    \twidth: 100%;
    \tbottom: -20px;
    \ttext-align: center;
    \tmargin-top: 10px;
    }

    .flex-control-nav li {
    \tdisplay: inline-block;
    \tzoom: 1;
    }

    .flex-control-paging li a {
    \tdisplay: block;
    \tcursor: pointer;
    \ttext-indent: -9999px;
    \twidth: 12px;
    \theight: 12px;
    \tmargin: 0 3px;
    \tbackground-color: #b6b6b6 \\9;

    \t-webkit-border-radius: 12px;
    \t-moz-border-radius: 12px;
    \tborder-radius: 12px;

    \t-webkit-box-shadow: inset 0 0 0 2px #b6b6b6;
    \t-moz-box-shadow: inset 0 0 0 2px #b6b6b6;
    \tbox-shadow: inset 0 0 0 2px #b6b6b6;
    }

    .flex-control-paging li a.flex-active {
    \tbackground-color: #82d344;
    \tbackground-image: -webkit-gradient(linear, left top, left bottom, from(#82d344), to(#51af34));
    \tbackground-image: -webkit-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: -moz-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: -o-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: linear-gradient(to bottom, #82d344, #51af34);

    \t-webkit-box-shadow: none;
    \t-moz-box-shadow: none;
    \tbox-shadow: none;
    }



    /* Captions */
    .flexslider .slides p {
    \tdisplay: block;
    \tposition: absolute;
    \tleft: 0;
    \tbottom: 100px;
    \tpadding: 0 5px;
    \tmargin: 0;

    \tfont-family: Helvetica, Arial, sans-serif;
    \tfont-size: 12px;
    \tfont-weight: bold;
    \ttext-transform: uppercase;
    \tline-height: 20px;
    \tcolor: white;

    \tbackground-color: #222222;
    \tbackground: rgba(0,0,0, .9);

    \t-webkit-border-radius: 2px;
    \t-moz-border-radius: 2px;
    \tborder-radius: 2px;
    }

    </style>

    <link href=\"";
        // line 309
        echo $this->extensions['Cms\Twig\Extension']->themeFilter([0 => "assets/css/main.css", 1 => "assets/sass/zw_custom.scss"]);
        echo "\" rel=\"stylesheet\">
    ";
        // line 310
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/html_base/meta_head.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  391 => 310,  387 => 309,  95 => 20,  91 => 19,  87 => 18,  84 => 17,  80 => 15,  77 => 14,  71 => 12,  69 => 11,  64 => 9,  60 => 8,  54 => 7,  50 => 6,  46 => 5,  42 => 4,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<meta charset=\"utf-8\">
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <meta name=\"description\" content=\"{{ this.page.meta_description|default(this.theme.description) }}\">
    <meta name=\"keywords\" content=\"{{ this.theme.keywords }}\">
    <meta name=\"author\" content=\"{{ this.theme.website_author }}\">
    <title>{{ this.theme.website_name }} - {{ this.page.meta_title|default(this.page.title) }}</title>
    <link rel=\"canonical\" href=\"{{ this.theme.website_url }}\" />
    <link rel=\"icon\" type=\"image/png\" href=\"{{ 'assets/img/icon.png'|theme }}\" />

    {% if this.theme.load_google_fonts %}
    <link href=\"https://fonts.googleapis.com/css?family={{ this.theme.google_font_family }}\" rel=\"stylesheet\">
    {% endif %}
    {% if this.theme.load_fontawesome %}
    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css\" rel=\"stylesheet\">
    {% endif %}

    <!--[if lte IE 8]><script src=\"{{ 'assets/js/ie/html5shiv.js'|theme }}\"></script><![endif]-->
    <!--[if lte IE 9]><link rel=\"stylesheet\" href=\"{{ ['assets/css/ie9.css']|theme }}\" /><![endif]-->
    <!--[if lte IE 8]><link rel=\"stylesheet\" href=\"{{ ['assets/css/ie8.css']|theme }}\" /><![endif]-->
    <style>
    #nav + #main {
      padding-top: 0 !important;
    }
    #testimonials video, #testimonials img{
      height: 200px;
      width: auto !important;
      margin-bottom:10px;
    }
    #testimonials video, #testimonials img, .testmo p {
      display: block;
      text-align: center;
      margin-left: auto;
      margin-right: auto;
    }
    @media only screen and (max-width: 768px) {
      #testimonials video, #testimonials img{
        width: 100% !important;
        height: auto !important;
        margin-bottom:10px;
      }
      .gallery_videos video, .gallery_videos video{
        width: 100% !important;
        height: auto !important;
      }
    }
    #testimonials{height: auto!important;overflow-y:hidden;}
    #testimonials ul
    {
        list-style-type: none !important;
    }
    .testmo
    {
        font: 15px/115% 'Source Sans Pro', sans-serif;
    font-weight: 200;
    color: #84888c;
    font-style: italic;
    padding: 10px;
    }
    .told_by
    {
        font: 14px/135% 'Source Sans Pro', sans-serif;
    font-weight: normal;
    color: #84888c;
    text-align: right;
    margin-top: 12px;
    }
    #testi_slider li{display:none;margin-top:250px}
    #testi_slider li.active{display:block;}

    /* #########################################################

    HOW TO CREATE A RESPONSIVE IMAGE SLIDER [TUTORIAL]

    \"How to create a Responsive Image Slider [Tutorial]\" was specially made for DesignModo by our friend Valeriu Timbuc.

    Links:
    http://vtimbuc.net
    http://designmodo.com
    http://vladimirkudinov.com

    ######################################################### */



    /* Browser Resets */
    .flex-container a:active,
    .flexslider a:active,
    .flex-container a:focus,
    .flexslider a:focus  { outline: none; }

    .slides,
    .flex-control-nav,
    .flex-direction-nav {
    \tmargin: 0;
    \tpadding: 0;
    \tlist-style: none;
    }

    .flexslider a img { outline: none; border: none; }

    .flexslider {
    \tmargin: 0;
    \tpadding: 0;
    }

    /* Hide the slides before the JS is loaded. Avoids image jumping */
    .flexslider .slides > li {
    \tdisplay: none;
    \t-webkit-backface-visibility: hidden;
    }

    .flexslider .slides img {
    \twidth: 100%;
    \tdisplay: block;

    \t-webkit-border-radius: 2px;
    \t-moz-border-radius: 2px;
    \tborder-radius: 2px;
    }

    /* Clearfix for the .slides element */
    .slides:after {
    \tcontent: \".\";
    \tdisplay: block;
    \tclear: both;
    \tvisibility: hidden;
    \tline-height: 0;
    \theight: 0;
    }

    html[xmlns] .slides { display: block; }
    * html .slides { height: 1%; }



    /* Theme Styles */
    .flexslider {
    \tposition: relative;
    \tzoom: 1;
    \tpadding: 10px;
    \tbackground: #ffffff;

    \t-webkit-border-radius: 3px;
    \t-moz-border-radius: 3px;
    \tborder-radius: 3px;

    \t-webkit-box-shadow: 0px 1px 1px rgba(0,0,0, .2);
    \t-moz-box-shadow: 0px 1px 1px rgba(0,0,0, .2);
    \tbox-shadow: 0px 1px 1px rgba(0,0,0, .2);
    }

    /* Edit it if you want */
    .flex-container {
    \tmin-width: 150px;
    \tmax-width: 960px;
        /*min-height: 500px;*/
    }

    .flexslider .slides { zoom: 1; }



    /* Direction Nav */
    .flex-direction-nav a {
    \tdisplay: block;
    \tposition: absolute;
    \tmargin: -17px 0 0 0;
    \twidth: 35px;
    \theight: 35px;
    \ttop: 50%;
    \tcursor: pointer;
    \ttext-indent: -9999px;
    \tz-index: 9999;

    \tbackground-color: #82d344;
    \tbackground-image: -webkit-gradient(linear, left top, left bottom, from(#82d344), to(#51af34));
    \tbackground-image: -webkit-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: -moz-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: -o-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: linear-gradient(to bottom, #82d344, #51af34);
    }

    .flex-direction-nav a:before {
    \tdisplay: block;
    \tposition: absolute;
    \tcontent: '';
    \twidth: 9px;
    \theight: 13px;
    \ttop: 11px;
    \tleft: 11px;
    \tbackground: url(http://designmodo.com/demo/responsiveslider/img/arrows.png) no-repeat;
    }

    .flex-direction-nav a:after {
    \tdisplay: block;
    \tposition: absolute;
    \tcontent: '';
    \twidth: 0;
    \theight: 0;
    \ttop: 35px;
    }

    .flex-direction-nav .flex-next {
    \tright: -5px;

    \t-webkit-border-radius: 3px 0 0 3px;
    \t-moz-border-radius: 3px 0 0 3px;
    \tborder-radius: 3px 0 0 3px;
    }

    .flex-direction-nav .flex-prev {
    \tleft: -5px;

    \t-webkit-border-radius: 0 3px 3px 0;
    \t-moz-border-radius: 0 3px 3px 0;
    \tborder-radius: 0 3px 3px 0;
    }

    .flex-direction-nav .flex-next:before { background-position: -9px 0; left: 15px; }
    .flex-direction-nav .flex-prev:before { background-position: 0 0; }

    .flex-direction-nav .flex-next:after {
    \tright: 0;
    \tborder-bottom: 5px solid transparent;
    \tborder-left: 5px solid #31611e;
    }

    .flex-direction-nav .flex-prev:after {
    \tleft: 0;
    \tborder-bottom: 5px solid transparent;
    \tborder-right: 5px solid #31611e;
    }



    /* Control Nav */
    .flexslider .flex-control-nav {
    \twidth: 100%;
    \tbottom: -20px;
    \ttext-align: center;
    \tmargin-top: 10px;
    }

    .flex-control-nav li {
    \tdisplay: inline-block;
    \tzoom: 1;
    }

    .flex-control-paging li a {
    \tdisplay: block;
    \tcursor: pointer;
    \ttext-indent: -9999px;
    \twidth: 12px;
    \theight: 12px;
    \tmargin: 0 3px;
    \tbackground-color: #b6b6b6 \\9;

    \t-webkit-border-radius: 12px;
    \t-moz-border-radius: 12px;
    \tborder-radius: 12px;

    \t-webkit-box-shadow: inset 0 0 0 2px #b6b6b6;
    \t-moz-box-shadow: inset 0 0 0 2px #b6b6b6;
    \tbox-shadow: inset 0 0 0 2px #b6b6b6;
    }

    .flex-control-paging li a.flex-active {
    \tbackground-color: #82d344;
    \tbackground-image: -webkit-gradient(linear, left top, left bottom, from(#82d344), to(#51af34));
    \tbackground-image: -webkit-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: -moz-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: -o-linear-gradient(top, #82d344, #51af34);
    \tbackground-image: linear-gradient(to bottom, #82d344, #51af34);

    \t-webkit-box-shadow: none;
    \t-moz-box-shadow: none;
    \tbox-shadow: none;
    }



    /* Captions */
    .flexslider .slides p {
    \tdisplay: block;
    \tposition: absolute;
    \tleft: 0;
    \tbottom: 100px;
    \tpadding: 0 5px;
    \tmargin: 0;

    \tfont-family: Helvetica, Arial, sans-serif;
    \tfont-size: 12px;
    \tfont-weight: bold;
    \ttext-transform: uppercase;
    \tline-height: 20px;
    \tcolor: white;

    \tbackground-color: #222222;
    \tbackground: rgba(0,0,0, .9);

    \t-webkit-border-radius: 2px;
    \t-moz-border-radius: 2px;
    \tborder-radius: 2px;
    }

    </style>

    <link href=\"{{ ['assets/css/main.css', 'assets/sass/zw_custom.scss']|theme }}\" rel=\"stylesheet\">
    {% styles %}", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/partials/html_base/meta_head.htm", "");
    }
}
