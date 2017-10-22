class Post
  attr_accessor :blog, :title, :body

  def initialize(attrs={})
    attrs.each do |k,v|
      send("#{k}=", v)
    end
  end

  # Prefer "publish" over "save" since it reflects appropriate domain language.
  # Appropriate domain language -> less renaming things as features are added.
  def publish
    blog.add_entry(self)
  end
end
