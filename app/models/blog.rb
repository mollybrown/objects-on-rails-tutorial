class Blog

  attr_reader :entries
  attr_writer :post_source

  def initialize
    @entries = []
  end

  def title
    "Watching Paint Dry"
  end

  def subtitle
    "The trusted source for drying paint news & opinion"
  end

  def new_post
    post_source.call.tap do |post|
      post.blog = self
    end
  end

  private
    # unlike #method, #public_method respects public/private boundaries and
    # will not generate a Method object for a private method.
    def post_source
      @post_source ||= Post.public_method(:new)
    end

end
