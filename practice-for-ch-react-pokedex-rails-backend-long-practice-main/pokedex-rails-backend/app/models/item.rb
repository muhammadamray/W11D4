# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  name       :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord

    validates :pokemon_id, :name, :price, :happiness, :image_url, presence: true
    validates :price, numericality: {minimum: 0}
    validates :name, length: { in: 3..255 }

    belongs_to :pokemon
end
