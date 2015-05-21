class Course < ActiveRecord::Base
    belongs_to :partdate
    belongs_to :partweek
end
