class PagesController < ApplicationController
  def home
    @posts = Post.order("created_at desc").limit(3)
    @items = Post.order("created_at asc").limit(3)
    @filials = Filial.all

    
  end

  def about
    @people = Person.all
    @posts = Post.order("created_at desc").limit(6)
    @documents = Document.all
    @jobs = Job.all
    @abouttexts = Abouttext.all
  end

  def help
  end

  def contact
    @filials = Filial.all
    
  end

  def service
    @otds = Otd.all
  end
end
