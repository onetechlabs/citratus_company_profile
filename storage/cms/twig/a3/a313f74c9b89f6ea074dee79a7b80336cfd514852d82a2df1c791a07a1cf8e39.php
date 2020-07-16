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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/single-post/sidebar.htm */
class __TwigTemplate_77bf27048b2f7e70d121f75feb49813b88daee256949f9b83d2559d4f6f95d6e extends \Twig\Template
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
        echo "<div class=\"col-md-3 col-md-offset-1\">
                                <div class=\"side-bar\">
                                    <div class=\"news-letters\">
                                        <h4>Categories</h4>
                                        <div class=\"archives-list\">
                                            <ul>
                                              <li><a href=\"#\"><i class=\"fa fa-angle-right\"></i>Category A</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class=\"recent-post\">
                                        <h4>Recent Posts</h4>
                                            <div class=\"posts\">
                                                <div class=\"recent-post\">
                                                    <div class=\"recent-post-thumb\">
                                                         <img src=\"";
        // line 16
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/recent-post1.jpg");
        echo "\" alt=\"\">
                                                    </div>
                                                    <div class=\"recent-post-info\">
                                                        <h6><a href=\"#\">Vestibulum molestie odio sit amet</a></h6>
                                                        <span>24 Sep 2084</span>
                                                    </div>
                                                </div>
                                                <div class=\"recent-post\">
                                                <div class=\"recent-post-thumb\">
                                                     <img src=\"";
        // line 25
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/recent-post2.jpg");
        echo "\" alt=\"\">
                                                </div>
                                                <div class=\"recent-post-info\">
                                                    <h6><a href=\"#\">Vivamus mattis quam eget urna tincidunt</a></h6>
                                                    <span>22 Sep 2084</span>
                                                </div>
                                            </div>
                                            <div class=\"recent-post\">
                                                <div class=\"recent-post-thumb\">
                                                    <img src=\"";
        // line 34
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/recent-post3.jpg");
        echo "\" alt=\"\">
                                                </div>
                                                <div class=\"recent-post-info\">
                                                    <h6><a href=\"#\">Curabitur in nunc eget neque posuere</a></h6>
                                                    <span>21 Sep 2084</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </div>
                            </div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/single-post/sidebar.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  78 => 34,  66 => 25,  54 => 16,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"col-md-3 col-md-offset-1\">
                                <div class=\"side-bar\">
                                    <div class=\"news-letters\">
                                        <h4>Categories</h4>
                                        <div class=\"archives-list\">
                                            <ul>
                                              <li><a href=\"#\"><i class=\"fa fa-angle-right\"></i>Category A</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class=\"recent-post\">
                                        <h4>Recent Posts</h4>
                                            <div class=\"posts\">
                                                <div class=\"recent-post\">
                                                    <div class=\"recent-post-thumb\">
                                                         <img src=\"{{ 'assets/images/recent-post1.jpg'|theme }}\" alt=\"\">
                                                    </div>
                                                    <div class=\"recent-post-info\">
                                                        <h6><a href=\"#\">Vestibulum molestie odio sit amet</a></h6>
                                                        <span>24 Sep 2084</span>
                                                    </div>
                                                </div>
                                                <div class=\"recent-post\">
                                                <div class=\"recent-post-thumb\">
                                                     <img src=\"{{ 'assets/images/recent-post2.jpg'|theme }}\" alt=\"\">
                                                </div>
                                                <div class=\"recent-post-info\">
                                                    <h6><a href=\"#\">Vivamus mattis quam eget urna tincidunt</a></h6>
                                                    <span>22 Sep 2084</span>
                                                </div>
                                            </div>
                                            <div class=\"recent-post\">
                                                <div class=\"recent-post-thumb\">
                                                    <img src=\"{{ 'assets/images/recent-post3.jpg'|theme }}\" alt=\"\">
                                                </div>
                                                <div class=\"recent-post-info\">
                                                    <h6><a href=\"#\">Curabitur in nunc eget neque posuere</a></h6>
                                                    <span>21 Sep 2084</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </div>
                            </div>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/single-post/sidebar.htm", "");
    }
}
