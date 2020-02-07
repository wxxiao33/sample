namespace :movies do
  desc "Seeds genres"
  task seed_genres: :environment do
    Genre.create!([{
      name: "Action"
    },
    {
      name: "Sci-Fi"
    },
    {
      name: "Adventure"
    }])
    
    p "Created #{Genre.count} genres"
  end
end
