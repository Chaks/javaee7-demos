/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.javaveda.web.delegate;

import javax.enterprise.context.RequestScoped;
import javax.inject.Named;

/**
 *
 * @author Chakravarthi
 */
@Named
@RequestScoped
public class LoginDelegate {

  public boolean login(String user, String password) {
    if ("admin".equals(user) && "adminadmin".equals(password)) {
      return true;
    } else {
      return false;
    }
  }
}
