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
                        <a href="/add-doctor" class="btn btn-outline-primary btn-sm"><i class="mdi mdi-account-plus"></i> Add Doctor</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="doctor-img">
                                        <a class="avatar" href="profile.html"><img alt="" src="<c:url value="/images/faces/face2.jpg"/>" class="rounded-circle"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 text-md-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-primary btn-sm " id="dropdownMenuIconButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ti-settings"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton3">
                                            <a class="dropdown-item" href="/edit-doctor" >Edit</a>
                                            <a class="dropdown-item" href="#">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Cristina Groves</a></h4>
                            <div class="doc-prof">Gynecologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Franciscoaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="doctor-img">
                                        <a class="avatar" href="profile.html"><img alt="" src="<c:url value="/images/faces/face2.jpg"/>" class="rounded-circle"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 text-md-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle" id="dropdownMenuIconButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ti-settings"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton3">
                                            <a class="dropdown-item" href="#" >Edit</a>
                                            <a class="dropdown-item" href="#">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Cristina Groves</a></h4>
                            <div class="doc-prof">Gynecologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Franciscoaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="doctor-img">
                                        <a class="avatar" href="profile.html"><img alt="" src="<c:url value="/images/faces/face2.jpg"/>" class="rounded-circle"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 text-md-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle" id="dropdownMenuIconButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ti-settings"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton3">
                                            <a class="dropdown-item" href="#" >Edit</a>
                                            <a class="dropdown-item" href="#">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Cristina Groves</a></h4>
                            <div class="doc-prof">Gynecologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Franciscoaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="doctor-img">
                                        <a class="avatar" href="profile.html"><img alt="" src="<c:url value="/images/faces/face2.jpg"/>"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 text-md-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle" id="dropdownMenuIconButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ti-settings"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton3">
                                            <a class="dropdown-item" href="#" >Edit</a>
                                            <a class="dropdown-item" href="#">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Cristina Groves</a></h4>
                            <div class="doc-prof">Gynecologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Franciscoaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="doctor-img">
                                        <a class="avatar" href="profile.html"><img alt="" src="<c:url value="/images/faces/face2.jpg"/>" class="rounded-circle"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 text-md-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle" id="dropdownMenuIconButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ti-settings"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton3">
                                            <a class="dropdown-item" href="#" >Edit</a>
                                            <a class="dropdown-item" href="#">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Cristina Groves</a></h4>
                            <div class="doc-prof">Gynecologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Franciscoaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="doctor-img">
                                        <a class="avatar" href="profile.html"><img alt="" src="<c:url value="/images/faces/face2.jpg"/>"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 text-md-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle" id="dropdownMenuIconButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ti-settings"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton3">
                                            <a class="dropdown-item" href="#" >Edit</a>
                                            <a class="dropdown-item" href="#">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Cristina Groves</a></h4>
                            <div class="doc-prof">Gynecologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Franciscoaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="doctor-img">
                                        <a class="avatar" href="profile.html"><img alt="" src="<c:url value="/images/faces/face2.jpg"/>"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 text-md-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle" id="dropdownMenuIconButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ti-settings"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton3">
                                            <a class="dropdown-item" href="#" >Edit</a>
                                            <a class="dropdown-item" href="#">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Cristina Groves</a></h4>
                            <div class="doc-prof">Gynecologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Franciscoaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4  col-lg-3">
                        <div class="profile-widget">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="doctor-img">
                                        <a class="avatar" href="profile.html"><img alt="" src="<c:url value="/images/faces/face2.jpg"/>"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 text-md-right">
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle" id="dropdownMenuIconButton3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="ti-settings"></i>
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton3">
                                            <a class="dropdown-item" href="#" >Edit</a>
                                            <a class="dropdown-item" href="#">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h4 class="doctor-name text-ellipsis"><a href="profile.html">Cristina Groves</a></h4>
                            <div class="doc-prof">Gynecologist</div>
                            <div class="user-country">
                                <i class="fa fa-map-marker"></i> United States, San Franciscoaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>