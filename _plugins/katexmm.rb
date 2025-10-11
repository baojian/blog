# _plugins/katexmm.rb
# Minimal replacement for `{% katexmm %}...{% endkatexmm %}`
# Usage:
#   {% katexmm %} E = mc^2 {% endkatexmm %}         -> display math
#   {% katexmm inline %} E = mc^2 {% endkatexmm %}  -> inline math
#
# We output MathJax-friendly delimiters; KaTeX also works if you include it.

module Jekyll
  class KatexmmBlock < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
      @inline = markup.to_s.strip == 'inline'
    end

    def render(context)
      content = super.to_s.strip
      if @inline
        %Q{<span class="math">\\( #{content} \\)</span>}
      else
        %Q{<div class="math-block">\\[ #{content} \\]</div>}
      end
    end
  end
end

Liquid::Template.register_tag('katexmm', Jekyll::KatexmmBlock)
