class Document < ApplicationRecord
  belongs_to :employee
  
  has_one_attached :image
  
  validates :name, :doc_type,:employee_id, presence: true
  
  DOC_TYPES = ['Marksheet','Photo Id','Address Proof','Personal ID','Others'].freeze
end
