require 'spec_helper'

describe Spree::Admin::ProductDocumentsController do
  stub_authorization!

  describe "GET index" do
    subject { spree_get :index }

    it "is a successful request" do
      expect(subject).to be_success
    end
  end

  describe "DELETE remove_taxon" do
    let(:taxon) { create :taxon }
    let(:pd) { create :product_document }
    subject { spree_put :remove_taxon, id: pd.id, permalink: taxon.permalink }

    before do
      pd.taxons << taxon
      subject
    end

    it "removes the product" do
      expect(assigns(:product_document).taxons).to be_empty
    end

    it "responds succssfully" do
      expect(response).to be_success
    end
  end

  describe "DELETE remove_product" do
    let(:product) { create :product }
    let(:pd) { create :product_document }
    subject { spree_put :remove_product, id: pd.id, product_id: product.id }

    before do
      pd.products << product
      subject
    end

    it "removes the taxon" do
      expect(assigns(:product_document).products).to be_empty
    end

    it "responds succssfully" do
      expect(response).to be_success
    end
  end

  describe "GET taxons" do
    let(:taxons) { create_list :taxon, 3 }
    let(:pd) { create :product_document }
    subject { spree_get :taxons, id: pd.id }

    before do
      pd.taxons = taxons
      subject
    end

    it "gets the taxons for a product document" do
      expect(JSON.parse(response.body)).to have(3).items
    end
  end

  describe "GET products" do
    let(:products) { create_list :product, 3 }
    let(:pd) { create :product_document }
    subject { spree_get :products, id: pd.id }

    before do
      pd.products = products
      subject
    end

    it "gets the products for a product document" do
      expect(JSON.parse(response.body)).to have(3).items
    end
  end

  describe "PUT add_taxon" do
    let(:taxon) { create :taxon }
    let(:pd) { create :product_document }
    subject { spree_put :add_taxon, id: pd.id, permalink: taxon.permalink }

    shared_examples_for "it responds successfully" do
      it "responds successfully" do
        expect(response).to be_success
      end

      it "responds with the correct body" do
        expect(JSON.parse(response.body)).to eql({
          permalink: taxon.permalink,
          pretty_name: taxon.pretty_name
        }.stringify_keys)
      end
    end

    context "when the taxon already exists for the product document" do
      before do
        pd.taxons << taxon
        subject
      end

      it "does not duplicate the entry" do
        expect(assigns(:product_document).taxons.to_a).to have(1).items
      end

      it_behaves_like "it responds successfully"
    end

    context "when the taxon doesn't exist for the product document" do
      before { subject }

      it "adds the taxon to the product documents taxons" do
        expect(assigns(:product_document).taxons.to_a).to eql([assigns(:taxon)])
      end

      it_behaves_like "it responds successfully"
    end
  end

  describe "PUT add_product" do
    let(:product) { create :product }
    let(:pd) { create :product_document }
    subject { spree_put :add_product, id: pd.id, product_id: product.id }

    shared_examples_for "it responds successfully" do
      it "responds successfully" do
        expect(response).to be_success
      end

      it "responds with the correct body" do
        expect(JSON.parse(response.body)).to eql({
          id: product.id,
          name: product.name
        }.stringify_keys)
      end
    end

    context "when the product already exists for the product document" do
      before do
        pd.products << product
        subject
      end

      it "does not duplicate the entry" do
        expect(assigns(:product_document).products).to have(1).items
      end

      it_behaves_like "it responds successfully"
    end

    context "when the product doesn't exist for the product document" do
      before { subject }

      it "adds the product to the product documents products" do
        expect(assigns(:product_document).products.to_a).to eql([assigns(:product)])
      end

      it_behaves_like "it responds successfully"
    end
  end
end
