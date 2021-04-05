module Mutations
    class Mutations::CreateKind < Mutations::BaseMutation
        argument :description, String, required: true
        
        type Types::KindType

        def resolve(args)
            Kind.create!(description: args[:description]) 
        end    
    end
    
end