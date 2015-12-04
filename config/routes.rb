Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :product_documents do
      member do
        put :add_taxon
        delete :remove_taxon
        get :taxons

        put :add_product
        delete :remove_product
        get :products
      end
    end
  end
end

Spree::Core::Engine.append_routes do
  namespace :admin do
    resources :products do
      member do
        get :product_documents
      end
    end

    resources :orders do
      member do
        get :product_documents
      end
    end
  end
end
