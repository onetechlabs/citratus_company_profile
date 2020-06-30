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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/pages/blog-category.htm */
class __TwigTemplate_c550ac98cc934c2980420b5dea3def5cd88bed2c8c03d0035a1e1e5cf600e5f7 extends \Twig\Template
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
        echo "<header class=\"major\">
    ";
        // line 2
        if ( !($context["category"] ?? null)) {
            // line 3
            echo "    <h2>Category not found</h2>
    ";
        } else {
            // line 5
            echo "    <h2>";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["category"] ?? null), "name", [], "any", false, false, false, 5), "html", null, true);
            echo "</h2>
    ";
        }
        // line 7
        echo "</header>

";
        // line 9
        $context["posts"] = twig_get_attribute($this->env, $this->source, ($context["blogPosts"] ?? null), "posts", [], "any", false, false, false, 9);
        // line 10
        echo "
<div class=\"post-list\">
    ";
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["posts"] ?? null));
        $context['_iterated'] = false;
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
        foreach ($context['_seq'] as $context["_key"] => $context["post"]) {
            // line 13
            echo "            <h2>";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 13), "html", null, true);
            echo "</h2>

            <p class=\"info\">
                Posted
                ";
            // line 17
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "categories", [], "any", false, false, false, 17), "count", [], "any", false, false, false, 17)) {
                echo " in ";
            }
            // line 18
            echo "                ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["post"], "categories", [], "any", false, false, false, 18));
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
                // line 19
                echo "                    <a href=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", [], "any", false, false, false, 19), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 19), "html", null, true);
                echo "</a>";
                if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 19)) {
                    echo ", ";
                }
                // line 20
                echo "                ";
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
            // line 21
            echo "                on ";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "published_at", [], "any", false, false, false, 21), "M d, Y"), "html", null, true);
            echo "
            </p>

            <p class=\"excerpt\">";
            // line 24
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "summary", [], "any", false, false, false, 24), "html", null, true);
            echo "</p>

            <ul class=\"actions\">
                <li><a href=\"";
            // line 27
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 27), "html", null, true);
            echo "\" class=\"button\">Read more...</a></li>
            </ul>
            ";
            // line 29
            if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 29)) {
                // line 30
                echo "            <hr>
            ";
            }
            // line 32
            echo "    ";
            $context['_iterated'] = true;
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        if (!$context['_iterated']) {
            // line 33
            echo "        <h2>";
            echo twig_escape_filter($this->env, ($context["noPostsMessage"] ?? null), "html", null, true);
            echo "</h2>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 35
        echo "</ul>

";
        // line 37
        if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "lastPage", [], "any", false, false, false, 37) > 1)) {
            // line 38
            echo "    <ul class=\"pagination\">
        ";
            // line 39
            if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 39) > 1)) {
                // line 40
                echo "            <li><a href=\"";
                echo $this->extensions['Cms\Twig\Extension']->pageFilter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 40), "baseFileName", [], "any", false, false, false, 40), [($context["pageParam"] ?? null) => (twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 40) - 1)]);
                echo "\">&larr; Prev</a></li>
        ";
            }
            // line 42
            echo "
        ";
            // line 43
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "lastPage", [], "any", false, false, false, 43)));
            foreach ($context['_seq'] as $context["_key"] => $context["page"]) {
                // line 44
                echo "            <li class=\"";
                echo (((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 44) == $context["page"])) ? ("active") : (null));
                echo "\">
                <a href=\"";
                // line 45
                echo $this->extensions['Cms\Twig\Extension']->pageFilter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 45), "baseFileName", [], "any", false, false, false, 45), [($context["pageParam"] ?? null) => $context["page"]]);
                echo "\">";
                echo twig_escape_filter($this->env, $context["page"], "html", null, true);
                echo "</a>
            </li>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['page'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 48
            echo "
        ";
            // line 49
            if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "lastPage", [], "any", false, false, false, 49) > twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 49))) {
                // line 50
                echo "            <li><a href=\"";
                echo $this->extensions['Cms\Twig\Extension']->pageFilter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 50), "baseFileName", [], "any", false, false, false, 50), [($context["pageParam"] ?? null) => (twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 50) + 1)]);
                echo "\">Next &rarr;</a></li>
        ";
            }
            // line 52
            echo "    </ul>
";
        }
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/pages/blog-category.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  230 => 52,  224 => 50,  222 => 49,  219 => 48,  208 => 45,  203 => 44,  199 => 43,  196 => 42,  190 => 40,  188 => 39,  185 => 38,  183 => 37,  179 => 35,  170 => 33,  157 => 32,  153 => 30,  151 => 29,  146 => 27,  140 => 24,  133 => 21,  119 => 20,  110 => 19,  92 => 18,  88 => 17,  80 => 13,  62 => 12,  58 => 10,  56 => 9,  52 => 7,  46 => 5,  42 => 3,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<header class=\"major\">
    {% if not category %}
    <h2>Category not found</h2>
    {% else %}
    <h2>{{ category.name }}</h2>
    {% endif %}
</header>

{% set posts = blogPosts.posts %}

<div class=\"post-list\">
    {% for post in posts %}
            <h2>{{ post.title }}</h2>

            <p class=\"info\">
                Posted
                {% if post.categories.count %} in {% endif %}
                {% for category in post.categories %}
                    <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}
                {% endfor %}
                on {{ post.published_at|date('M d, Y') }}
            </p>

            <p class=\"excerpt\">{{ post.summary }}</p>

            <ul class=\"actions\">
                <li><a href=\"{{ post.url }}\" class=\"button\">Read more...</a></li>
            </ul>
            {% if not loop.last %}
            <hr>
            {% endif %}
    {% else %}
        <h2>{{ noPostsMessage }}</h2>
    {% endfor %}
</ul>

{% if posts.lastPage > 1 %}
    <ul class=\"pagination\">
        {% if posts.currentPage > 1 %}
            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage-1) }) }}\">&larr; Prev</a></li>
        {% endif %}

        {% for page in 1..posts.lastPage %}
            <li class=\"{{ posts.currentPage == page ? 'active' : null }}\">
                <a href=\"{{ this.page.baseFileName|page({ (pageParam): page }) }}\">{{ page }}</a>
            </li>
        {% endfor %}

        {% if posts.lastPage > posts.currentPage %}
            <li><a href=\"{{ this.page.baseFileName|page({ (pageParam): (posts.currentPage+1) }) }}\">Next &rarr;</a></li>
        {% endif %}
    </ul>
{% endif %}", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/pages/blog-category.htm", "");
    }
}
