class Blog < ActiveRecord::Base
  def self.find_future_blogs
    find(:all,
         :order => "updated_at",
         :conditions => ['updated_at >= ?', Time.now])
  end
end