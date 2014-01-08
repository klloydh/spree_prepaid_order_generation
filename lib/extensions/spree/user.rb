module SpreeSubscriptions
  module Extensions
    module Spree
      module User
        extend ActiveSupport::Concern

        included do
          has_many :subscriptions
        end

        def subscription_orders
          orders.joins(:subscription)
        end

      end
    end
  end
end

::Spree::User.send(:include, SpreeSubscriptions::Extensions::Spree::User)
