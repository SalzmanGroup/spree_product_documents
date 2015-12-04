require 'spec_helper'

describe Spree::ProductDocument do
  it { should validate_presence_of :file }
  it { should validate_presence_of :name }
  it { should have_many :product_document_taxons }
  it { should have_many :taxons }
  it { should have_many :product_document_products }
  it { should have_many :products }
end
