Rails.application.routes.draw do
  get 'ann_scole/nom'
  #get 'ann_scole/an:Date'
  # get 'personnel/index'
  # get 'personnel/show'
  # get 'personnel/update'
  # get 'personnel/create'
  # get 'personnel/destroy'
  resources :essais
  #resources :apprenants

  get "api/eleves", to: "eleves#index"
  get "api/eleves/detail/:id", to: "eleves#show"
  get "api/eleves/niveau/:niveau", to: "eleves#get_by_niveau"
  get "api/eleves/classe/:id", to: "eleves#get_by_classe"
  put "api/eleves/:id", to: "eleves#update"
  delete "api/eleves/:id", to: "eleves#destroy"
  post "api/eleves", to: "eleves#create"

  get "api/personnels", to: "personnels#index"
  get "api/personnels/detail/:id", to: "personnels#show"
  put "api/personnels/:id", to: "personnels#update"
  delete "api/personnels/:id", to: "personnels#destroy"
  post "api/personnels", to: "personnels#create"

  get "api/classes/:annee_scolaire", to: "classes#index"
  get "api/classes/detail/:id", to: "classes#show"
  put "api/classes/:id", to: "classes#update"
  delete "api/classes/:id", to: "classes#destroy"
  post "api/classes", to: "classes#create"

  get "api/ecoles", to: "ecoles#index"
  get "api/ecoles/detail/:id", to: "ecoles#show"
  put "api/ecoles/:id", to: "ecoles#update"
  delete "api/ecoles/:id", to: "ecoles#destroy"
  post "api/ecoles", to: "ecoles#create"

  get "api/enseignements", to: "enseignements#index"
  get "api/enseignements/detail/:id", to: "enseignements#show"
  put "api/enseignements/:id", to: "enseignements#update"
  delete "api/enseignements/:id", to: "enseignements#destroy"
  post "api/enseignements", to: "enseignements#create"

  get "api/lescodes", to: "lescodes#index"
  get "api/lescodes/detail/:id", to: "lescodes#show"
  put "api/lescodes/:id", to: "lescodes#update"
  delete "api/lescodes/:id", to: "lescodes#destroy"
  post "api/lescodes", to: "lescodes#create"

  get "api/configurats", to: "configurats#index"
  get "api/configurats/detail/:id", to: "configurats#show"
  put "api/configurats/:id", to: "configurats#update"
  delete "api/configurats/:id", to: "configurats#destroy"
  post "api/configurats", to: "configurats#create"

  get "api/conseilenseignements", to: "conseilenseignements#index"
  get "api/conseilenseignements/detail/:id", to: "conseilenseignements#show"
  put "api/conseilenseignements/:id", to: "conseilenseignements#update"
  delete "api/conseilenseignements/:id", to: "conseilenseignements#destroy"
  post "api/conseilenseignements", to: "conseilenseignements#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
