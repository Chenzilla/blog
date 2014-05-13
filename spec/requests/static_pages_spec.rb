require 'spec_helper'

describe "Static pages" do
  subject { page }
  let(:base_title) { "SCRUBLYFE" }

  describe "Home page" do
    before(:each) { visit root_path }
    it { should have_title(full_title(''))}
    it { should_not have_title('| Home')}
  end

  describe "About page" do
    before(:each) {visit about_path}
    it { should have_content('About')}
    it { should have_title(full_title('About'))}
  end

  describe "Writing page" do
    before(:each) {visit writing_path}
    it { should have_content('Writing')}
    it { should have_title (full_title('Writing'))}
  end

  describe "Science page" do
    before(:each) {visit science_path}
    it { should have_content('Science')}
    it { should have_title(full_title('Science'))}
  end

  describe "Food page" do
    before(:each) {visit food_path}
    it {should have_content('Food')}
    it{should have_title(full_title('Food'))}
  end
end