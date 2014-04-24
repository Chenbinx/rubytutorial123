require 'spec_helper'

# describe "StaticPages" do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end


describe "Static pages" do
  describe "Home page" do
    before { visit root_path }
    it "should have the content 'Sample App'" do
      expect(page).to have_content('Home')
    end

    it "should have the right title" do
      expect(page).to have_title("Home")
    end
  end

  describe "Help page" do
    before { visit help_path }
    it "should have content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do
    before { visit about_path }
    it "should have content 'About'" do      
      expect(page).to have_content('About')
    end

    it "should have the right title" do
      expect(page).to have_title("About")
    end
  end

  describe "Contact page" do
    before { visit contact_path }
    it "should have content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      expect(page).to have_title("Contact")
    end
  end
end
