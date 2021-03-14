namespace :dev do
  desc "Inserting kind"
  task kind: :environment do
      p "Inserting kinds..."
      Kind.create!(
        description: 'Filme'
      )

      Kind.create!(
        description: 'Serie'
      )

      Kind.create!(
        description: 'Esporte'
      )

      p "Registered  kinds!"
  end

  task medium: :environment do 
      p "Inserting Media..."

      Medium.create!(
        description: 'Tv'
      )

      Medium.create!(
        description: 'PrimeVideo'
      )
    
      Medium.create!(
        description: 'Netflix'
      )

      p "Registered Medium!"
  end  

  
  task channel: :environment do 
    p "Inserting Channel..."

    Channel.create!(
      description: 'TNT Sports'
    )

    Channel.create!(
      description: 'HBO'
    )
  
    Channel.create!(
      description: 'Globo'
    )

    p "Registered Channel!"
  end  

end
