get '/candidates/:id' do
  #
  erb :'candidates/show'
end

get '/candidates/:id/voting_stats' do
  @candidate = Candidate.find(params[:id])
  erb :'voting_stats/show'
end
