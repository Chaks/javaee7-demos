/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.javaveda.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.Result;
import org.javaveda.dataaccess.entity.Customer;
import org.javaveda.web.delegate.CustomerDelegate;

/**
 *
 * @author Chakravarthi
 */
@InterceptorRefs({
  @InterceptorRef("defaultStack"),
  @InterceptorRef("timer"),
  @InterceptorRef("logger"),
  @InterceptorRef("profiling")})
public class CustomerAction extends ActionSupport {

  private Integer custId;
  @Inject
  CustomerDelegate customerDelegate;

  @Action(value = "/portal/customer", results = {
    @Result(name = "failure", location = "errorPage.tile", type = "tiles"),
    @Result(name = "landing", location = "customerLanding.tile", type = "tiles")})
  public String getCustomer() {
    Customer customer = customerDelegate.getCustomer(custId);
    ValueStack stack = ActionContext.getContext().getValueStack();
    Map<String, Object> context = new HashMap<>();
    context.put("customer", customer);

    stack.push(context);
    return "landing";
  }

  public void setCustId(Integer custId) {
    this.custId = custId;
  }
}
