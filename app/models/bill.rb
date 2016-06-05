class Bill < ActiveRecord::Base
  belongs_to :issue
  has_many :votes
end
