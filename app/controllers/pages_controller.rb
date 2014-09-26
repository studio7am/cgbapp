class PagesController < ApplicationController
  skip_before_filter :authorize
  def home
    @posts = Post.order("created_at desc").limit(3)
    @items = Post.order("created_at asc").limit(3)
    @filials = Filial.all
    @slides = Slide.all
    

    
  end

  def about
    @people = Person.all
    @posts = Post.order("created_at desc").limit(6)
    @documents = Document.all
    @jobs = Job.all
    @abouttexts = Abouttext.all
    @pageaboutimagesone = Pageimage.where(:name => 'aboutone')
    @pageaboutimagestwo = Pageimage.where(:name => 'abouttwo')

  end

  def help
    @links = Link.all
    @pagehelpimagesone = Pageimage.where(:name => 'helpone')
    @pagehelpimagestwo = Pageimage.where(:name => 'helptwo')
    @pagehelpimagesplus = Pageimage.where(:name => 'helpplus')

    
  end

  def contact 
    @filials = Filial.all
    @pagecontactimagesone = Pageimage.where(:name => 'contactone')
    @pagecontactimagestwo = Pageimage.where(:name => 'contacttwo')
    
  end

  def service
    @otds = Otd.all
    @pageserviceimagesone = Pageimage.where(:name => 'serviceone')
    @pageserviceimagestwo = Pageimage.where(:name => 'servicetwo')
  end
end
