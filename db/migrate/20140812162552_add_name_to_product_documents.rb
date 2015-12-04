class AddNameToProductDocuments < ActiveRecord::Migration
  def change
    add_column :spree_product_documents, :name, :string
  end
end
