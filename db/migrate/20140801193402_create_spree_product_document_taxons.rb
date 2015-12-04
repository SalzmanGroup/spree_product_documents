class CreateSpreeProductDocumentTaxons < ActiveRecord::Migration
  def change
    create_table :spree_product_document_taxons do |t|
      t.references :taxon, index: true
      t.references :product_document, index: true

      t.timestamps
    end
  end
end
