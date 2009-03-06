#START:params
params => {
  :blog =>
  {:title => "My First Blog",
    :body => "blah blah blah"
    },
    :commit => "Create",
    :action => "create",
    :controller => "blogs"
}
#END:params

#START:create
class BlogsController < ApplicationController
  def create
    @blog = Blog.new(params[:blog])

    respond_to do |format|
      if @blog.save
        flash[:notice] = 'Blog was successfully created.'
        format.html { redirect_to(@blog) }
      else
        format.html { render :action => "new" }
      end
    end
end
#END:create