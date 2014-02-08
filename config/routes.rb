Learntocode::Application.routes.draw do
  root :to => "seiten/pages#show"
  seiten_resources
end
