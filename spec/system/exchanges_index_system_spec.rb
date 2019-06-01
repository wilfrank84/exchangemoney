require 'rails_helper'

RSpec.describe 'Exchange Currency Process', type: :system, js: true do
  it 'Show exchange value' do

    visit '/'

    within('#exchange_form') do
      select('EUR', from: 'source_currency')
      select('BRL', from: 'target_currency')
      fill_in 'amount', with: rand(1..9999)
    end

    click_button 'CONVERTER'

    # save and open page
    expect(page).to have_content('value')
  end
end
