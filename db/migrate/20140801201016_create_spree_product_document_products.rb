class CreateSpreeProductDocumentProducts < ActiveRecord::Migration
  def change
    create_table :spree_product_document_products do |t|
      t.references :product, index: true
      t.references :product_document, index: true

      t.timestamps
    end
  end
end
