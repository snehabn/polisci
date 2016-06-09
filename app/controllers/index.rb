get '/' do
VoteSmart.api_key = ENV['SECRET_KEY']
# @candidates = VoteSmart::Candidate.get_by_zip(94117)['candidateList']['candidate']
# @local_officials = VoteSmart::Local.request("Local.getOfficials", "localId" => "213")['candidateList']['candidate']
@candidates = Candidate.candidates
@local_candidates = Candidate.local_candidates
  erb :index
end
