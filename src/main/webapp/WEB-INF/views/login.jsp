<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="header.jsp"/>

<div class="container">

    <div class="row" id="pwd-container">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <section class="login-form">
                <form:form method="POST" modelAttribute="user" role="login">
                    <img src="/static/images/sdata.png  " class="img-responsive" alt="">
                    <form:input path="username" id="username" required="" placeholder = "Username" cssClass="form-control input-lg"/>
                    <form:password path="password" id="password" cssClass="form-control input-lg" placeholder="Password" required="" />
                    <form:errors path="password" cssClass="control-label" cssStyle="color: red; alignment: center;"/>
                    <button type="submit" name="go" class="btn btn-lg btn-primary btn-block">Sign in</button>
                </form:form>
            </section>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
<c:import url="footer.jsp"/>