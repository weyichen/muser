require 'spec_helper'

describe "User pages" do

  subject { page }

 # describe "profile page" do
 #   let(:user) { FactoryGirl.create(:user) }
 #   before { visit  }

 #   it { should have_content(user.name) }
 #   it { should have_title(user.name) }
 # end

  describe "signup page" do
    before { visit "/users/sign_up" }

    it { should have_content('Sign up') }
    it { should have_title (full_title('')) }

    let(:submit) { "Sign up" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobarfoobar1"
        fill_in "Password confirmation", with: "foobarfoobar1"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end

  end

  # TODO: implement login test
  describe "login page" do
    before { visit "/users/sign_in" }

    it { should have_content('Sign in') }
    it { should have_title (full_title('')) }

    let(:submit) { "Sign up" }

  end

end
