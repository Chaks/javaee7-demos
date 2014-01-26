<%-- 
    Document   : customer
    Created on : 20 Jan, 2014, 9:27:10 PM
    Author     : Chakravarthi
--%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<form class="form-horizontal" role="form" method="post">

  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">Customer Name</label>
    <div class="col-sm-10">
      <input type="text" name="customer.name" class="form-control" id="customerName" value="<s:property value="customer.name"/>">
    </div>
  </div>

  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">Customer Address Line1</label>
    <div class="col-sm-10">
      <input type="text" name="customer.addressline1" class="form-control" id="customerAddressLine1" value="<s:property value="customer.addressline1"/>">
    </div>
  </div>

  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">Customer Address Line2</label>
    <div class="col-sm-10">
      <input type="text" name="customer.addressline2" class="form-control" id="customerAddressLine2" value="<s:property value="customer.addressline2"/>">
    </div>
  </div>

  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">Customer City</label>
    <div class="col-sm-10">
      <input type="text" name="customer.city" class="form-control" id="customerCity" value="<s:property value="customer.city"/>">
    </div>
  </div>

  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">Customer State</label>
    <div class="col-sm-10">
      <input type="text" name="customer.state" class="form-control" id="customerState" value="<s:property value="customer.state"/>">
    </div>
  </div>

  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">Customer Phone</label>
    <div class="col-sm-10">
      <input type="text" name="customer.phone" class="form-control" id="customerPhone" value="<s:property value="customer.phone"/>">
    </div>
  </div>

  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">Customer Fax</label>
    <div class="col-sm-10">
      <input type="text" name="customer.fax" class="form-control" id="customerFax" value="<s:property value="customer.fax"/>">
    </div>
  </div>

  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">Customer email</label>
    <div class="col-sm-10">
      <input type="text" name="customer.email" class="form-control" id="customerEmail" value="<s:property value="customer.email"/>">
    </div>
  </div>

  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">Customer Zip</label>
    <div class="col-sm-10">
      <input type="text" name="customer.zip.zipCode" class="form-control" id="customerZip" value="<s:property value="customer.zip.zipCode"/>">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-10">
      <button type="button" class="btn btn-primary">Edit</button>
      <button type="button" class="btn btn-primary">Delete</button>
    </div>
  </div>

</form>