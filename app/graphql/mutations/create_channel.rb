module Mutations
    class Mutations::CreateChannel < Mutations::BaseMutation
        argument :description, String, required: true

        type Types::ChannelType

        def resolve(args)
           Channel.create!(description: args[:description])
        end  
        
    end    
        
end
