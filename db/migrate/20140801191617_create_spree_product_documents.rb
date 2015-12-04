class CreateSpreeProductDocuments < ActiveRecord::Migration
  def up
    create_table :spree_product_documents do |t|
      t.has_attached_file :file
      t.timestamps
    end
  end
end
