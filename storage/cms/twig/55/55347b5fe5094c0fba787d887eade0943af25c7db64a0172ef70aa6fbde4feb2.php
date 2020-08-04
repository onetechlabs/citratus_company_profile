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

/* /home/citratus/public_html/themes/jtherczeg-grill/pages/samples/single-post.htm */
class __TwigTemplate_0f170c2c749cf2ddd3e0f5ab3bb22990b271ee00dcffc65717d066a5cc30e380 extends \Twig\Template
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
        if (($context["post"] ?? null)) {
            // line 2
            echo "<div id=\"heading\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div class=\"heading-content\">
                    <h2>";
            // line 7
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "title", [], "any", false, false, false, 7), "html", null, true);
            echo "</h2>
                    <span>Home / <a href=\"";
            // line 8
            echo $this->extensions['Cms\Twig\Extension']->pageFilter("samples/single-post");
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "title", [], "any", false, false, false, 8), "html", null, true);
            echo "</a></span>
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
                    <h2>";
            // line 21
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "title", [], "any", false, false, false, 21), "html", null, true);
            echo "</h2>
                    <img src=\"";
            // line 22
            echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/under-heading.png");
            echo "\" alt=\"\" />
                </div>
            </div>
        </div>
        <div id=\"single-blog\" class=\"page-section first-section\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"product-item col-md-12\">
                        <div class=\"row\">
                            <div class=\"col-md-12\">
                              <div class=\"image\">
                                  <div class=\"image-post\">
                                      <center>
                                        ";
            // line 35
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "featured_images", [], "any", false, false, false, 35));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 36
                echo "                                          <img data-src=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "filename", [], "any", false, false, false, 36), "html", null, true);
                echo "\" width=\"100%\" src=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "thumb", [0 => 400, 1 => 250, 2 => "crop"], "method", false, false, false, 36), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "description", [], "any", false, false, false, 36), "html", null, true);
                echo "\">
                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 38
            echo "                                      </center>
                                  </div>
                              </div>
                              <div class=\"product-content\">
                                  <div class=\"product-title\">
                                       <h3>Posted by ";
            // line 43
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "user", [], "any", false, false, false, 43), "first_name", [], "any", false, false, false, 43), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "user", [], "any", false, false, false, 43), "last_name", [], "any", false, false, false, 43), "html", null, true);
            echo "</h3>
                                       <span class=\"subtitle\">Posted at ";
            // line 44
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "published_at", [], "any", false, false, false, 44), "M d, Y"), "html", null, true);
            echo "</span>
                                       ";
            // line 45
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "categories", [], "any", false, false, false, 45), "count", [], "any", false, false, false, 45)) {
                echo " in ";
            }
            // line 46
            echo "                                       ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "categories", [], "any", false, false, false, 46));
            $context['loop'] = [
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            ];
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof \Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 47
                echo "                                           <i>";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 47), "html", null, true);
                echo "</i> ";
                if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 47)) {
                    echo ", ";
                }
                // line 48
                echo "                                       ";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 49
            echo "                                  </div>
                                  <p>";
            // line 50
            echo twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "content_html", [], "any", false, false, false, 50);
            echo "</p>
                              </div>
                              <div class=\"divide-line\">
                              <center><img src=\"";
            // line 53
            echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/div-line.png");
            echo "\" alt=\"\" /></center>
                              </div>
\t\t\t\t\t\t\t\t         </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

";
        } else {
            // line 65
            echo "<h2>Post not found</h2>
";
        }
    }

    public function getTemplateName()
    {
        return "/home/citratus/public_html/themes/jtherczeg-grill/pages/samples/single-post.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  189 => 65,  174 => 53,  168 => 50,  165 => 49,  151 => 48,  144 => 47,  126 => 46,  122 => 45,  118 => 44,  112 => 43,  105 => 38,  92 => 36,  88 => 35,  72 => 22,  68 => 21,  50 => 8,  46 => 7,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% if post %}
<div id=\"heading\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div class=\"heading-content\">
                    <h2>{{ post.title }}</h2>
                    <span>Home / <a href=\"{{ 'samples/single-post'|page }}\">{{ post.title }}</a></span>
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
                    <h2>{{ post.title }}</h2>
                    <img src=\"{{ 'assets/images/under-heading.png'|theme }}\" alt=\"\" />
                </div>
            </div>
        </div>
        <div id=\"single-blog\" class=\"page-section first-section\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"product-item col-md-12\">
                        <div class=\"row\">
                            <div class=\"col-md-12\">
                              <div class=\"image\">
                                  <div class=\"image-post\">
                                      <center>
                                        {% for image in post.featured_images %}
                                          <img data-src=\"{{ image.filename }}\" width=\"100%\" src=\"{{ image.thumb(400,250,'crop') }}\" alt=\"{{ image.description }}\">
                                        {% endfor %}
                                      </center>
                                  </div>
                              </div>
                              <div class=\"product-content\">
                                  <div class=\"product-title\">
                                       <h3>Posted by {{post.user.first_name}} {{post.user.last_name}}</h3>
                                       <span class=\"subtitle\">Posted at {{ post.published_at|date('M d, Y') }}</span>
                                       {% if post.categories.count %} in {% endif %}
                                       {% for category in post.categories %}
                                           <i>{{ category.name }}</i> {% if not loop.last %}, {% endif %}
                                       {% endfor %}
                                  </div>
                                  <p>{{ post.content_html|raw }}</p>
                              </div>
                              <div class=\"divide-line\">
                              <center><img src=\"{{ 'assets/images/div-line.png'|theme }}\" alt=\"\" /></center>
                              </div>
\t\t\t\t\t\t\t\t         </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{% else %}
<h2>Post not found</h2>
{% endif %}", "/home/citratus/public_html/themes/jtherczeg-grill/pages/samples/single-post.htm", "");
    }
}
