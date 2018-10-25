BusinessCase.where(client_validation_status: nil).map{ |c| c.update_attribute(:client_validation_status, 0) }
