class ArtworksController < ApplicationController

    def index
        artworks = Artwork.all
        render json: artworks
    end 

    def create #create ...follow class[...]
        # debugger
        x = Artwork.new(artworks_params)
        if x.save #want to return false
            render json: x
        else 
            render json: x.errors.full_messages, status:422
        end 
    end

    def show
        artwork = artwork.find(params[:id]) #only need id dont need top level id
        render json: artwork
        #:id is wild card and points to
    end

    def update
        artwork = artwork.find(params[:id]) #only need id dont need top level id
        if artwork.update(artworks_params) #AR update method that acts on instance
          redirect_to show_artwork_url(artwork)  #redirect to show
        else
          render json: artwork.errors.full_messeges, status: :unprocessable_entity #meessage for error
        end
    end

    def destroy
        artwork = artwork.find(params[:id]) #only need id dont need top level id
        artwork.destroy 
        redirect_to artworks_url #do not need to pass arg because its not looking for :id wildcard
        #does .all and shows whats still there
    end 

    private 

    def artworks_params 
        params.require(:artwork).permit(:title, :img_url, :artist_id)
    end


end