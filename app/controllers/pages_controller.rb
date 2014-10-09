class PagesController < ApplicationController
  skip_before_filter :authorize
  def home
    @posts = Post.order("created_at desc").limit(5)
    @items = Post.order("created_at asc").limit(5)
    @filials = Filial.order("created_at asc").limit(1)
    @itemg = Filial.order("created_at desc").limit(9)

    @slides = Slide.all
    

    
  end

  def about
    @people = Person.all
    @posts = Post.order("created_at desc").limit(5)
    @documents = Document.all
    @jobs = Job.all
    @abouttexts1 = Abouttext.where(:id => '1')
    
    @contactstext = Abouttext.where(:name => 'contactstext')

    @pageaboutimagesone = Pageimage.where(:name => 'aboutone')
    @pageaboutimagestwo = Pageimage.where(:name => 'abouttwo')

  end

  def help
    @links = Link.all
    @pagehelpimagesone = Pageimage.where(:name => 'helpone')
    @pagehelpimagestwo = Pageimage.where(:name => 'helptwo')
    @pagehelpimagesplus = Pageimage.where(:name => 'helpplus')
    @messages = Message.all
    @message = Message.new
    

    
  end

  def contact 
    @filials = Filial.all
    @pagecontactimagesone = Pageimage.where(:name => 'contactone')
    @pagecontactimagestwo = Pageimage.where(:name => 'contacttwo')
    @contactstext = Abouttext.where(:id => '2')
    
  end

  def service
    @otds = Otd.all
    @pageserviceimagesone = Pageimage.where(:name => 'serviceone')
    @pageserviceimagestwo = Pageimage.where(:name => 'servicetwo')
  end
end
