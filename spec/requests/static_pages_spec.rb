require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the content 'PhotoBook - '" do
			visit root_path
			expect(page).to have_content('Photobook')
		end
	end

	describe "board page" do
		it "should board path" do
			visit board_path
		end
	end

	describe "MyPage page" do
		it "should MyPage path" do
			visit mypage_path
		end
	end
end
