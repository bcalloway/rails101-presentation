class Songs

  def index
    @songs = Song.find(:all)
  end
  
end