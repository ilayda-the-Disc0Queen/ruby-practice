def first_come_first_served?(take_out_orders, dine_in_orders, served_orders)
  take_out_orders_index = 0
  dine_in_orders_index = 0
  take_out_orders_max_index = take_out_orders.length - 1
  dine_in_orders_max_index = dine_in_orders.length - 1

  served_orders.each do |order|
    if take_out_orders_index <= take_out_orders_max_index &&
       order == take_out_orders[take_out_orders_index]
      take_out_orders_index += 1
    elsif dine_in_orders_index <= dine_in_orders_max_index &&
          order == dine_in_orders[dine_in_orders_index]
      dine_in_orders_index += 1
    else
      false
    end
  end

  # check for any extra orders at the end of take_out_orders or dine_in_orders
  if dine_in_orders_index != dine_in_orders.length ||
     take_out_orders_index != take_out_orders.length
    return false
  end

  # all orders in served_orders have been "accounted for"
  # so we're serving first-come, first-served!
  true
end
