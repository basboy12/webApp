module ApplicationHelper
  def gulp_asset_path(path)
    path = REV_MANIFEST[path] if defined?(REV_MANIFEST)
    "/assets/#{path}"
  end
  
  def markdown(content)
  	renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
  	options = {
  		autolink: true,
  		no_intra_emphasis: true,
  		disable_indented_code_blocks: true,
  		fenced_code_blocks: true,
  		lax_html_blocks: true,
  		strikethrough: true,
  		superscript: true
  	}
  	Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end
end