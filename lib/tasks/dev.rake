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

end
