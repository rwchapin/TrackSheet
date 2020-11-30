<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:if test="${empty role or role ==null}">
	<c:redirect url="/login?error=Unauthorised Access for protected resource"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PROFILE</title>
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="static/css/mdb.css">
<link rel="stylesheet" type="text/css" href="static/css/style.css">
<link rel="stylesheet" type="text/css" href="static/css/all.css">
<link rel="stylesheet" type="text/css" href="static/css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="static/css/regular.css">
<link rel="stylesheet" type="text/css" href="static/css/solid.css">
<link rel="stylesheet" type="text/css" href="static/css/brands.css">
<link rel="stylesheet" type="text/css" href="static/css/svg-with-js.css">
<link rel="stylesheet" type="text/css" href="static/css/addons/datatables.min.css">
<link rel="stylesheet" type="text/css" href="static/css/addons/datatables2.min.css">
<link rel="stylesheet" type="text/css" href="static/css/addons/datatables-select.min.css">
<link rel="stylesheet" type="text/css" href="static/css/addons/datatables-select2.min.css">
<link rel="stylesheet" type="text/css" href="static/css/modules/animations-extended.min.css">
<link rel="stylesheet" type="text/css" href="static/css/styles.css">

<!-- MDB icon -->
  <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="css/mdb.min.css">
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="css/style.css">
<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


</head>
<body style="background: url(static/images/bg7.jpg) no-repeat center fixed; background-size: cover;">
<!-- HEADER -->
<jsp:include page="components/header.jsp"/>
<!-- HEADER -->

<div class="container">
  <div class="row">
    <div class="col-sm-4">
    
    <!-- Card Regular -->
<div class="card card-cascade mt-5">

  <!-- Card image -->
  <div class="view view-cascade overlay">
    <span class="rounded-circle"><img class="card-img-top rounded-circle" src="static/images/pic1.jpg" alt="Card image cap"></span>
    <a>
      <!-- <div class="mask rgba-white-slight"></div> -->
    </a>
  </div>

  <!-- Card content -->
  <div class="card-body card-body-cascade text-center">

    <!-- Title -->
    <h4 class="card-title"><strong>${user_account.fName} ${user_account.lName}</strong></h4>
    <!-- Subtitle -->
    <h6 class="font-weight-bold indigo-text py-2">${user_account.email}</h6>
    <!-- Text -->
    <p class="card-text">
    </p>

    <!-- Facebook -->
    <a type="button" class="btn-floating btn-small btn-fb"><i class="fab fa-facebook-f"></i></a>
    <!-- Twitter -->
    <a type="button" class="btn-floating btn-small btn-tw"><i class="fab fa-twitter"></i></a>
    <!-- Google + -->
    <a type="button" class="btn-floating btn-small btn-dribbble"><i class="fab fa-dribbble"></i></a>

  </div>

</div>
<!-- Card Regular -->
    
    </div>
    <div class="col-sm-8">
    <div class="container text-center mt-5">
	<h1>PROFILE</h1>
	<br>
	<h2>${msg}</h2>
		<table class="table table-success text-center">
			<tr>
				<th>ITEM</th>
				<th>DETAILS</th>
			</tr>
			<tr>
				<td>FIRST NAME</td>
				<td>${user_account.fName}</td>
			</tr>
			<tr>
				<td>LAST NAME</td>
				<td>${user_account.lName}</td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td>${user_account.email}</td>
			</tr>
		</table>
	</div>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-8"></div>
  </div>
  </div>




<Script>

const $tableID = $('#table');
const $BTN = $('#export-btn');
const $EXPORT = $('#export');

const newTr = `
<tr class="hide">
 <td class="pt-3-half" contenteditable="true">Example</td>
 <td class="pt-3-half" contenteditable="true">Example</td>
 <td class="pt-3-half" contenteditable="true">Example</td>
 <td class="pt-3-half" contenteditable="true">Example</td>
 <td class="pt-3-half" contenteditable="true">Example</td>
 <td class="pt-3-half">
   <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up" aria-hidden="true"></i></a></span>
   <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down" aria-hidden="true"></i></a></span>
 </td>
 <td>
   <span class="table-remove"><button type="button" class="btn btn-danger btn-rounded btn-sm my-0 waves-effect waves-light">Remove</button></span>
 </td>
</tr>`;

$('.table-add').on('click', 'i', () => {

  const $clone = $tableID.find('tbody tr').last().clone(true).removeClass('hide table-line');

  if ($tableID.find('tbody tr').length === 0) {

    $('tbody').append(newTr);
  }

  $tableID.find('table').append($clone);
});

$tableID.on('click', '.table-remove', function () {

  $(this).parents('tr').detach();
});

$tableID.on('click', '.table-up', function () {

  const $row = $(this).parents('tr');

  if ($row.index() === 0) {
    return;
  }

  $row.prev().before($row.get(0));
});

$tableID.on('click', '.table-down', function () {

  const $row = $(this).parents('tr');
  $row.next().after($row.get(0));
});

// A few jQuery helpers for exporting only
jQuery.fn.pop = [].pop;
jQuery.fn.shift = [].shift;

$BTN.on('click', () => {

  const $rows = $tableID.find('tr:not(:hidden)');
  const headers = [];
  const data = [];

  // Get the headers (add special header logic here)
  $($rows.shift()).find('th:not(:empty)').each(function () {

    headers.push($(this).text().toLowerCase());
  });

  // Turn all existing rows into a loopable array
  $rows.each(function () {
    const $td = $(this).find('td');
    const h = {};

    // Use the headers from earlier to name our hash keys
    headers.forEach((header, i) => {

      h[header] = $td.eq(i).text();
    });

    data.push(h);
  });

  // Output the result
  $EXPORT.text(JSON.stringify(data));
});
</Script>




	
	
	
	
<!-- JAVASCRIPTS -->

<script type="text/javascript" src="static/js/bootstrap.js"></script>
<script type="text/javascript" src="static/js/mdb.js"></script>
<script type="text/javascript" src="static/js/jquery.js"></script>
<script type="text/javascript" src="static/js/popper.js"></script>
<!-- <script type="text/javascript" src="static/js/all.js"></script> -->
<script type="text/javascript" src="static/js/scripts.js"></script>

<!-- jQuery -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Your custom scripts (optional) -->
  <script type="text/javascript"></script>


<!-- JAVASCRIPTS -->	
</body>
</html>