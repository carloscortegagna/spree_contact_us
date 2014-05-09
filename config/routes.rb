Spree::Core::Engine.add_routes do
  resources :contacts, controller: 'contact_us/contacts', only: [:new, :create]
  get 'contact' => 'contact_us/contacts#new', as: :contact_us
  get 'contact/success' => 'contact_us/contacts#success', as: :contact_success
end
