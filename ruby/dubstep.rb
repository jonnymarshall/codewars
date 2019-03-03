require 'byebug'

def song_decoder(song, count = 0, original_song = [])
  # TODO
  song_letters = song.split(//)
  total_length = song_letters.length
  until count == total_length
#     p "the count is #{count}"
    if count <= total_length - 3
      if song_letters[count] + song_letters[count + 1] + song_letters[count + 2] == "WUB"
#         p "WUB DETECTED"
        original_song << " " if original_song.last != " "
        count += 3
      else
#         p "NO WUB DETECTED.. adding to original_song and printing..."
        original_song << song_letters[count]
        count += 1
      end
    else
#       p "Not enough chars for a WUB, adding remaining letters to original_song and printing..."
      original_song << song_letters[count]
      count += 1
    end
  end
  byebug
  original_song.delete(0) if original_song[0] == " "
  original_song.delete(-1) if original_song[-1] == " "
  p original_song.join
end
