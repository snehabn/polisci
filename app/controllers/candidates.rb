get '/candidates/:id' do
  @candidate = Candidate.find(params[:id])
  erb :'candidates/show'
end

get '/candidates/:id/voting_stats' do
  @candidate = Candidate.find(params[:id])
  erb :'voting_stats/show'
end
