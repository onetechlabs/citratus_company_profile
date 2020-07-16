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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/single-post/comments.htm */
class __TwigTemplate_f104080bea3f22aace7555a15ced6bde7b244dec11bd056df8dbd50cd723cb74 extends \Twig\Template
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
        echo "<div class=\"comments-title\">
                                    <div class=\"comment-section\">
                                        <h4>4 comments</h4>
                                    </div>
                                </div>
                                <div class=\"all-comments\">
                                    <div class=\"view-comments\">
                                        <div class=\"comments\">
                                            <div class=\"author-thumb\">
                                                <img src=\"";
        // line 10
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/author-comment1.jpg");
        echo "\" alt=\"\">
                                            </div>
                                            <div class=\"comment-body\">
\t\t\t\t\t\t\t\t\t\t\t\t<h6>Catherine Hla</h6>
                                                <span class=\"date\">11 Sep 2084 - 12:30 PM</span>
                                                <a href=\"#\" class=\"hidden-xs\">Reply</a>
                                                <p>Ut vel consequat urna. Ut aliquet ornare massa, quis dapibus quam condimentum id. Duis eget sagittis nisl, at mollis massa. Suspendisse ut sagittis justo.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=\"replyed-form\">
                                        <div class=\"comments replyed\">
                                            <div class=\"author-thumb\">
                                                <img src=\"";
        // line 23
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/author-comment2.jpg");
        echo "\" alt=\"\">
                                            </div>
                                            <div class=\"comment-body\">
                                                <h6>Anna Thiri</h6>
                                                <span class=\"date\">12 Sep 2084 - 10:10 AM</span>
                                                <a href=\"#\" class=\"hidden-xs\">Reply</a>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquet pellentesque magna. Morbi non varius massa. Vivamus tortor sapien, dignissim quis iaculis non, pretium vel odio.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=\"view-comments\">
                                        <div class=\"comments\">
                                            <div class=\"author-thumb\">
                                                <img src=\"";
        // line 36
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/author-comment3.jpg");
        echo "\" alt=\"\">
                                            </div>
                                            <div class=\"comment-body\">
                                                <h6>Diana Aung</h6>
                                                <span class=\"date\">12 Sep 2084 - 11:00 AM</span>
                                                <a href=\"#\" class=\"hidden-xs\">Reply</a>
                                                <p>Vestibulum molestie odio sit amet malesuada tincidunt. Donec sollicitudin diam ut tellus bibendum ullamcorper. Fusce vel porttitor libero.</p>
                                             </div>
                                        </div>
                                    </div>
                                    <div class=\"view-comments\">
                                        <div class=\"comments\">
                                            <div class=\"author-thumb\">
                                                <img src=\"";
        // line 49
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/author-comment4.jpg");
        echo "\" alt=\"\">
                                            </div>
                                            <div class=\"comment-body\">
                                                <h6>Kimberly Mya</h6>
                                                <span class=\"date\">14 Sep 2084 - 09:30 PM</span>
                                                <a href=\"#\" class=\"hidden-xs\">Reply</a>
                                                <p>Nullam non lorem sed tellus vulputate pulvinar ac quis velit. Ut sit amet turpis feugiat sem molestie lacinia.</p>
                                             </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=\"divide-line\">
                                    <img src=\"";
        // line 61
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/div-line.png");
        echo "\" alt=\"\" />
                                </div>
                                <div class=\"leave-comment\">
                                    <div class=\"leave-one\">
                                        <h4>Leave a comment</h4>
                                    </div>
                                </div>
                                <div class=\"leave-form\">
                                    <form role=\"form\" action=\"#\" method=\"post\" class=\"leave-comment\">
                                        <div class=\"row\">
                                        <div class=\"name col-md-4\">
                                            <input type=\"text\" name=\"name\" id=\"name\" placeholder=\"Name\" />
                                        </div>
                                        <div class=\"email col-md-4\">
                                            <input type=\"text\" name=\"email\" id=\"email\" placeholder=\"Email\" />
                                        </div>
                                        <div class=\"subject col-md-4\">
                                            <input type=\"text\" name=\"subject\" id=\"subject\" placeholder=\"Subject\" />
                                        </div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">        
                                        <div class=\"text col-md-12\">
                                            <textarea name=\"text\" placeholder=\"Comment\"></textarea>
                                        </div>   
\t\t\t\t\t\t\t\t\t\t</div>                              
\t\t\t\t\t\t\t\t\t\t<div class=\"send\">
\t\t\t\t\t\t\t\t\t\t\t<button type=\"submit\">Send</button>
\t\t\t\t\t\t\t\t\t\t</div>
                                    </form>
                                </div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/single-post/comments.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  111 => 61,  96 => 49,  80 => 36,  64 => 23,  48 => 10,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"comments-title\">
                                    <div class=\"comment-section\">
                                        <h4>4 comments</h4>
                                    </div>
                                </div>
                                <div class=\"all-comments\">
                                    <div class=\"view-comments\">
                                        <div class=\"comments\">
                                            <div class=\"author-thumb\">
                                                <img src=\"{{ 'assets/images/author-comment1.jpg'|theme }}\" alt=\"\">
                                            </div>
                                            <div class=\"comment-body\">
\t\t\t\t\t\t\t\t\t\t\t\t<h6>Catherine Hla</h6>
                                                <span class=\"date\">11 Sep 2084 - 12:30 PM</span>
                                                <a href=\"#\" class=\"hidden-xs\">Reply</a>
                                                <p>Ut vel consequat urna. Ut aliquet ornare massa, quis dapibus quam condimentum id. Duis eget sagittis nisl, at mollis massa. Suspendisse ut sagittis justo.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=\"replyed-form\">
                                        <div class=\"comments replyed\">
                                            <div class=\"author-thumb\">
                                                <img src=\"{{ 'assets/images/author-comment2.jpg'|theme }}\" alt=\"\">
                                            </div>
                                            <div class=\"comment-body\">
                                                <h6>Anna Thiri</h6>
                                                <span class=\"date\">12 Sep 2084 - 10:10 AM</span>
                                                <a href=\"#\" class=\"hidden-xs\">Reply</a>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam aliquet pellentesque magna. Morbi non varius massa. Vivamus tortor sapien, dignissim quis iaculis non, pretium vel odio.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=\"view-comments\">
                                        <div class=\"comments\">
                                            <div class=\"author-thumb\">
                                                <img src=\"{{ 'assets/images/author-comment3.jpg'|theme }}\" alt=\"\">
                                            </div>
                                            <div class=\"comment-body\">
                                                <h6>Diana Aung</h6>
                                                <span class=\"date\">12 Sep 2084 - 11:00 AM</span>
                                                <a href=\"#\" class=\"hidden-xs\">Reply</a>
                                                <p>Vestibulum molestie odio sit amet malesuada tincidunt. Donec sollicitudin diam ut tellus bibendum ullamcorper. Fusce vel porttitor libero.</p>
                                             </div>
                                        </div>
                                    </div>
                                    <div class=\"view-comments\">
                                        <div class=\"comments\">
                                            <div class=\"author-thumb\">
                                                <img src=\"{{ 'assets/images/author-comment4.jpg'|theme }}\" alt=\"\">
                                            </div>
                                            <div class=\"comment-body\">
                                                <h6>Kimberly Mya</h6>
                                                <span class=\"date\">14 Sep 2084 - 09:30 PM</span>
                                                <a href=\"#\" class=\"hidden-xs\">Reply</a>
                                                <p>Nullam non lorem sed tellus vulputate pulvinar ac quis velit. Ut sit amet turpis feugiat sem molestie lacinia.</p>
                                             </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=\"divide-line\">
                                    <img src=\"{{ 'assets/images/div-line.png'|theme }}\" alt=\"\" />
                                </div>
                                <div class=\"leave-comment\">
                                    <div class=\"leave-one\">
                                        <h4>Leave a comment</h4>
                                    </div>
                                </div>
                                <div class=\"leave-form\">
                                    <form role=\"form\" action=\"#\" method=\"post\" class=\"leave-comment\">
                                        <div class=\"row\">
                                        <div class=\"name col-md-4\">
                                            <input type=\"text\" name=\"name\" id=\"name\" placeholder=\"Name\" />
                                        </div>
                                        <div class=\"email col-md-4\">
                                            <input type=\"text\" name=\"email\" id=\"email\" placeholder=\"Email\" />
                                        </div>
                                        <div class=\"subject col-md-4\">
                                            <input type=\"text\" name=\"subject\" id=\"subject\" placeholder=\"Subject\" />
                                        </div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">        
                                        <div class=\"text col-md-12\">
                                            <textarea name=\"text\" placeholder=\"Comment\"></textarea>
                                        </div>   
\t\t\t\t\t\t\t\t\t\t</div>                              
\t\t\t\t\t\t\t\t\t\t<div class=\"send\">
\t\t\t\t\t\t\t\t\t\t\t<button type=\"submit\">Send</button>
\t\t\t\t\t\t\t\t\t\t</div>
                                    </form>
                                </div>", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/jtherczeg-grill/partials/single-post/comments.htm", "");
    }
}
