module Mutations
    class Mutations::CreateMedium < Mutations::BaseMutation
        argument :description, String, required: true 

        type Types::MediumType

        def resolve(args)
            Medium.create!(description: args[:description])
        end    
    end
end