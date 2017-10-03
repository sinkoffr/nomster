class ContactsController < ApplicationController
    
    def index
        @contacts = Contact.all
    end
       
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.create(contact_params)
        if @contact.valid?
            flash[:notice] = "Thank you for your feedback.  Your message has been received."
            redirect_to root_path
        else
            render :new, status: :not_found
        end
    end
    
    private
    
    def contact_params
        params.require(:contact).permit(:name, :email, :subject, :message)
    end
    
end