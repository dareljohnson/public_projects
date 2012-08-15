require 'spec_helper'

describe "UserPages" do
  
   # Static Content Page tests
  let(:base_title) { "Tweet My Ads! - A Social Network For Classified Ads" }
  
  subject { page }
  
  describe "Signup page" do
    before {  visit signup_path }
    
    it { should have_selector('h1', text: 'Sign up')   }
    
    it { should have_selector('title', text: full_title('Sign up')) }
  end
end
