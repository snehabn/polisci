get '/' do
VoteSmart.api_key = ENV['SECRET_KEY']
@candidates = VoteSmart::Candidate.get_by_zip(94117)['candidateList']['candidate']
  erb :index
end
