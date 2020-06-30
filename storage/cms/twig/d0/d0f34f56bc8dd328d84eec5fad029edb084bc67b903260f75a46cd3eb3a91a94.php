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

/* /home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/pages/blog-post.htm */
class __TwigTemplate_ed50a6f480bc6486c9d0cdd60ca7468949316b59abef39f167186d4c86cbbb37 extends \Twig\Template
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
            echo "<h2>";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "title", [], "any", false, false, false, 2), "html", null, true);
            echo "</h2>

";
            // line 4
            $context["post"] = twig_get_attribute($this->env, $this->source, ($context["blogPost"] ?? null), "post", [], "any", false, false, false, 4);
            // line 5
            echo "
<div class=\"content\">";
            // line 6
            echo twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "content_html", [], "any", false, false, false, 6);
            echo "</div>

";
            // line 8
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "featured_images", [], "any", false, false, false, 8), "count", [], "any", false, false, false, 8)) {
                // line 9
                echo "    <div class=\"featured-images text-center\">
        ";
                // line 10
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "featured_images", [], "any", false, false, false, 10));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 11
                    echo "            <p>
                <img
                    data-src=\"";
                    // line 13
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "filename", [], "any", false, false, false, 13), "html", null, true);
                    echo "\"
                    src=\"";
                    // line 14
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "path", [], "any", false, false, false, 14), "html", null, true);
                    echo "\"
                    alt=\"";
                    // line 15
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["image"], "description", [], "any", false, false, false, 15), "html", null, true);
                    echo "\"
                    style=\"max-width: 100%\" />
            </p>
        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 19
                echo "    </div>
";
            }
            // line 21
            echo "
<p class=\"info\">
    Posted
    ";
            // line 24
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "categories", [], "any", false, false, false, 24), "count", [], "any", false, false, false, 24)) {
                echo " in
        ";
                // line 25
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "categories", [], "any", false, false, false, 25));
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
                    // line 26
                    echo "            <a href=\"";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "url", [], "any", false, false, false, 26), "html", null, true);
                    echo "\">";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 26), "html", null, true);
                    echo "</a>";
                    if ( !twig_get_attribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 26)) {
                        echo ", ";
                    }
                    // line 27
                    echo "        ";
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
                // line 28
                echo "    ";
            }
            // line 29
            echo "    on ";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "published_at", [], "any", false, false, false, 29), "M d, Y"), "html", null, true);
            echo "
</p>

";
        } else {
            // line 33
            echo "<h2>Post not found</h2>
";
        }
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/pages/blog-post.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  150 => 33,  142 => 29,  139 => 28,  125 => 27,  116 => 26,  99 => 25,  95 => 24,  90 => 21,  86 => 19,  76 => 15,  72 => 14,  68 => 13,  64 => 11,  60 => 10,  57 => 9,  55 => 8,  50 => 6,  47 => 5,  45 => 4,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% if post %}
<h2>{{ post.title }}</h2>

{% set post = blogPost.post %}

<div class=\"content\">{{ post.content_html|raw }}</div>

{% if post.featured_images.count %}
    <div class=\"featured-images text-center\">
        {% for image in post.featured_images %}
            <p>
                <img
                    data-src=\"{{ image.filename }}\"
                    src=\"{{ image.path }}\"
                    alt=\"{{ image.description }}\"
                    style=\"max-width: 100%\" />
            </p>
        {% endfor %}
    </div>
{% endif %}

<p class=\"info\">
    Posted
    {% if post.categories.count %} in
        {% for category in post.categories %}
            <a href=\"{{ category.url }}\">{{ category.name }}</a>{% if not loop.last %}, {% endif %}
        {% endfor %}
    {% endif %}
    on {{ post.published_at|date('M d, Y') }}
</p>

{% else %}
<h2>Post not found</h2>
{% endif %}", "/home/onetechlabs/MyProjectsOnLinux/PHPProjects/citratus_company_profile/themes/zwiebl-zwiebl_stellar/pages/blog-post.htm", "");
    }
}
