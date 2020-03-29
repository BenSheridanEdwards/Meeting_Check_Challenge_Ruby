class CafeOrderChecker

  def first_come_first_served?(take_out_orders, dine_in_orders, served_orders)

    take_out_index = 0
    dine_in_index = 0
    take_out_max_index = take_out_orders.length - 1
    dine_in_max_index = dine_in_orders.length - 1
    
    
    served_orders.each { |order|
      
      if take_out_index <= take_out_max_index && order == take_out_orders[take_out_index]
        
        take_out_index += 1
        
      elsif dine_in_index <= dine_in_max_index && order == dine_in_orders[dine_in_index]
        
        dine_in_index += 1
        
      else
        return false
      end
    
    }
    
    if dine_in_index != dine_in_orders.length || take_out_index != take_out_orders.length 
      return false
    end
    
    true
  end
end
