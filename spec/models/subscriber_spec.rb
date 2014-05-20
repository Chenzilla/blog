require 'spec_helper'

describe Subscriber do

  before { @subscriber = Subscriber.new(email: "user@example.com") }

  subject { @subscriber }

  it { should respond_to(:email) }
  describe "when name is not present" do
    before { @subscriber.email = " " }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @subscriber.email = invalid_address
        expect(@subscriber).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @subscriber.email = valid_address
        expect(@subscriber).to be_valid
      end
    end
  end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end
  describe "with invalid information" do
      it "should not create a subscriber" do
        expect { click_button subscribe }.not_to change(Subscriber, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Email",        with: "user@example.com"
      end

      it "should create a user" do
        expect { click_button subscribe }.to change(Subscriber, :count).by(1)
      end
    end
end