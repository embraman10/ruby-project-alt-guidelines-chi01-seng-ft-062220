class VideoGame < ActiveRecord::Base
    belongs_to :developers
    belongs_to :customers


end