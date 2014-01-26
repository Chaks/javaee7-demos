<%-- 
    Document   : login
    Created on : 18 Jan, 2014, 9:32:15 PM
    Author     : Chakravarthi
--%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form cssClass="form-horizontal" role="form" action="login?" method="post" validate="true">
  <s:fielderror cssClass="text-danger"/>
  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">User</label>
    <div class="col-sm-10">
      <input type="text" name="userName" class="form-control" id="userName" placeholder="User">
    </div>
  </div>
  <div class="form-group">
    <label for="password" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" name="password" class="form-control" id="password" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Login</button>
    </div>
  </div>
</s:form>
