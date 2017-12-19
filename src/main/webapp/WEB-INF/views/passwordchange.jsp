<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="header.jsp"/>

<style>
    @CHARSET "UTF-8";
    * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        outline: none;
    }

    .form-control {
        position: relative;
        font-size: 16px;
        height: auto;
        padding: 10px;
    }

    .login-form {
        margin-top: 60px;
    }

    form[role=changepassword] {
        color: #5d5d5d;
        background: #f2f2f2;
        padding: 26px;
        border-radius: 10px;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
    }

    form[role=changepassword] input,
    form[role=changepassword] button {
        font-size: 18px;
        margin: 16px 0;
    }

    form[role=changepassword] > div {
        text-align: center;
    }
</style>

<div class="container">

<div class="row" id="pwd-container">
<div class="col-md-4"></div>
<div class="col-md-4">
<section class="login-form">

    <form role="changepassword" method="post" action="/dashboard/changepassword/">
        <input id="oldPassword" type = password name="oldPassword" placeholder="Old Password" class="form-control input-lg">
        <input id="newPassword" type = password name="newPassword" placeholder="New Password" class="form-control input-lg">
        <input id="retypePassword" type = password name="retypePassword" placeholder="Re-Type Password" class="form-control input-lg">
        <button type="submit" name="go" class="btn btn-lg btn-danger btn-block">Change Password</button>
    </form>

</section>
</div>
<div class="col-md-4"></div>
</div>
</div>
<c:import url="footer.jsp"/>