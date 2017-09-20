class ContactsController < ApplicationController
    
    def index
        @contacts = Contact.all
    end
       
    def new
        @contact = Contact.new
    end
    
    def create
        Contact.create(contact_params)
    end
    
    def contact_params
        params.require(:contact).require(:name, :address, :subject, :message)
    end
    
end