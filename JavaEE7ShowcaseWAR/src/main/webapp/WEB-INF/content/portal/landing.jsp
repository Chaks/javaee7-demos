<%-- 
    Document   : welcome
    Created on : 11 Jan, 2014, 10:39:24 PM
    Author     : Chakravarthi
--%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="table-responsive">
  <table class="table table-condensed">
    <thead>
      <tr>
        <th>Name</th>
        <th>City</th>
        <th>State</th>
        <th>Phone</th>
        <th>eMail</th>
        <th>Credit Limit</th>
      </tr>
    </thead>
    <tbody>
      <s:iterator value="customers" status="counter">
        <tr>
          <s:url var="url" action="customer?">
            <s:param name="custId"><s:property value="customerId"/></s:param>
          </s:url>
          <td><s:a href="%{url}"><s:property value="name"/></s:a></td>
          <td><s:property value="city"/></td>
          <td><s:property value="state"/></td>
          <td><s:property value="phone"/></td>
          <td><s:property value="email"/></td>
          <td><s:property value="creditLimit"/></td>
        </tr>
        <!--<s:property value="#counter.count"/>-->
        <!--<s:hidden id='%{#counter.count}'/>-->
      </s:iterator>
    </tbody>
  </table>
</div>
