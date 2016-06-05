class SupportingOrg < ActiveRecord::Base
  has_many :politicians, through: :politicians_supporting_orgs, foreign_key: "politician_id"
end
