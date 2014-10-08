class BackendController < ApplicationController
  layout 'backend'
  def index
    @posts = Post.all
    @documents = Document.all
    @people = Person.all
    @filials = Filial.all
    @abouttexts = Abouttext.all
    @links = Link.all
    @otds = Otd.all
    @slides = Slide.all
    @jobs = Job.all
    
    

    @pageaboutimagesone = Pageimage.where(:name => 'aboutone')
    @pageaboutimagestwo = Pageimage.where(:name => 'abouttwo')
    

    @pagehelpimagesone = Pageimage.where(:name => 'helpone')
    @pagehelpimagestwo = Pageimage.where(:name => 'helptwo')
    @pagehelpimagesplus = Pageimage.where(:name => 'helpplus')


    @pagecontactimagesone = Pageimage.where(:name => 'contactone')
    @pagecontactimagestwo = Pageimage.where(:name => 'contacttwo')
    

    @pageserviceimagesone = Pageimage.where(:name => 'serviceone')
    @pageserviceimagestwo = Pageimage.where(:name => 'servicetwo')


    @abouttexts1 = Abouttext.where(:id => '1')
    
    @contactstext = Abouttext.where(:id => '2')

  
    
    
  end
  def posts
    @posts = Post.all
  end
end
