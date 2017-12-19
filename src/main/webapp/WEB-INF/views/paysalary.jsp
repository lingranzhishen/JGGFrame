<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="header.jsp"/>


<div class="container-fluid" style="margin-top: 20px">
    <!-- -->
    <form class="form-inline col-sm-5" style="margin-left: 15px">
        <div class="form-group input-group ">
            <span class="input-group-addon" id="input-addon-time"><span class="glyphicon glyphicon-time"></span></span>
            <input name="datePicker" id="datePicker" class="datePickerClass form-control" aria-describedby="input-addon-time" />
        </div>
        <button type="submit" class="btn btn-primary">Pay Salary</button>
    </form>
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
                        <th>PAN Number</th>
                        <th>Bank Account Number</th>
                        <th>Salary /m</th>
                        <th>CIT /m</th>
                        <th>Tax /m</th>
                        <th>Net Salary</th>
                    </tr>
                    </thead>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.firstname} ${user.lastname}</td>
                            <td>${user.panNumber}</td>
                            <td>${user.bankAccountNumber}</td>
                            <td>${user.salaryAmount}</td>
                            <td><fmt:formatNumber type="number" var="citMonthly" value="${user.citYearly div 12}"
                                                  maxFractionDigits="2" groupingUsed="false"/>${citMonthly}</td>
                            <td><fmt:formatNumber type="number" groupingUsed="false" var="taxMonthly"
                                                  value="${user.taxYearly div 12}"
                                                  maxFractionDigits="2"/>${taxMonthly}</td>
                            <td>${user.salaryAmount - citMonthly - taxMonthly}</td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
        </div>

    </div>


</div>
<style>
    .ui-datepicker-header {
        color: #000
    }
    .ui-datepicker-calendar {
        display: none;
    }
</style>
<script>
    $(document).ready(function () {

        $('.datePickerClass').datepicker( {
            changeMonth: true,
            changeYear: true,
            showButtonPanel: true,
            dateFormat: 'yy-mm',
            onClose: function(dateText, inst) {
                var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                $(this).datepicker('setDate', new Date(year, month, 1));
            }
        });

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