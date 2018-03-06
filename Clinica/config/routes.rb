Rails.application.routes.draw do

  resources :receitas
  resources :consultas
  resources :medicamentos
  resources :consulta

root "homes#index"

resources :pacientes do
    resources :consultas
end

get "/pacientes/busca" => "pacientes#busca",as: :busca_paciente

resources :receitas
resources :medicamentos 



end
