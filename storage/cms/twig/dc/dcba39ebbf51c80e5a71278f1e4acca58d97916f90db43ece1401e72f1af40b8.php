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

/* /home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/latest-blog.htm */
class __TwigTemplate_fa27b8e03dddbd718581360157305aef362c6d3474916d3381967a379f33644c extends \Twig\Template
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
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["blogPosts"] ?? null), "posts", [], "any", false, false, false, 1);
        // line 2
        echo "<div class=\"container\">
    <div class=\"row\">
        <div class=\"col-md-12\">
            <div class=\"heading-section\" id=\"blog-post\">
                <h2>Postingan Terbaru</h2>
                <img src=\"";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/under-heading.png");
        echo "\" alt=\"\" >
            </div>
        </div>
    </div>
    <div class=\"row\">
      ";
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 13
            echo "        <div class=\"col-md-4 col-sm-6\">
            <div class=\"blog-post\">
                <div class=\"blog-thumb\">
                    ";
            // line 16
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["post"], "featured_images", [], "any", false, false, false, 16));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 17
                echo "                      <img data-src=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "filename", [], "any", false, false, false, 17), "html", null, true);
                echo "\" src=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "thumb", [0 => 400, 1 => 250, 2 => "crop"], "method", false, false, false, 17), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "description", [], "any", false, false, false, 17), "html", null, true);
                echo "\">
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 19
            echo "                </div>
                <div class=\"blog-content\">
                    <div class=\"content-show\">
                        <h4><a href=\"/single-post/";
            // line 22
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "slug", [], "any", false, false, false, 22), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 22), "html", null, true);
            echo "</a></h4>
                        <span>
                          Posted
                          ";
            // line 25
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "categories", [], "any", false, false, false, 25), "count", [], "any", false, false, false, 25)) {
                echo " in ";
            }
            // line 26
            echo "                          ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["post"], "categories", [], "any", false, false, false, 26));
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
                // line 27
                echo "                              <i style=\"color:#FFF;\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 27), "html", null, true);
                echo "</i> ";
                if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 27)) {
                    echo ", ";
                }
                // line 28
                echo "                          ";
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
            // line 29
            echo "                          on ";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "published_at", [], "any", false, false, false, 29), "M d, Y"), "html", null, true);
            echo "
                        </span>
                    </div>
                    <div class=\"content-hide\">
                        <p>";
            // line 33
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "excerpt", [], "any", false, false, false, 33), "html", null, true);
            echo "</p>
                    </div>
                </div>
            </div>
        </div>
      ";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 39
            echo "          <h2>";
            echo twig_escape_filter($this->env, ($context["noPostsMessage"] ?? null), "html", null, true);
            echo "</h2>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 41
        echo "    </div>
    ";
        // line 42
        if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "lastPage", [], "any", false, false, false, 42) > 1)) {
            // line 43
            echo "        <ul class=\"pagination\">
            ";
            // line 44
            if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 44) > 1)) {
                // line 45
                echo "                <li><a href=\"?page=";
                echo twig_escape_filter($this->env, (twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 45) - 1), "html", null, true);
                echo "\">&larr;</a></li>
            ";
            }
            // line 47
            echo "
            ";
            // line 48
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "lastPage", [], "any", false, false, false, 48)));
            foreach ($context['_seq'] as $context["_key"] => $context["page"]) {
                // line 49
                echo "                <li class=\"";
                echo (((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 49) == $context["page"])) ? ("active") : (null));
                echo "\">
                    <a href=\"?page=";
                // line 50
                echo twig_escape_filter($this->env, $context["page"], "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, $context["page"], "html", null, true);
                echo "</a>
                </li>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['page'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 53
            echo "
            ";
            // line 54
            if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "lastPage", [], "any", false, false, false, 54) > twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 54))) {
                // line 55
                echo "                <li><a href=\"?page=";
                echo twig_escape_filter($this->env, (twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 55) - 1), "html", null, true);
                echo "\">&rarr;</a></li>
            ";
            }
            // line 57
            echo "        </ul>
    ";
        }
        // line 59
        echo "</div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/latest-blog.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  219 => 59,  215 => 57,  209 => 55,  207 => 54,  204 => 53,  193 => 50,  188 => 49,  184 => 48,  181 => 47,  175 => 45,  173 => 44,  170 => 43,  168 => 42,  165 => 41,  156 => 39,  145 => 33,  137 => 29,  123 => 28,  116 => 27,  98 => 26,  94 => 25,  86 => 22,  81 => 19,  68 => 17,  64 => 16,  59 => 13,  54 => 12,  46 => 7,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set posts = blogPosts.posts %}
<div class=\"container\">
    <div class=\"row\">
        <div class=\"col-md-12\">
            <div class=\"heading-section\" id=\"blog-post\">
                <h2>Postingan Terbaru</h2>
                <img src=\"{{ 'assets/images/under-heading.png'|theme }}\" alt=\"\" >
            </div>
        </div>
    </div>
    <div class=\"row\">
      {% for post in posts %}
        <div class=\"col-md-4 col-sm-6\">
            <div class=\"blog-post\">
                <div class=\"blog-thumb\">
                    {% for image in post.featured_images %}
                      <img data-src=\"{{ image.filename }}\" src=\"{{ image.thumb(400,250,'crop') }}\" alt=\"{{ image.description }}\">
                    {% endfor %}
                </div>
                <div class=\"blog-content\">
                    <div class=\"content-show\">
                        <h4><a href=\"/single-post/{{ post.slug }}\">{{ post.title }}</a></h4>
                        <span>
                          Posted
                          {% if post.categories.count %} in {% endif %}
                          {% for category in post.categories %}
                              <i style=\"color:#FFF;\">{{ category.name }}</i> {% if not loop.last %}, {% endif %}
                          {% endfor %}
                          on {{ post.published_at|date('M d, Y') }}
                        </span>
                    </div>
                    <div class=\"content-hide\">
                        <p>{{ post.excerpt }}</p>
                    </div>
                </div>
            </div>
        </div>
      {% else %}
          <h2>{{ noPostsMessage }}</h2>
      {% endfor %}
    </div>
    {% if posts.lastPage > 1 %}
        <ul class=\"pagination\">
            {% if posts.currentPage > 1 %}
                <li><a href=\"?page={{ posts.currentPage-1 }}\">&larr;</a></li>
            {% endif %}

            {% for page in 1..posts.lastPage %}
                <li class=\"{{ posts.currentPage == page ? 'active' : null }}\">
                    <a href=\"?page={{ page }}\">{{ page }}</a>
                </li>
            {% endfor %}

            {% if posts.lastPage > posts.currentPage %}
                <li><a href=\"?page={{ posts.currentPage-1 }}\">&rarr;</a></li>
            {% endif %}
        </ul>
    {% endif %}
</div>", "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/latest-blog.htm", "");
    }
}
