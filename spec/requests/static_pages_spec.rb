require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Welcome to the Cutthroat App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Welcome to the Cutthroat App')
    end
  end
end
