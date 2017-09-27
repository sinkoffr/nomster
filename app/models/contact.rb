class Contact < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :message, presence: true
    def new
        @contact = Contact.new
    end
    
end
