class Contact < ApplicationRecord
    validates :name, :email, :message, presence: true
    
    def new
        @contact = Contact.new
    end
    
end
