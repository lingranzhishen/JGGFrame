<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:import url="header.jsp"/>

<div class="container-fluid " style="padding-top: 40px; ">
    <div class="row">
        <form:form method="POST" modelAttribute="user" cssClass="form-horizontal" role="form"
                   id="employeeRegistrationForm" autocomplete="false">
            <fieldset style="padding: 15px;">
                <form:input path="userId" type="hidden" id="id" name="id"/>
                <div class="form-group">
                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon">First Name</span>
                            <form:input path="firstname" id="firstname" name="firstname" placeholder="First Name"
                                        disabled="${VIEW_FLAG}" cssClass="form-control"/></div>
                    </div>
                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Middle Name</span>
                            <form:input path="middlename" id="middlename" name="middlename"
                                        placeholder="Middle Name"
                                        disabled="${VIEW_FLAG}"
                                        cssClass="form-control" cssStyle="padding-bottom: 10px;"/>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Last Name</span>
                            <form:input path="lastname" id="lastname" name="lastname" placeholder="Last Name"
                                        disabled="${VIEW_FLAG}"
                                        cssClass="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Username</span>

                            <form:input path="username" id="username" name="username" placeholder="User Name"
                                        disabled="${PAGE_TITLE != 'Add Employee'}"
                                        cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Password</span>

                            <form:password path="password" id="password" name="password" cssClass="form-control"
                                           placeholder="Password" value="${user.password}"
                                           disabled="${PAGE_TITLE != 'Add Employee'}"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Enrollment Date</span>
                            <form:input path="enrollmentDate" id="enrollmentDate" cssClass="form-control"
                                        placeholder="Enrollment Date - MM/DD/YYYY" disabled="${VIEW_FLAG}"/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">User Type</span>

                            <form:select id="usertype" name="usertype" path="userType" cssClass="form-control"
                                         disabled="${VIEW_FLAG}">
                                <form:option value="Admin">Admin</form:option>
                                <form:option value="Employee">Employee</form:option>
                            </form:select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Email</span>

                            <form:input path="email" id="email" name="email" placeholder="E-mail" type="email"
                                        cssClass="form-control"
                                        disabled="${VIEW_FLAG}"/>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Contact Number</span>
                            <form:input path="contact" id="contact" name="contact" placeholder="Contact"
                                        disabled="${VIEW_FLAG}"
                                        cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Address</span>
                            <form:input path="address" id="address" name="address" placeholder="Address"
                                        disabled="${VIEW_FLAG}"
                                        cssClass="form-control"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Pan Number</span>
                            <form:input path="panNumber" id="panNumber" name="panNumber" placeholder="Pan Number"
                                        type="text"
                                        cssClass="form-control"
                                        disabled="${VIEW_FLAG}"/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Bank Account Number</span>
                            <form:input path="bankAccountNumber" id="bankAccountNumber" name="bankAccountNumber"
                                        placeholder="Bank Account Number"
                                        disabled="${VIEW_FLAG}"
                                        cssClass="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">DOB</span>
                            <form:input path="DOB" id="DOB" cssClass="form-control"
                                        placeholder="DOB - MM/DD/YYYY" disabled="${VIEW_FLAG}"/>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Gender</span>

                            <form:select path="gender" id="sex" name="sex" cssClass="form-control"
                                         disabled="${VIEW_FLAG}">
                                <form:option value="Male">Male</form:option>
                                <form:option value="Female">Female</form:option>
                                <form:option value="Other">Other</form:option>
                            </form:select>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Marital Status</span>

                            <form:select path="maritalStatus" id="maritalStatus" name="maritalStatus"
                                         cssClass="form-control" disabled="${VIEW_FLAG}">
                                <form:option value="Married">Single</form:option>
                                <form:option value="Single">Married</form:option>
                            </form:select>
                        </div>
                    </div>
                </div>

                <div class="form-group">

                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Salary Amount</span>

                            <form:input path="salaryAmount" id="salaryAmount" name="salaryAmount"
                                        placeholder="Salary Per Month"
                                        disabled="${VIEW_FLAG}"
                                        cssClass="form-control"/>
                        </div>
                    </div>


                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Cit Yearly</span>

                            <form:input path="citYearly" id="citYearly" name="citYearly" placeholder="CIT Yearly"
                                        cssClass="form-control"
                                        disabled="${VIEW_FLAG}"/>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Insurance Yearly</span>
                            <form:input path="insuranceYearly" id="insuranceYearly" name="insuranceYearly"
                                        placeholder="Insurace Yearly"
                                        disabled="${VIEW_FLAG}"
                                        cssClass="form-control"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">

                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Salary Yearly</span>
                            <input id="salaryAmountYearly" name="salaryAmountYearly" placeholder="Salary Per Year"
                                   disabled="true"
                                   class="form-control"/>
                        </div>
                    </div>


                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">CIT Monthly</span>

                            <input id="citMonthly" name="citMonthly" placeholder="CIT Monthly"
                                   class="form-control"
                                   disabled="true"/>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Tax Yearly</span>

                            <form:input path="taxYearly" id="taxYearly" name="taxYearly"
                                        placeholder="Tax Yearly"
                                        readonly="true"
                                        cssClass="form-control"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="input">Tax Monthly</span>

                            <input id="taxMonthly" name="taxMonthly"
                                   placeholder="Tax Monthly"
                                   disabled="true"
                                   class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <c:choose>
                        <c:when test="${VIEW_FLAG}">
                            <div class="col-sm-1"></div>
                            <a href="<c:url value="/dashboard/edit-${user.username}"/>"
                               class="btn btn-primary col-sm-4">Edit</a>
                            <a href="<c:url value="/dashboard/delete-${user.username}"/>"
                               class="btn btn-danger col-sm-offset-2 col-sm-4">Delete</a>

                            <div class="col-sm-1"></div>
                        </c:when>
                        <c:otherwise>
                            <div class="col-sm-4"></div>
                            <c:choose>
                                <c:when test="${PAGE_TITLE eq 'Add Employee'}">
                                    <input type="submit" value="ADD" class="col-sm-4 btn btn-primary"/>
                                    <script>
                                        $(document).ready(function () {
                                            $("#citYearly").val("");
                                            $("#salaryAmount").val("");
                                            $("#insuranceYearly").val("");
                                            $("#taxYearly").val("");

                                            $("#username").on("focus", function () {
                                                var firstname = $("#firstname").val();
                                                var lastname = $("#lastname").val();

                                                $(this).val(firstname.charAt(0).toLowerCase() + lastname.toLowerCase());
                                                $("#email").val(firstname.charAt(0).toLowerCase() + lastname.toLowerCase() + "@sdata.us");
                                            });

                                        });
                                    </script>
                                </c:when>
                                <c:otherwise>
                                    <input type="submit" value="Update" class="col-sm-4 btn btn-primary"/>
                                </c:otherwise>
                            </c:choose>
                            <div class="col-sm-4"></div>
                        </c:otherwise>
                    </c:choose>
                </div>

            </fieldset>
        </form:form>
    </div>

</div>
<script type="text/javascript">
    $(document).ready(function () {
                $("#enrollmentDate").datepicker();
                $("#DOB").datepicker();
                taxCalculation();
                $("#citYearly").click(function () {
                    taxCalculation();
                });
                $("#salaryAmount").keyup(function () {
                    taxCalculation();
                });
                $("#insuranceYearly").keyup(function () {
                    taxCalculation();
                });
                $("#maritalStatus").click(function () {
                    taxCalculation();
                });
                $("#insuranceYearly").blur(function () {
                    insurance = $("#insuranceYearly").val();
                    if (insurance > 25000) {
                        insurance = 25000;
                        $("#insuranceYearly").val(insurance);
                    }
                    taxCalculation();
                });
                function taxCalculation() {
                    monthlySalary = $("#salaryAmount").val();
                    yearlySalary = monthlySalary * 12;
                    $("#salaryAmountYearly").val(yearlySalary);

                    citYearly = yearlySalary * (33 / 100);
                    if (citYearly > 300000) {
                        citYearly = 300000;
                    }
                    $("#citYearly").val(citYearly);
                    $("#citMonthly").val(citYearly / 12);

                    insurance = $("#insuranceYearly").val();

                    taxableSalary = yearlySalary - citYearly - insurance;

                    relation = $("#maritalStatus").val();

                    if (relation == "Married") {
                        if (taxableSalary <= 300000) {
                            taxYearly = taxableSalary * (1 / 100);
                            $("#taxYearly").val(taxYearly);
                            $("#taxMonthly").val(taxYearly / 12);
                        } else if (taxableSalary <= 400000) {
                            taxYearly = (300000 * (1 / 100)) + ((taxableSalary - 300000) * (15 / 100));
                            $("#taxYearly").val(taxYearly);
                            $("#taxMonthly").val(taxYearly / 12);

                        } else {
                            taxYearly = (300000 * (1 / 100)) + (100000 * (15 / 100)) + ((taxableSalary - 400000) * (25 / 100));
                            $("#taxYearly").val(taxYearly);
                            $("#taxMonthly").val(taxYearly / 12);
                        }

                    } else if (relation = "Single") {
                        if (taxableSalary <= 250000) {
                            taxYearly = taxableSalary * (1 / 100);
                            $("#taxYearly").val(taxYearly);
                            $("#taxMonthly").val(taxYearly / 12);
                        } else if (taxableSalary <= 350000) {
                            taxYearly = (250000 * (1 / 100)) + ((taxableSalary - 250000) * (15 / 100));
                            $("#taxYearly").val(taxYearly);
                            $("#taxMonthly").val(taxYearly / 12);

                        } else {
                            taxYearly = (250000 * (1 / 100)) + (100000 * (15 / 100)) + ((taxableSalary - 350000) * (25 / 100));
                            $("#taxYearly").val(taxYearly);
                            $("#taxMonthly").val(taxYearly / 12);
                        }

                    }
                }
                $("#employeeRegistrationForm").validate({
                    rules: {
                        enrollmentDate: "required",
                        username: {
                            required: true,
                            minlength: 2
                        },
                        password: {
                            required: true,
                            minlength: 4
                        },
                        usertype: "required",
                        firstname: "required",
                        lastname: "required",
                        email: {
                            required: true,
                            email: true
                        },
                        contact: {
                            required: true,
                            minlength: 7
                        },
                        gender: {
                            required: true
                        },
                        DOB: "required",
                        maritalStatus: "required",
                        address: "required",
                        salaryAmount: "required"
                    },
                    messages: {
                        enrollmentDate: "Please enter the enrollment date",
                        username: {
                            required: "Please enter the username",
                            minlength: "Your username must consist of at least 2 characters"
                        },
                        firstname: "Please enter the first name",
                        lastname: "Please enter the last name",
                        contact: {
                            required: "Please enter the contact",
                            minlength: "Your contact must consist at least 7 digits"
                        },
                        gender: {
                            required: "Please enter the gender"
                        },
                        DOB: "Please enter the DOB",
                        maritalStatus: "Please enter the marital status",
                        usertype: "Please select the User Type",
                        address: "Please enter the address",
                        salaryAmount: "Please enter the salary"

                    },
                    highlight: function (element) {
                        $(element).closest('.form-group').addClass('has-error');
                    },
                    unhighlight: function (element) {
                        $(element).closest('.form-group').removeClass('has-error');
                    },
                    errorElement: 'span',
                    errorClass: 'help-block',
                    errorPlacement: function (error, element) {
                        if (element.parent('.input-group').length) {
                            error.insertAfter(element.parent());
                        } else {
                            error.insertAfter(element);
                        }
                    }
                });
            }
    );
</script>

<style>
    .my-error-class {
        color: red;
    }

    .my-valid-class {
        color: green;
    }
</style>

<c:import url="footer.jsp"/>