<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="<c:url value="/vendors/chart.js/Chart.min.js"/>"></script>

<script>
    $(document).ready(function() {
        $('#mytable').DataTable();
    })
</script>
<script>
    function myAlertFunction(action) {
        action.preventDefault()
        swal({
                title: "Remove book?",
                text: "Watch out",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes.",
                cancelButtonText: "No.",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function(isConfirm) {
                if (isConfirm) {
                    swal({
                        title: "Deleted.",
                        text: "Done.",
                        type: "success"
                    }, function() {
                        $("#remove_book").submit();
                    });
                } else {
                    swal("Cancelled", "Not done.", "error");
                }
            });
    }
</script>

<script src="<c:url value="/resources/vendors/datatables.net/jquery.dataTables.js"/>"></script>
<script src="<c:url value="/resources/vendors/datatables.net-bs4/dataTables.bootstrap4.js"/>"></script>
<script src="<c:url value="/resources/js/dataTables.select.min.js"/>"></script>
<script src="<c:url value="/resources/vendors/sweetalert/sweetalert.min.js" />"></script>
<script src="<c:url value="/resources/js/alerts.js"/>"></script>