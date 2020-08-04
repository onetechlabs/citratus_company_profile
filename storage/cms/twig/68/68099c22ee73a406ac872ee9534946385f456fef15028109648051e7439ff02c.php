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

/* /home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/testimonials.htm */
class __TwigTemplate_44d8de7dbd2f4fcb2a049a7377e3d3e4f9ce231c8a81498baa0b1d3d080569e1 extends \Twig\Template
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
        echo "    <div class=\"row\">
        <div class=\"col-md-8 col-md-offset-2\">
            <div class=\"testimonails-slider\">
                <ul class=\"slides\">
                  ";
        // line 6
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["testi"] ?? null), "testimonials", [], "any", false, false, false, 6));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["posttesti"]) {
            // line 7
            echo "                      ";
            if ((twig_get_attribute($this->env, $this->source, $context["posttesti"], "is_active", [], "any", false, false, false, 7) == 1)) {
                // line 8
                echo "                        <li>
                            <div class=\"testimonails-content\">
                                <p>";
                // line 10
                echo twig_get_attribute($this->env, $this->source, $context["posttesti"], "content", [], "any", false, false, false, 10);
                echo "</p>
                                <h6>";
                // line 11
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["posttesti"], "name", [], "any", false, false, false, 11), "html", null, true);
                echo " - <a href=\"#\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["posttesti"], "title", [], "any", false, false, false, 11), "html", null, true);
                echo "</a></h6>
                            </div>
                        </li>
                    ";
            }
            // line 15
            echo "                ";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 16
            echo "                    <h2>No Testimonies</h2>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['posttesti'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 18
        echo "                </ul>
            </div>
        </div>
    </div>";
    }

    public function getTemplateName()
    {
        return "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/testimonials.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  82 => 18,  75 => 16,  70 => 15,  61 => 11,  57 => 10,  53 => 8,  50 => 7,  45 => 6,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set testi = testimoni %}
    <div class=\"row\">
        <div class=\"col-md-8 col-md-offset-2\">
            <div class=\"testimonails-slider\">
                <ul class=\"slides\">
                  {% for posttesti in testi.testimonials %}
                      {% if posttesti.is_active==1 %}
                        <li>
                            <div class=\"testimonails-content\">
                                <p>{{posttesti.content|raw}}</p>
                                <h6>{{posttesti.name}} - <a href=\"#\">{{posttesti.title}}</a></h6>
                            </div>
                        </li>
                    {% endif %}
                {% else %}
                    <h2>No Testimonies</h2>
                {% endfor %}
                </ul>
            </div>
        </div>
    </div>", "/home/onetechlabs/Public/Programming-Projects/Web/citratus_company_profile/themes/jtherczeg-grill/partials/testimonials.htm", "");
    }
}
