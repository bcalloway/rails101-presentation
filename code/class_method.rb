class Song < ActiveRecord::Base
end

songs = Song.find(:all)
bono = Artist.new(:name => "Bono")