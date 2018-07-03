Rails.application.routes.draw do
    get "index" => "posts#index"
    get "/" => "home#top"
    get "index/new" =>"posts#new"
    post "index/create" =>"posts#create"
    post "index/vote" => "posts#vote"
    get "index/:id" =>"posts#show"
end
