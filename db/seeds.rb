Candidate.delete_all
LocalCandidate.delete_all

VoteSmart.api_key = ENV['SECRET_KEY']

candidates = VoteSmart::Candidate.get_by_zip(94117)['candidateList']['candidate']
local_candidates = VoteSmart::Local.request("Local.getOfficials", "localId" => "213")['candidateList']['candidate']

local_candidates.each do |local_candidate|
  LocalCandidate.create(local_candidate: local_candidate)
end

candidates.each do |candidate|
  Candidate.create(candidate: candidate)
  votes = VoteSmart::Vote.request("Votes.getByOfficial", "candidateId" => candidate["candidateId"])
  votes.each do |vote|
    Vote.create(vote: vote)
  end
end


