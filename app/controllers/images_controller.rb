class ImagesController < ApplicationController


    def index

        @images = Image.newest_two

    end 

    def new

        @image = Image.new

    end 

    def create

        if Image.create(allow_params)
            redirect_to images_path
        else
            render :new 
        end 

    end


    def show

        @image=Image.where(id: params[:id]).first

    end 


    def edit

        @image=Image.where(id: params[:id]).first

    end

    def update

        @image=Image.where(id: params[:id]).first

        if @image.update_attributes(allow_params)

            redirect_to image_path(@image)
        else 
            render :edit

        end 

    end 

    def destroy

        Image.where(id: params[:id]).first.delete

        redirect_to images_path

    end 

    private 

    def allow_params

        params.require(:image).permit(:title,:url)

    end


end
