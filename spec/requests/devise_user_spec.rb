require 'get_top_5'
require 'rails_helper'

describe "Visting as a non signed-in user", :type => :feature do

  before(:each) do

    5.times do
      FactoryBot.create(:video)
    end
    @video_list = Video.all

  end
  
  before { visit root_path }

  subject { page }
  
let(:user) { FactoryBot.create(:user) }

  describe "Home page" do

    it { is_expected.to have_selector('h1', :text => 'Matthews Video Store') }

    it "should have the signup button" do
      expect(page).to have_content('Sign up now!')
      click_link Top5.data.first[:title]
      expect(page).to have_content('Sign up now!')
      expect(page).to have_content(Video.first.title)
      expect(page).to have_link(Video.first.title)
      puts Video.find(Video.first[:id])
      puts Video.first[:actors]
      puts "hola " + "foo"
      Video.suggestions(Video.find(Video.first[:id])).each do |result|
        puts result[:thumbnail].inspect
      end
      #      click_link Video.first[:title]
      #      visit video_path(Video.first)
    end
    
  end
  
  
  
end
