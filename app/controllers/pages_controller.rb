class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :work, :faq, :policy, :contact, :aboutus]

  def home
  end
end
