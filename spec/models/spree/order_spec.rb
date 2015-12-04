require 'spec_helper'

describe Spree::Order do
  describe "#product_documents" do
    let(:order) { create :order }
    let(:line_items) { create_list :line_item, 3 }
    let(:taxon) { create :taxon }
    let(:product_docs) { create_list :product_document, 2 }

    before do
      order.line_items = line_items
      prod1 = line_items[0].product
      prod2 = line_items[1].product
      prod3 = line_items[2].product

      taxon.products += [prod1, prod2]
      taxon.product_documents << product_docs[0]
      prod2.product_documents << product_docs[0]
      product_docs[1].products += [prod2, prod3]
    end

    it "gets the correct non-duplicated documents for the order." do
      expect(order.product_documents).to eql(product_docs)
    end
  end
end
