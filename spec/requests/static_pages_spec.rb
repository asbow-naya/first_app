require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App | " }

  describe "Home page" do

    it "'Sample App'という文字列を含むこと" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "ベースタイトル表示" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "正しいタイトル表示" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do

    it "'Help'という文字列を含むこと" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "ベースタイトル表示" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "正しいタイトル表示" do
      visit '/static_pages/help'
      expect(page).to have_title("| Help")
    end
  end

   describe "About page" do

    it "'About Us'という文字列を含むこと" do 
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "ベースタイトル表示" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "正しいタイトル表示" do
      visit '/static_pages/about'
      expect(page).to have_title("| About Us")
    end
  end

  describe "Contact page" do

    it "'About Us'という文字列を含むこと" do 
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "ベースタイトル表示" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "正しいタイトル表示" do
      visit '/static_pages/contact'
      expect(page).to have_title("| Contact")
    end
  end
end
