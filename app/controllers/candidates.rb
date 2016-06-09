get '/candidates/:id' do
  @candidate = Candidate.find(params[:id])
  erb :'candidates/show'
end
