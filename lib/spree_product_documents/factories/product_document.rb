FactoryGirl.define do
  factory :product_document, class: Spree::ProductDocument do
      file { File.new File.expand_path("#{File.dirname(__FILE__)}/../../../spec/support/fixtures/test.txt") }
      name "Test File"
  end
end
