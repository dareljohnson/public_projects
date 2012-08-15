require 'spec_helper'

 
describe "StaticPages" do
 
  # Static Content Page tests
  let(:base_title) { "Tweet My Ads! - A Social Network For Classified Ads" }

  # set the page variable. "it -- is the subject"
  subject { page }
  
  describe "Home page" do
    before { visit root_path }
    
    it { should have_content('A Social Network For Classified Ads')  }
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
      # when you
  end
  
  describe "Home page" do
    before { visit root_path }
    
    # using have_selector for HTML tags
    it { should have_selector('h1', :text => 'Welcome to Tweet My Ads!') }

    it { should have_selector('title',
                        :text => full_title('')) }
    
    it { should_not have_selector('title', :text => '| Home')  }

  end
   
  describe "Help page" do
    before { visit help_path }
    
    it { should have_content('Help')  }
    
    it { should have_selector('title',
                        :text => "#{base_title} | Help")  }
  end  
  
  describe "About page" do
    before {  visit about_path }
    
    it { should have_content('About Us')  }

    it { should have_selector('title',
                    :text => "#{base_title} | About Us")  }
  end  
  
  describe "Contact page" do
    before {  visit contact_path }
    
    it { should have_selector('h1', :text => 'Contact Us')  }

    it { should have_selector('title',
                    :text => "#{base_title} | Contact Us")  }
    
    it { should have_selector('img')  }
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
