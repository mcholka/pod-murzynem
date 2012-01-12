class Producent
  include Mongoid::Document
  field :id_number, :type => Integer
  field :nazwa, :type => String
end
