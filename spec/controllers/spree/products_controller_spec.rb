require 'spec_helper'

describe Spree::ProductsController do
  describe "GET show" do
    let(:product) { create(:product) }
    let(:taxon) { create(:taxon) }
    let(:pd1) { create(:product_document) }
    let(:pd2) { create(:product_document) }

    before do
      product.taxons << taxon
      pd1.taxons << taxon
      pd2.taxons << taxon
      pd1.products << product
    end

    it "sets the correct product documents" do
      spree_get :show, { id: product.slug }
      expect(assigns(:product_documents)).to eql([pd1,pd2])
    end
  end
end
