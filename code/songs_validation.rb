class Song < ActiveRecord::Base

  validates_presence_of     :title
  validates_numericality_of :duration
  validates_format_of       :duration,
                            :with => /\d\d:\d\d:\d\d/
end