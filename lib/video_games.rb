class VideoGames < ActiveRecord::Base
    belongs_to :developers
    belongs_to :customers


end