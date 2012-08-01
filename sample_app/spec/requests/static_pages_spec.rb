require 'spec_helper'

describe "StaticPages" do

  # Static Content Page tests
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  
  describe "Home page" do
    it "should have the content 'Ruby on Rails Tutorial'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
      # when you
      visit '/static_pages/home'
      page.should have_content('Ruby on Rails Tutorial')
    end
  end
  
  describe "Home page" do
  
    # using have_selector for HTML tags
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{base_title}")
    end
    
    it "should have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end  
   
  describe "Help page" do
    it "should have the content 'Help' "do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "#{base_title} | Help")
    end
  end  
  
  describe "About page" do
    it "should have the content 'About Us' "do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end  
  
  describe "Contact page" do
    it "should have the h1 'Contact Us' "do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end
    
    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "#{base_title} | Contact Us")
    end
    
    it "should have an image lable 'Image' " do
      visit '/static_pages/contact'
      page.should have_selector('img')
    end
    
  end 
  
  # describe "" do
    # it " "do
    # end
  # end 
#   
  # describe "" do
    # it " "do
    # end
  # end 
    
end
