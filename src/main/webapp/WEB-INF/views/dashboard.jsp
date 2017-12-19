<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="header.jsp"/>


<div class="container-fluid" style="margin-top: 20px">
    <div class="input-group col-sm-offset-9 col-sm-3" style="margin-bottom: 10px">
        <span class="input-group-addon" id="input-addon"><span class="glyphicon glyphicon-search"></span></span>
        <input type="text" id="search" class="form-control" placeholder="Search" aria-describedby="input-addon">
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="table-responsive" style="margin: 0px; padding: 0px;">
            <table class="table table-hover table-condensed">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>User Type</th>
                    <th>Contact</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th></th>
                </tr>
                </thead>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.firstname} ${user.lastname}</td>
                        <td>${user.userType}</td>
                        <td>${user.contact}</td>
                        <td>${user.email}</td>
                        <td>${user.address}</td>
                        <td>
                            <a href="<c:url value="/dashboard/view-${user.username}"/>" class="btn btn-default">View</a>
                            <a href="<c:url value="/dashboard/edit-${user.username}"/>" class="btn btn-primary ">Edit</a>
                            <a href="<c:url value="/dashboard/delete-${user.username}"/>" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
                </div>
        </div>
    </div>


</div>
<script>
    $(document).ready(function () {
        var $cells = $("td");

        $("#search").keyup(function () {
            var val = $.trim(this.value).toUpperCase();
            if (val === "")
                $cells.parent().show();
            else {
                $cells.parent().hide();
                $cells.filter(function () {
                    return -1 != $(this).text().toUpperCase().indexOf(val);
                }).parent().show();
            }
        });
    });
</script>
<c:import url="footer.jsp"/>