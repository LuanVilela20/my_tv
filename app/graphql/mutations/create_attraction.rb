module Mutations
    class Mutations::CreateAttraction < Mutations::BaseMutation

        argument :attractionName, String, required: true
        argument :channel, ID, required: true
        argument :description, String, required: true
        argument :kind, ID, required: true
        argument :medium, ID, required: true
        argument :transmissionDate, GraphQL::Types::ISO8601DateTime, required: true

        type Types::AttractionType

        def resolve(args)
            channel = Channel.find(args[:channel])
            kind = Kind.find(args[:kind])
            medium = Medium.find(args[:medium])

            Attraction.create!(attraction_name: args[:attractionName], 
                        channel: channel, 
                        description: args[:description], 
                        kind: kind, medium: medium, 
                        transmission_date: args[:transmissionDate])

        end     

        
    end

end    