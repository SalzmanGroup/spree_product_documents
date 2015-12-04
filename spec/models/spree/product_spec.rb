require 'spec_helper'

describe Spree::Product do
  it { should have_many(:product_document_products) }
  it { should have_many(:product_documents) }
end
