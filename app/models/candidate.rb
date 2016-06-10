class Candidate < ActiveRecord::Base
  has_many :votes
  has_one :candidate_bio
end
