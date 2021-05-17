class PagesController < ApplicationController
  def about
    # get something from the DB
    # give it to the view
    # render 'about.html.erb'
  end

  def contact
    # render 'contact.html.erb'
    # @members = Member.all # tomorrow with AR
    @members = ['yann', 'doug', 'sylvain', 'sasha', 'trouni']
    if params[:member]
      @members = @members.select do |member|
        member.start_with?(params[:member])
      end
    end
    # render 'contact.html.erb'
  end

  def create
    raise
  end

  def home

  end
end
