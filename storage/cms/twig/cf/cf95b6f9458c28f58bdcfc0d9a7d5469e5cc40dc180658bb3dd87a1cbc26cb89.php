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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/socials.htm */
class __TwigTemplate_b93c9f58085e57e7c61bca313db7ee87a9a1473f0d81af203ba2afc429b3bc4c extends \Twig\Template
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
        echo "<div class=\"top-footer\">
    <div class=\"row\">
        <div class=\"col-md-9\">
            <div class=\"subscribe-form\">
                <span>Get in touch with us</span>
                    <form role=\"form\" method=\"get\" class=\"subscribeForm\">
                        <input id=\"subscribe\" type=\"text\" />
                        <input type=\"submit\" id=\"submitButton\" />
                    </form>
            </div>
        </div>
        <div class=\"col-md-3\">
            <div class=\"social-bottom\">
                <span>Follow us:</span>
                    <ul>
                        <li><a href=\"#\" class=\"fa fa-facebook\"></a></li>
                        <li><a href=\"#\" class=\"fa fa-twitter\"></a></li>
                        <li><a href=\"#\" class=\"fa fa-rss\"></a></li>
                    </ul>
            </div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/socials.htm";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"top-footer\">
    <div class=\"row\">
        <div class=\"col-md-9\">
            <div class=\"subscribe-form\">
                <span>Get in touch with us</span>
                    <form role=\"form\" method=\"get\" class=\"subscribeForm\">
                        <input id=\"subscribe\" type=\"text\" />
                        <input type=\"submit\" id=\"submitButton\" />
                    </form>
            </div>
        </div>
        <div class=\"col-md-3\">
            <div class=\"social-bottom\">
                <span>Follow us:</span>
                    <ul>
                        <li><a href=\"#\" class=\"fa fa-facebook\"></a></li>
                        <li><a href=\"#\" class=\"fa fa-twitter\"></a></li>
                        <li><a href=\"#\" class=\"fa fa-rss\"></a></li>
                    </ul>
            </div>
        </div>
    </div>
</div>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/socials.htm", "");
    }
}
