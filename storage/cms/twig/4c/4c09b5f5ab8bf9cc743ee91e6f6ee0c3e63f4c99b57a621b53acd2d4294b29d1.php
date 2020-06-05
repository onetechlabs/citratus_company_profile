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

/* /home/onetech2/citratus.onetechlabsindonesia.xyz/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm */
class __TwigTemplate_383c4d2812f11407b72c912e20c357c452a13f0dadcb770e9e7a69454af1fe43 extends \Twig\Template
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
        $context["testi"] = ($context["testimoni"] ?? null);
        // line 2
        echo "<section id=\"two\" class=\"main\">
    <header class=\"major\">
        <h2>Apa yang dikatakan pelanggan kami ?</h2>
    </header>
    <div id=\"testimonials\" class=\"container\">
        <ul id=\"testi_slider\">
            ";
        // line 8
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["testi"] ?? null), "testimonials", [], "any", false, false, false, 8));
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
        foreach ($context['_seq'] as $context["_key"] => $context["posttesti"]) {
            // line 9
            echo "                ";
            if ((twig_get_attribute($this->env, $this->source, $context["posttesti"], "is_active", [], "any", false, false, false, 9) == 1)) {
                // line 10
                echo "                    ";
                if ((twig_get_attribute($this->env, $this->source, $context["loop"], "index", [], "any", false, false, false, 10) == 1)) {
                    // line 11
                    echo "                        <li class='active firstItem'>
                            <div class=\"testmo\" >";
                    // line 12
                    echo call_user_func_array($this->env->getFunction('html_strip')->getCallable(), ["strip", twig_get_attribute($this->env, $this->source, $context["posttesti"], "content", [], "any", false, false, false, 12)]);
                    echo "</div>
                            <div class=\"told_by\">";
                    // line 13
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["posttesti"], "name", [], "any", false, false, false, 13), "html", null, true);
                    echo ", ";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["posttesti"], "title", [], "any", false, false, false, 13), "html", null, true);
                    echo "</div>
                        </li> 
                    ";
                } else {
                    // line 16
                    echo "                        <li>
                            <div class=\"testmo\" >";
                    // line 17
                    echo call_user_func_array($this->env->getFunction('html_strip')->getCallable(), ["strip", twig_get_attribute($this->env, $this->source, $context["posttesti"], "content", [], "any", false, false, false, 17)]);
                    echo "</div>
                            <div class=\"told_by\">";
                    // line 18
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["posttesti"], "name", [], "any", false, false, false, 18), "html", null, true);
                    echo ", ";
                    echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["posttesti"], "title", [], "any", false, false, false, 18), "html", null, true);
                    echo "</div>
                        </li> 
                    ";
                }
                // line 21
                echo "                ";
            }
            // line 22
            echo "            ";
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
            // line 23
            echo "                <h2>No Testimonies</h2>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['posttesti'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 25
        echo "        </ul>
    </div>
</section>";
    }

    public function getTemplateName()
    {
        return "/home/onetech2/citratus.onetechlabsindonesia.xyz/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  124 => 25,  117 => 23,  104 => 22,  101 => 21,  93 => 18,  89 => 17,  86 => 16,  78 => 13,  74 => 12,  71 => 11,  68 => 10,  65 => 9,  47 => 8,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set testi = testimoni %}
<section id=\"two\" class=\"main\">
    <header class=\"major\">
        <h2>Apa yang dikatakan pelanggan kami ?</h2>
    </header>
    <div id=\"testimonials\" class=\"container\">
        <ul id=\"testi_slider\">
            {% for posttesti in testi.testimonials %}
                {% if posttesti.is_active==1 %}
                    {% if loop.index==1 %}
                        <li class='active firstItem'>
                            <div class=\"testmo\" >{{html_strip(posttesti.content)}}</div>
                            <div class=\"told_by\">{{posttesti.name}}, {{posttesti.title}}</div>
                        </li> 
                    {% else %}
                        <li>
                            <div class=\"testmo\" >{{html_strip(posttesti.content)}}</div>
                            <div class=\"told_by\">{{posttesti.name}}, {{posttesti.title}}</div>
                        </li> 
                    {% endif %}
                {% endif %}
            {% else %}
                <h2>No Testimonies</h2>
            {% endfor %}
        </ul>
    </div>
</section>", "/home/onetech2/citratus.onetechlabsindonesia.xyz/themes/zwiebl-zwiebl_stellar/partials/home_page/section_two.htm", "");
    }
}
