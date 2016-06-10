Candidate.delete_all
LocalCandidate.delete_all

VoteSmart.api_key = ENV['SECRET_KEY']

candidates = VoteSmart::Candidate.get_by_zip(94117)['candidateList']['candidate']
local_candidates = VoteSmart::Local.request("Local.getOfficials", "localId" => "213")['candidateList']['candidate']

local_candidates.each do |local_candidate|
  LocalCandidate.create(local_candidate: local_candidate)
end

candidates.each do |candidate|
  c = Candidate.create(candidate: candidate)
  votes = VoteSmart::Vote.request("Votes.getByOfficial", "candidateId" => candidate["candidateId"])

  votes.each do |vote|
    Vote.create(vote: vote, candidate_id: c.id)
  end

  # CampaignContact.create( address: VoteSmart::Address.get_campaign(candidate["candidateId"]),
  #                         web: VoteSmart::Address.get_campaign_web_address(candidate["candidateId"]),
  #                         candidate_id: c.id)

  # CandidateBio.create(  candidate_bio: VoteSmart::CandidateBio.request("CandidateBio.getDetailedBio", "candidateId" => candidate["candidateId"]),
  #                       candidate_id: c.id)
end


