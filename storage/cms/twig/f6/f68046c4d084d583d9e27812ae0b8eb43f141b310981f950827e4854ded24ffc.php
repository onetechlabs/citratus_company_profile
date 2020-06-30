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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/pages/blog.htm */
class __TwigTemplate_1b1b6dd5520bb04a8eea00d0d803f23968545770afa1c91b79a41948d294bbcb extends \Twig\Template
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
        echo "
<div class=\"post-list\">
    ";
        // line 4
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
            // line 5
            echo "            <h2>";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "title", [], "any", false, false, false, 5), "html", null, true);
            echo "</h2>

            <p class=\"info\">
                Posted
                ";
            // line 9
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["post"], "categories", [], "any", false, false, false, 9), "count", [], "any", false, false, false, 9)) {
                echo " in ";
            }
            // line 10
            echo "                ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["post"], "categories", [], "any", false, false, false, 10));
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
                // line 11
                echo "                    <a href=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", [], "any", false, false, false, 11), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 11), "html", null, true);
                echo "</a>";
                if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 11)) {
                    echo ", ";
                }
                // line 12
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
            // line 13
            echo "                on ";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "published_at", [], "any", false, false, false, 13), "M d, Y"), "html", null, true);
            echo "
            </p>
            <p class=\"excerpt\">";
            // line 15
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "summary", [], "any", false, false, false, 15), "html", null, true);
            echo "</p>
            <ul class=\"actions\">
                <li><a href=\"";
            // line 17
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["post"], "url", [], "any", false, false, false, 17), "html", null, true);
            echo "\" class=\"button\">Read more...</a></li>
            </ul>
            ";
            // line 19
            if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 19)) {
                // line 20
                echo "                <hr>
            ";
            }
            // line 22
            echo "
    ";
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
            // line 24
            echo "        <h2>";
            echo twig_escape_filter($this->env, ($context["noPostsMessage"] ?? null), "html", null, true);
            echo "</h2>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['post'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 26
        echo "</div>

";
        // line 28
        if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "lastPage", [], "any", false, false, false, 28) > 1)) {
            // line 29
            echo "    <ul class=\"pagination\">
        ";
            // line 30
            if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 30) > 1)) {
                // line 31
                echo "            <li><a href=\"";
                echo $this->extensions['Cms\Twig\Extension']->pageFilter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 31), "baseFileName", [], "any", false, false, false, 31), [($context["pageParam"] ?? null) => (twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 31) - 1)]);
                echo "\">&larr; Prev</a></li>
        ";
            }
            // line 33
            echo "
        ";
            // line 34
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "lastPage", [], "any", false, false, false, 34)));
            foreach ($context['_seq'] as $context["_key"] => $context["page"]) {
                // line 35
                echo "            <li class=\"";
                echo (((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 35) == $context["page"])) ? ("active") : (null));
                echo "\">
                <a href=\"";
                // line 36
                echo $this->extensions['Cms\Twig\Extension']->pageFilter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 36), "baseFileName", [], "any", false, false, false, 36), [($context["pageParam"] ?? null) => $context["page"]]);
                echo "\">";
                echo twig_escape_filter($this->env, $context["page"], "html", null, true);
                echo "</a>
            </li>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['page'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 39
            echo "
        ";
            // line 40
            if ((twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "lastPage", [], "any", false, false, false, 40) > twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 40))) {
                // line 41
                echo "            <li><a href=\"";
                echo $this->extensions['Cms\Twig\Extension']->pageFilter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 41), "baseFileName", [], "any", false, false, false, 41), [($context["pageParam"] ?? null) => (twig_get_attribute($this->env, $this->source, ($context["posts"] ?? null), "currentPage", [], "any", false, false, false, 41) + 1)]);
                echo "\">Next &rarr;</a></li>
        ";
            }
            // line 43
            echo "    </ul>
";
        }
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/pages/blog.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  210 => 43,  204 => 41,  202 => 40,  199 => 39,  188 => 36,  183 => 35,  179 => 34,  176 => 33,  170 => 31,  168 => 30,  165 => 29,  163 => 28,  159 => 26,  150 => 24,  136 => 22,  132 => 20,  130 => 19,  125 => 17,  120 => 15,  114 => 13,  100 => 12,  91 => 11,  73 => 10,  69 => 9,  61 => 5,  43 => 4,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set posts = blogPosts.posts %}

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
</div>

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
{% endif %}", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/pages/blog.htm", "");
    }
}
