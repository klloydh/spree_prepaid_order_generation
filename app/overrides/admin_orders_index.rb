Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
                     :name         => 'subscriptions_to_header',
                     :insert_before => "[data-hook='admin_orders_index_header_actions']",
                     :text         => "<th><%= sort_link @search, :subscription, t('subscription') %></th>")

Deface::Override.new(:virtual_path => 'spree/admin/orders/index',
                     :name         => 'subscription_to_table',
                     :insert_before => "[data-hook='admin_orders_index_row_actions']",
                     :text         => "<td><%= order.has_subscription? %></td>")

