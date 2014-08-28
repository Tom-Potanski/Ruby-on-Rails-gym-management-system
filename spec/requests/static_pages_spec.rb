require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    # before { visit '/static_pages/home' }
    before { visit root_path }
    it { should have_content('Twoja siłownia, online') }
    it { should have_content('Małgorzata Szwed') }
    it { should have_title('Twoja siłownia, online') }
    it { should have_title('Małgorzata Szwed') }
    it { should have_content('O nas') }
    it { should have_content('Trenerzy') }
    it { should have_content('Zajęcia') }
    it { should have_content('Diety') }
    end
end

