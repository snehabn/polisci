class Politician < ActiveRecord::Base
  has_many :histories, through: :histories_politicians, foreign_key: "politician_id"
  has_many :supporting_orgs, through: :politicians_supporting_orgs, foreign_key: "supporting_org_id"
  has_many :votes
end
