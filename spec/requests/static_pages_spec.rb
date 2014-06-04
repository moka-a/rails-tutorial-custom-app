require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the content 'PhotoBook - '" do
			visit '/static_pages/home'
			expect(page).to have_content('PhotoBook')
		end
	end

	describe "board page" do
	

	end

	describe "MyPage page" do

	end
end
