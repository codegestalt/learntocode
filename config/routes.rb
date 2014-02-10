Learntocode::Application.routes.draw do
  root :to => "seiten/pages#show"
  get "/sitemap.:format", to: "pages#sitemap"
  seiten_resources
end
