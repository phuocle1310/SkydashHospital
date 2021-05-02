<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row" style="border: #0B0F32">
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-4 col-3">
                        <p class="card-title">All Doctors</p>
                    </div>
                    <div class="col-sm-8 col-9 text-right m-b-20">
                        <a href="/doctors/add-doctor" class="btn btn-outline-info btn-sm"><i class="mdi mdi-account-plus"></i> Add Doctor</a>
                    </div>
                </div>
<%--                <c:forEach items="departments" var="department">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-12 text-center ">--%>
<%--                            <p class="card-title">${department.name}</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                <c:forEach items="${doctors}" var="doctor">
<%--                    <c:if test="${doctor.department.id == department.id}">--%>
                <div class="row">
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="doctor-img">
                                        <a class="avatar" href="#"><img alt="" src="<c:url value="/resources/images/${doctor.image}"/>" class="rounded-circle"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 text-md-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-info btn-sm " id="dropdownMenuIconButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ti-settings"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton3">
<%--                                            &departmentId=$${doctor.departmentid.id}--%>
                                            <a class="dropdown-item" href="/doctors/edit-doctor/?doctorId=${doctor.id}" >Edit</a>
                                            <form action="/doctors/${doctor.id}" method="post" id="remove">
                                                <button type="submit" class="dropdown-item" onclick="showSwal('warning-message-and-cancel')">
                                                    Delete
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">${doctor.name}</a></h4>
                            <div class="doc-prof">${doctor.email}</div>
                            <div class="doc-prof">${doctor.phone}</div>
                            <div class="user-country">
                                    ${doctor.address}
                            </div>
                        </div>
                    </div>
                </div>
                <br>
<%--                    </c:if>--%>
                </c:forEach>
<%--                </c:forEach>--%>
            </div>
        </div>
    </div>
</div>