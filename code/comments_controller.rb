#START:new
def new
  @blog = Blog.find(params[:blog_id])
  @comment = Comment.new

  respond_to do |format|
    format.html # new.html.erb
    format.xml  { render :xml => @comment }
  end
end
#END:new

#START:create
def create
  @blog = Blog.find(params[:blog_id])
  @comment = @blog.comments.build(params[:comment])

  respond_to do |format|
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
      format.html { redirect_to(@comment) }
    else
      format.html { render :action => "new" }
    end
  end
end
#END:create