class Acomodacao < ApplicationRecord
  enum status: [ :apartamento, :casa, :hotel ]
end
