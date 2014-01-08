require 'spec_helper'

describe 'Product' do
  before do
    product = create(:product)
    product2 = create(:simple_product)
    user = create(:admin_user, email: "test@example.com")
    sign_in_as!(user)
    visit spree.admin_products_path
  end

  context 'index page' do

    it 'should indicate which products are subscribable' do
      within("table#listing_products") do
        page.should have_content('subscribable')
      end
    end
  end
end
