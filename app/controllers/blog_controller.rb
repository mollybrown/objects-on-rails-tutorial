class BlogController < ApplicationController

  def index
    @blog = Blog.new

    post1 = @blog.new_post(title: "Paint just applied.",
                           body: "It’s a lovely orangey-purple!"
                           ).publish

    post2 = @blog.new_post(title: "Still wet",
                           body: "Paint is still quite wet. No bubbling yet!"
                           ).publish
  end

end
