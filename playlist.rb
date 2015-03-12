class Playlist
  attr_reader :songs, :now_playing


  def initialize
    @songs = []
    @now_playing = nil
  end

  def empty?
    if @songs.length == 0
      true
    elsif @songs.length > 0
      false
    end
  end

  def add_song(song)
    @songs << (song)
  end

  def song_names
    titles = []
    @songs.each do |song|
      titles << song.title
    end
    titles
  end

  def remove_song(song)
    @songs.delete(song)
  end

  def total_length
    sum_of_lengths = []
    @songs.each do |song|
      sum_of_lengths << song.length
    end
    sum_of_lengths.inject{|sum,x| sum + x }
  end

  def swap(first_song, second_song)
    first_song_index = @songs.index(first_song)
    second_song_index = @songs.index(second_song)
    @songs[first_song_index], @songs[second_song_index] = @songs[second_song_index], @songs[first_song_index]
  end

  def play
    @now_playing = @songs[0]
  end

  def next
    next_song_index = @songs.index(@now_playing) + 1
    @now_playing = @songs[next_song_index]
  end



end
