/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.javaveda.web.delegate;

import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import org.javaveda.dataaccess.controller.CustomerJpaController;
import org.javaveda.dataaccess.entity.Customer;

/**
 *
 * @author Chakravarthi
 */
@Named
@RequestScoped
public class CustomerDelegate {

  @Inject
  CustomerJpaController customerJpaController;

  public List<Customer> getCustomers() {
    return customerJpaController.findCustomerEntities();
  }

  public Customer getCustomer(Integer custId) {
    return customerJpaController.findCustomer(custId);
  }
}
