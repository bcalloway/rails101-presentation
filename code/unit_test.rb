def test_recent
  Blog.delete_all
  
  b= Blog.new(:title => "My Test blog",
              :body => "blah blah",
              :created_at => "2008-05-10 17:31:51",
              :updated_at => "2008-05-10 17:31:51")
  assert b.save, b.errors.full_messages
  assert_equal(1, Blog.recent_blogs.size)
end