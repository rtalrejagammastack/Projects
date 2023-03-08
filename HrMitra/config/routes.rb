Rails.application.routes.draw do
  root 'employees#index'
  
  resources :employees
  resources :documents
  
  get 'employee/:id/document' => 'employees#document', as: 'employee_document'
  
end