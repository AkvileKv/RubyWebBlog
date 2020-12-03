class Post < ApplicationRecord
    validates :title, format: { with: /\A[a-zA-Z]+\z/, message: "Title can only inlude letters"} 
    validates :title, :content, presence: true # not empty
    validates :title, length: { minimum: 5 } # sets a minimum
    validates :content, length: { maximum: 500 } # sets a maximum
end
