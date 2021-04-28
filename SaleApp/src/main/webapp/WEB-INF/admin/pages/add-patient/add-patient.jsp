<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="col-12 grid-margin">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Add Patient</h4>
            <form:form method="post" modelAttribute="addpatient" cssClass="form-sample">
                <form:errors path="*" element="div" cssClass="alert alert-danger" />
                <p class="card-description">
                    Patient Info
                </p>

                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Name</label>
                            <div class="col-sm-9">
                                <form:input type="text" cssClass="form-control" path="name" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Date of Birth</label>
                            <div class="col-sm-9">
                                <form:input type="date" cssClass="form-control" path="dateOfBirth"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Email</label>
                            <div class="col-sm-9">
                                <form:input type="email" cssClass="form-control" path="email"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Phone Number</label>
                            <div class="col-sm-9">
                                <form:input type="text" cssClass="form-control" path="phone"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Address</label>
                            <div class="col-sm-9">
                                <form:input type="text" cssClass="form-control" path="address"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Gender</label>
                            <div class="col-sm-4">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <form:radiobutton cssClass="form-check-input"
                                                          name="membershipRadios"
                                                          id="membershipRadios1"
                                                          value="Male" checked="true" path="gender"/>
                                        Male
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <form:radiobutton cssClass="form-check-input" name="membershipRadios"
                                                          id="membershipRadios2" value="Female" path="gender"/>
                                        Female
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<%--                <div class="row">--%>
<%--                    <div class="col-md-6">--%>
<%--                        <div class="form-group row">--%>
<%--                            <label class="col-sm-3 col-form-label">User Name</label>--%>
<%--                            <div class="col-sm-9">--%>
<%--                                <input type="text" class="form-control" />--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-6">--%>
<%--                        <div class="form-group row">--%>
<%--                            <label class="col-sm-3 col-form-label">Password</label>--%>
<%--                            <div class="col-sm-9">--%>
<%--                                <input type="password" class="form-control" />--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="row">--%>
<%--                    <div class="col-md-6">--%>
<%--                        <div class="form-group row">--%>
<%--                            <label class="col-sm-3 col-form-label">Status</label>--%>
<%--                            <div class="col-sm-4">--%>
<%--                                <div class="form-check">--%>
<%--                                    <label class="form-check-label">--%>
<%--                                        <input type="radio" class="form-check-input" name="membershipRadios2" id="membershipRadios3" value="" checked>--%>
<%--                                        Active--%>
<%--                                    </label>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-sm-5">--%>
<%--                                <div class="form-check">--%>
<%--                                    <label class="form-check-label">--%>
<%--                                        <input type="radio" class="form-check-input" name="membershipRadios2" id="membershipRadios4" value="option2">--%>
<%--                                        Inactive--%>
<%--                                    </label>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                    <form:hidden path="disease" />
                    <form:hidden path="image" />
                <div class="row">
                    <div class="col-sm-12 text-right">
                        <button type="submit" class="btn btn-outline-primary">
                            <div class="row">
                                <div class="col-sm-1"><i class="mdi mdi-account-plus"></i></div>
                                <div class="col-sm-9"><strong> Create Patient</strong></div>
                            </div>
                        </button>
                    </div>
                </div>
                </form:form>
        </div>
    </div>
</div>