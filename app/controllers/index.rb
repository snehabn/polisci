get '/' do
@candidates = Candidate.all
@local_candidates = LocalCandidate.all
  erb :index
end
