require 'spec_helper'

describe Spree::ProductDocumentProduct do
  it { should validate_presence_of(:product) }
  it { should validate_presence_of(:product_document) }
  it { should belong_to(:product_document) }
  it { should belong_to(:product) }
end
