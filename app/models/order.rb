class Order < ApplicationRecord
    enum status: {
      pending: "pending",
      confirmed: "confirmed",
      shipped: "shipped",
      completed: "completed",
      cancelled: "cancelled"
    }

    validates :name, presence: true
    validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
