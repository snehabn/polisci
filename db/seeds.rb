
VoteSmart.api_key = ENV['SECRET_KEY']
Candidate.create('candidate' => VoteSmart::Candidate.get_by_zip(94117)['candidateList']['candidate'], 'local_candidate' =>  VoteSmart::Local.request("Local.getOfficials", "localId" => "213")['candidateList']['candidate'])
