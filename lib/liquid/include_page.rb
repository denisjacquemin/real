class IncludePage < Liquid::Block
  def initialize(tag_name, permalink, tokens)
    super
  end
  
  def render(context)
    @permalink = super.strip
    @page = Admin::Component.find_by_permalink(@permalink)
    if @page.nil?
      return "No page found for #{@permalink} link"
    else
      @snippet = Liquid::Template.parse(@page.content).render('page' => @page).html_safe
    end
  end
end