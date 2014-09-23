class BackendController < ApplicationController
  layout 'backend'
  def index
    @posts = Post.all
    @documents = Document.all
    @people = Person.all
    @filials = Filial.all
    @abouttexts = Abouttext.all
    
    
    
  end
  def posts
    @posts = Post.all
  end
end
