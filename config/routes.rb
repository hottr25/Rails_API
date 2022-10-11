Rails.application.routes.draw do
  namespace 'api' do
    resources :term
  end
end
