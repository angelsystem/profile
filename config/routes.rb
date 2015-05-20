Rails.application.routes.draw do

  scope "(:locale)", locale: /en|es/ do
    root 'static_pages#home'
    resources :contacts, only: :create
  end

end
