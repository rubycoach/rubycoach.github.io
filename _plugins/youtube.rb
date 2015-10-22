class YouTube < Liquid::Tag
  def initialize(name, params, tokens)
    @id, @width, @height = params.split

    super
  end

  def render(context)
    "<iframe width=\"#{@width || 720}\" height=\"#{@height || 405}\"
        allowfullscreen=\"allowfullscreen\"
        src=\"http://www.youtube.com/embed/#{@id}?color=white&theme=light\"> </iframe>"
  end

  Liquid::Template.register_tag "youtube", self
end
