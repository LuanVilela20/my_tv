Rails.application.routes.draw do

  if  Rails.env.development? 
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end 

  post "/graphql", to: "graphql#execute"
  resources :attractions
  resources :media
  resources :channels
  resources :kinds, :default => {format: :json}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# Rails.application.routes.draw do
#   mount GraphQL::Rails::Engine, at: "/graphql", graphql_path: "/graphql" if Rails.env.development?
#   post "/graphql", to: "graphql#execute"
# end