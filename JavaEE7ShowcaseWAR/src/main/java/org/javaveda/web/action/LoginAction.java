/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
import org.javaveda.web.delegate.CustomerDelegate;
import org.javaveda.web.delegate.LoginDelegate;

/**
 *
 * @author Chakravarthi
 */
@InterceptorRefs({
  @InterceptorRef("defaultStack"),
  @InterceptorRef("timer"),
  @InterceptorRef("logger"),
  @InterceptorRef("validation"),
  @InterceptorRef("workflow"),
  @InterceptorRef("profiling")})
public class LoginAction extends ActionSupport {

  private String userName;
  private String password;
  @Inject
  LoginDelegate loginDelegate;
  @Inject
  CustomerDelegate customerDelegate;

  @Action(value = "/portal/login", results = {
    @Result(name = "input", location = "login.tile", type = "tiles"),
    @Result(name = "failure", location = "login.tile", type = "tiles"),
    @Result(name = "landing", location = "landing.tile", type = "tiles")})
  public String authenticate() {
    boolean logged = loginDelegate.login(userName, password);
    if (logged) {
      ValueStack stack = ActionContext.getContext().getValueStack();
      Map<String, Object> context = new HashMap<>();
      context.put("customers", customerDelegate.getCustomers());

      stack.push(context);
      return "landing";
    } else {
      return "failure";
    }
  }

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }
}
