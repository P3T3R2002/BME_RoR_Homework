class Order < ApplicationRecord
    belongs_to :user

    validates :place, presence: true
    validates :diameter, inclusion: { in: [160, 200] }
    validates :depth, numericality: {
        only_integer: true,
        greater_than: 0,
        less_than_or_equal_to: 20
    }
end
