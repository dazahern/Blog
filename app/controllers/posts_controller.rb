class PostsController < ApplicationController
  
  before_action :find_post, except: [:index, :new, :create]

  def index
    # We assigned an instance variable
  	@posts = Post.all 
  	# Rails sends it to the view (index)
  	# Rails renders the view (index)
  end

  def show
  	# We assigne and isntance variable
  	
  	# Rails sends it to the view if its there (show)
  	# Rails renders the view (show)
  end

  def new
    # Provide instance variable for form builder
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) # Make data secure (post.params)
    # Save the data from the form
    if @post.save
      redirect_to @post # If it saves # redirect to the show page
    else
    # else
    # render the new page again
    render :new
    end
  end


  def edit
    # Find the post to edit
   
    # Rails gives it to the view
    render :edit
  end


  def update
    
    
    if @post.update(post_params) # Make the data secure
    # save the data from form
    # if it saves
    redirect_to @post
    # redirect to show page
    else
    # render the edit page again
    render:edit
    end
  end

  def destroy

    # find the post for deleting
    
    # delete that post
    @post.destroy
    # redirect to the home page
    redirect_to root_path
  end

  private
  # Only allow this stuff
    def post_params
      params.require(:post).permit(:title, :body, :publication, :url, :published_at, :author, :pull_quote)
    end
  

  def find_post
    @post = Post.find(params[:id])
  end

end
