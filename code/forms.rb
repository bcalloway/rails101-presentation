#START:new
<% form_for @blog do |f| -%>
  Title: <%= f.text_field :title %>
  Body: <%= f.text_area :body %>
  <%= form.submit 'Create' %>
<% end -%>
#END:new

#START:create
def create
  @blog = Blog.create(params[:blog])
end
#END:create

#START:edit
<% form_for @blog do |f| -%>
  <%= f.text_field :title %>
  <%= f.text_area :body %>
  <%= form.submit 'Update' %>
<% end -%>
#END:edit

#START:update
def update
  @blog = Blog.find(params[:id])
  @blog.upate_attributes(params[:event])
end
#END:update

#START:destroy
def destroy
  @blog = Blog.find(params[:id])
  @blog.destroy
end
#END:destroy