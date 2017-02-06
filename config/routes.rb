Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "coaching#ask"

  get "answer" => "coaching#answer"

  get "ask" => "coaching#ask"

end
