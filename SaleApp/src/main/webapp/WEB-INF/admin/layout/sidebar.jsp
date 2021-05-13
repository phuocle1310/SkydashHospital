
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="/">
                <i class="icon-grid menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <i class="icon-layout menu-icon"></i>
                <span class="menu-title">Doctor</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="/doctors">All Doctors</a></li>
                    <li class="nav-item"> <a class="nav-link" href="/doctors/add-doctor">Add Doctor</a></li>
                    <li class="nav-item"><a class="nav-link" href="/doctorchedules">All Doctor Schedule</a></li>
                    <li class="nav-item"><a class="nav-link" href="/doctorchedules/add-doctorschedule">Add Doctor Schedule</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#shift" aria-expanded="false" aria-controls="form-elements">
                <i class="icon-columns menu-icon"></i>
                <span class="menu-title">Shift</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="shift">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="/shifts">All Shifts</a></li>
                    <li class="nav-item"> <a class="nav-link" href="/shifts/add-shift">Add Shift</a></li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts">
                <i class="icon-columns menu-icon"></i>
                <span class="menu-title">Patients</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="charts">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/patients" /> ">All Patients</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/patients/add-patient" /> ">Add Patient</a></li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
                <i class="icon-columns menu-icon"></i>
                <span class="menu-title">Bills</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="tables">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/bills" /> ">All Bills</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/bills/add-bill" /> ">Add Bill</a></li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
                <i class="icon-columns menu-icon"></i>
                <span class="menu-title">Drugs</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="icons">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/drugs" /> ">All Drugs</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/drugs/add-drug" /> ">Add Drug</a></li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                <i class="icon-columns menu-icon"></i>
                <span class="menu-title">Account</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/accounts" />">All Accounts</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/accounts/add-account" /> ">Add Account</a></li>
                </ul>
            </div>
        </li>

        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#error" aria-expanded="false" aria-controls="error">
                <i class="icon-columns menu-icon"></i>
                <span class="menu-title">Appointment</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="error">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/appointments" /> ">All Appointments</a></li>
                </ul>
            </div>
        </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
                        <i class="icon-head menu-icon"></i>
                        <span class="menu-title">Departments</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="form-elements">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="/departments"> All Departments </a></li>
                            <li class="nav-item"> <a class="nav-link" href="/departments/add-department"> Add Department </a></li>
                        </ul>
                    </div>
                </li>
    </ul>
</nav>