<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRACKSHEET</title>
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
<!-- <body class="tsbg"> -->
<body style="background: url(static/images/bgts1.jpg) no-repeat center fixed; background-size: cover;">


<!-- HEADER -->
<jsp:include page="components/header.jsp"/>
<!-- HEADER -->

<%-- <h1>TRACKSHEET, ${msg}</h1> --%>

<div class="tsContainer blue-grey darken-4" >
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="tsd-tab" data-toggle="tab" href="#tsd" role="tab" aria-controls="tsd" aria-selected="true"><span class="tsnavhead">TRACKSHEET DETAILS</span></a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="input-tab" data-toggle="tab" href="#input" role="tab" aria-controls="input" aria-selected="false"><span class="tsnavhead">INPUTS</span></a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="monout-tab" data-toggle="tab" href="#monout" role="tab" aria-controls="monout" aria-selected="false"><span class="tsnavhead">MON OUTPUTS</span></a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="fohout-tab" data-toggle="tab" href="#fohout" role="tab" aria-controls="fohout" aria-selected="false"><span class="tsnavhead">FOH OUTPUTS</span></a>
  </li>
   <li class="nav-item" role="presentation">
    <a class="nav-link" id="wt-tab" data-toggle="tab" href="#wt" role="tab" aria-controls="wt" aria-selected="false"><span class="tsnavhead">WIRELESS INPUTS</span></a>
  </li>
   <li class="nav-item" role="presentation">
    <a class="nav-link" id="wr-tab" data-toggle="tab" href="#wr" role="tab" aria-controls="wr" aria-selected="false"><span class="tsnavhead">WIRELESS OUTPUTS</span></a>
  </li>
  <li>
  <div></div>
  </li>
   <li>
  <div class="dropdown">
  <button class="navbarButton4" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    TRACKSHEET OPTIONS
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">New</a>
    <a class="dropdown-item" href="#">Copy</a>
    <a class="dropdown-item" href="#">Share</a>
    <a class="dropdown-item" href="#">Close</a>
  </div>
</div>
  </li>
</ul>


<!-- TAB CONTENT -->
<div class="tab-content" id="myTabContent">

<!-- NEW FIRST TAB -->
<div class="tab-pane fade show active" id="tsd" role="tabpanel" aria-labelledby="tsd-tab">  
<!--   Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4"><span class="navbarMain">TRACKSHEET DETAILS</span></h3>
  <div class="card-body blue-grey lighten-5">
    <div id="tsdtable" class="table-editable">
      <table name="tsd" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">Date</th>
            <th class="text-center">TrackSheet Name</th>
            <th class="text-center">Location</th>
            <th class="text-center">Event Name</th>
            <th class="text-center">Talent Name</th>
            <th class="text-center">Notes</th>
            <th class="text-center">Function</th>
          </tr>
        </thead>
        <tbody>
          <tr class="tsTR white black-text" style="">
            <td class="pt-3-half" contenteditable="true"><input class="calender" type="date"/></td>
            <td class="pt-3-half" contenteditable="true" id="tsName"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td>
       		  <span class="table-remove"><button type="button"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
          </tr>
        
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
 <!--  NEW FIRST TAB -->

<!-- NOT FIRST TAB -->
<div class="tab-pane fade" id="input" role="tabpanel" aria-labelledby="input-tab">  
 <!--  Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">INPUTS</h3>
    <div class="card-body blue-grey lighten-5">
    <div id="table" class="table-editable">
      <span class="table-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
      <table name="inputs" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">SubSnake Number</th>
            <th class="text-center">StageBox Input Number</th>
            <th class="text-center">FOH Input Number</th>
            <th class="text-center">MON Input Number</th>
            <th class="text-center">Source Name</th>
            <th class="text-center">Input Type</th>
            <th class="text-center">Mic/DI - Make/Model</th>
            <th class="text-center">Stand Type</th>
            <th class="text-center">Function</th>
            <th class="text-center">Function</th>
            <th class="text-center">Function</th>
            <th class="text-center">Function</th>
          </tr>
        </thead>
        <tbody>
          <tr class="tsTR white black-text" style="">
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td>
       		  <span class="table-remove"><button type="button"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table-remove"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table-remove"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
        
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!--   FIRST TAB -->
  
<!-- SECOND TAB -->
 <div class="tab-pane fade" id="monout" role="tabpanel" aria-labelledby="monout-tab">
  
   <!-- Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">MONITOR OUTPUTS</h3>
    <div class="card-body blue-grey lighten-5">
    <div id="table2" class="table-editable">
      <span class="table2-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
      <table name="monout" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">OUTPUT TYPE</th>
            <th class="text-center">OUTPUT NUMBER</th>
            <th class="text-center">OUTPUT FORMAT</th>
            <th class="text-center">OUTPUT DESTINATION</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
          </tr>
        </thead>
        <tbody>
          <tr class="tsTR white black-text" style="">
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td>
       		  <span class="table2-"><button type="button"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table2-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table2-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table2-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
        
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!-- SECOND TAB -->

<!-- THIRD TAB -->  	
  <div class="tab-pane fade" id="fohout" role="tabpanel" aria-labelledby="fohout-tab">
     <!-- Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">FOH OUTPUTS</h3>
    <div class="card-body blue-grey lighten-5">
    <div id="table3" class="table-editable">
      <span class="table3-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
      <table name="fohout" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">OUTPUT TYPE</th>
            <th class="text-center">OUTPUT NUMBER</th>
            <th class="text-center">OUTPUT FORMAT</th>
            <th class="text-center">OUTPUT DESTINATION</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
          </tr>
        </thead>
        <tbody>
          <tr class="tsTR white black-text" style="">
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td>
       		  <span class="table3-"><button type="button"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table3-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table3-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table3-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
        
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!-- THIRD TAB  -->

<!-- FOURTH TAB -->  
  <div class="tab-pane fade" id="wt" role="tabpanel" aria-labelledby="wt-tab">
     <!-- Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">WIRELESS AUDIO INPUTS</h3>
   <div class="card-body blue-grey lighten-5">
    <div id="table4" class="table-editable">
      <span class="table4-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
      <table name="wai" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">CHANNEL NAME</th>
            <th class="text-center">TYPE (MIC/INST)</th>
            <th class="text-center">WIRELESS RECEIVER MAKE</th>
            <th class="text-center">WIRELESS RECEIVER MODEL</th>
            <th class="text-center">FREQUENCY</th>
            <th class="text-center">WIRELESS TRANSMITTER MODEL</th>
            <th class="text-center">MIC CAPSULE</th>
            <th class="text-center">CONNECTOR TYPE</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
          </tr>
        </thead>
        <tbody>
          <tr class="tsTR white black-text" style="">
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td>
       		  <span class="table4-"><button type="button"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table4-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table4-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table4-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
        
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!-- FOURTH TAB  -->

<!-- FIFTH TAB -->
  <div class="tab-pane fade" id="wr" role="tabpanel" aria-labelledby="wr-tab">
    <!--  Editable table -->
<div class="card blue-grey darken-4">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">WIRELESS AUDIO OUTPUTS</h3>
    <div class="card-body blue-grey lighten-5">
    <div id="table5" class="table-editable">
      <span class="table5-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="" aria-hidden="true"><span><svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-plus-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg></span></i></a></span>
      <table name="wao" class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr class="blue-grey darken-4 mdb-color white-text">
            <th class="text-center">MIX NUMBER</th>
            <th class="text-center">PERSON NAME/INSTRUMENT</th>
            <th class="text-center">PACK NUMBER</th>
            <th class="text-center">WIRELESS TRANSMITTER MAKE</th>
            <th class="text-center">WIRELESS TRANSMITTER MODEL</th>
            <th class="text-center">FREQUENCY</th>
            <th class="text-center">WIRELESS RECEIVER MODEL</th>
            <th class="text-center">IEM MODEL</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
            <th class="text-center">Functions</th>
          </tr>
        </thead>
        <tbody>
          <tr class="tsTR white black-text" style="">
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td class="pt-3-half" contenteditable="true"></td>
            <td>
       		  <span class="table5-"><button type="button"
                  class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
            </td>
            <td>
       		  <span class="table5-"><button type="button"
                  class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
            </td>
            <td>
            	<span class="table5-"><button type="button"
                  class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
            </td>
            <td>
            	<span class="table5-remove" id="tscellfix"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
        
        </tbody>
      </table>
    </div>
  </div>
</div>
<!-- Editable table -->
  </div>
<!--   FIFTH TAB -->
</div>
<!-- END TAB CONTENT -->
</div>


<!-- ORIGINAL TABLE
Editable table
<div class="card">
  <h3 class="card-header text-center font-weight-bold text-uppercase py-4">Editable table</h3>
  <div class="card-body">
    <div id="table" class="table-editable">
      <span class="table-add float-right mb-3 mr-2"><a href="#!" class="text-success"><i
            class="fas fa-plus fa-2x" aria-hidden="true"></i></a></span>
      <table class="table table-bordered table-responsive-md table-striped text-center">
        <thead>
          <tr>
            <th class="text-center">Person Name</th>
            <th class="text-center">Age</th>
            <th class="text-center">Company Name</th>
            <th class="text-center">Country</th>
            <th class="text-center">City</th>
            <th class="text-center">Sort</th>
            <th class="text-center">Remove</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="pt-3-half" contenteditable="true">Aurelia Vega</td>
            <td class="pt-3-half" contenteditable="true">30</td>
            <td class="pt-3-half" contenteditable="true">Deepends</td>
            <td class="pt-3-half" contenteditable="true">Spain</td>
            <td class="pt-3-half" contenteditable="true">Madrid</td>
            <td class="pt-3-half">
              <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up"
                    aria-hidden="true"></i></a></span>
              <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down"
                    aria-hidden="true"></i></a></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
          This is our clonable table line
          <tr>
            <td class="pt-3-half" contenteditable="true">Guerra Cortez</td>
            <td class="pt-3-half" contenteditable="true">45</td>
            <td class="pt-3-half" contenteditable="true">Insectus</td>
            <td class="pt-3-half" contenteditable="true">USA</td>
            <td class="pt-3-half" contenteditable="true">San Francisco</td>
            <td class="pt-3-half">
              <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up"
                    aria-hidden="true"></i></a></span>
              <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down"
                    aria-hidden="true"></i></a></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
          This is our clonable table line
          <tr>
            <td class="pt-3-half" contenteditable="true">Guadalupe House</td>
            <td class="pt-3-half" contenteditable="true">26</td>
            <td class="pt-3-half" contenteditable="true">Isotronic</td>
            <td class="pt-3-half" contenteditable="true">Germany</td>
            <td class="pt-3-half" contenteditable="true">Frankfurt am Main</td>
            <td class="pt-3-half">
              <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up"
                    aria-hidden="true"></i></a></span>
              <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down"
                    aria-hidden="true"></i></a></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
          This is our clonable table line
          <tr class="hide">
            <td class="pt-3-half" contenteditable="true">Elisa Gallagher</td>
            <td class="pt-3-half" contenteditable="true">31</td>
            <td class="pt-3-half" contenteditable="true">Portica</td>
            <td class="pt-3-half" contenteditable="true">United Kingdom</td>
            <td class="pt-3-half" contenteditable="true">London</td>
            <td class="pt-3-half">
              <span class="table-up"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-up"
                    aria-hidden="true"></i></a></span>
              <span class="table-down"><a href="#!" class="indigo-text"><i class="fas fa-long-arrow-alt-down"
                    aria-hidden="true"></i></a></span>
            </td>
            <td>
              <span class="table-remove"><button type="button"
                  class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>
Editable table -->


<script>
//FIRST TAB TABLE SCRIPT
const $tableID = $('#table');
const $BTN = $('#export-btn');
const $EXPORT = $('#export');

const newTr = `
<tr class="hide">
	<td class="pt-3-half" contenteditable="true"></td>
    <td class="pt-3-half" contenteditable="true"></td>
    <td class="pt-3-half" contenteditable="true"></td>
    <td class="pt-3-half" contenteditable="true"></td>
    <td class="pt-3-half" contenteditable="true"></td>
    <td class="pt-3-half" contenteditable="true"></td>
    <td class="pt-3-half" contenteditable="true"></td>
    <td class="pt-3-half" contenteditable="true"></td>
    <td>
		  <span class="table-remove"><button type="button"
          class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
    </td>
    <td>
		  <span class="table-remove"><button type="button"
          class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
    </td>
    <td>
    	<span class="table-remove"><button type="button"
          class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
    </td>
    <td>
    	<span class="table-remove" id="tscellfix"><button type="button"
          class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
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

//A few jQuery helpers for exporting only
jQuery.fn.pop = [].pop;
jQuery.fn.shift = [].shift;

$BTN.on('click', () => {

  const $rows = $tableID.find('tr:not(:hidden)');
  const headers = [];
  const data = [];

  //Get the headers (add special header logic here)
  $($rows.shift()).find('th:not(:empty)').each(function () {

    headers.push($(this).text().toLowerCase());
  });

  //Turn all existing rows into a loopable array
  $rows.each(function () {
    const $td = $(this).find('td');
    const h = {};

    //Use the headers from earlier to name our hash keys
    headers.forEach((header, i) => {

      h[header] = $td.eq(i).text();
    });

    data.push(h);
  });

  //Output the result
  $EXPORT.text(JSON.stringify(data));
});
//INPUT TAB TABLE SCRIPTS

//MON OUTPUTS TAB TABLE SCRIPTS
const $table2ID = $('#table2');
//const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
 const $BTN2 = $('#export-btn2');
 const $EXPORT2 = $('#export2');

 const newTr2 = `
<tr class="hide">
	 <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td>
		  <span class="table2-remove"><button type="button"
           class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
     </td>
     <td>
		  <span class="table2-remove"><button type="button"
           class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
     </td>
     <td>
     	<span class="table2-remove"><button type="button"
           class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
     </td>
     <td>
     	<span class="table2-remove" id="tscellfix"><button type="button"
           class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
     </td>
</tr>`;

 $('.table2-add').on('click', 'i', () => {
	 

   const $clone = $table2ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
   console.log("$table2ID");

   if ($table2ID.find('tbody tr').length === 0) {
	   
     $('tbody').append(newTr2);
   }
   
   $table2ID.find('table').append($clone);
 });

 $table2ID.on('click', '.table2-remove', function () {

   $(this).parents('tr').detach();
 });

 $table2ID.on('click', '.table2-up', function () {

   const $row = $(this).parents('tr');

   if ($row.index() === 0) {
     return;
   }

   $row.prev().before($row.get(0));
 });

 $table2ID.on('click', '.table2-down', function () {

   const $row = $(this).parents('tr');
   $row.next().after($row.get(0));
 });

 //A few jQuery helpers for exporting only
 jQuery.fn.pop = [].pop;
 jQuery.fn.shift = [].shift;

 $BTN2.on('click', () => {

   const $rows = $table2ID.find('tr:not(:hidden)');
   const headers = [];
   const data = [];

   //Get the headers (add special header logic here)
   $($rows.shift()).find('th:not(:empty)').each(function () {

     headers.push($(this).text().toLowerCase());
   });

   //Turn all existing rows into a loopable array
   $rows.each(function () {
     const $td = $(this).find('td');
     const h = {};

     //Use the headers from earlier to name our hash keys
     headers.forEach((header, i) => {

       h[header] = $td.eq(i).text();
     });

     data.push(h);
   });

   //Output the result
   $EXPORT.text(JSON.stringify(data));
 });
//END MON OUTPUTS TAB SCRIPTS
</script>

<script>
//FOH OUTPUTS TAB TABLE SCRIPTS
const $table3ID = $('#table3');
//const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
 const $BTN3 = $('#export-btn3');
 const $EXPORT3 = $('#export3');

 const newTr3 = `
<tr class="hide">
	 <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td>
		  <span class="table3-remove"><button type="button"
           class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
     </td>
     <td>
		  <span class="table3-remove"><button type="button"
           class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
     </td>
     <td>
     	<span class="table3-remove"><button type="button"
           class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
     </td>
     <td>
     	<span class="table3-remove" id="tscellfix"><button type="button"
           class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
     </td>
</tr>`;

 $('.table3-add').on('click', 'i', () => {
	 

   const $clone = $table3ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
   

   if ($table3ID.find('tbody tr').length === 0) {
	   
     $('tbody').append(newTr);
   }
   
   $table3ID.find('table').append($clone);
 });

 $table3ID.on('click', '.table3-remove', function () {

   $(this).parents('tr').detach();
 });

 $table3ID.on('click', '.table3-up', function () {

   const $row = $(this).parents('tr');

   if ($row.index() === 0) {
     return;
   }

   $row.prev().before($row.get(0));
 });

 $table3ID.on('click', '.table3-down', function () {

   const $row = $(this).parents('tr');
   $row.next().after($row.get(0));
 });

 //A few jQuery helpers for exporting only
 jQuery.fn.pop = [].pop;
 jQuery.fn.shift = [].shift;

 $BTN3.on('click', () => {

   const $rows = $table3ID.find('tr:not(:hidden)');
   const headers = [];
   const data = [];

   //Get the headers (add special header logic here)
   $($rows.shift()).find('th:not(:empty)').each(function () {

     headers.push($(this).text().toLowerCase());
   });

   //Turn all existing rows into a loopable array
   $rows.each(function () {
     const $td = $(this).find('td');
     const h = {};

     //Use the headers from earlier to name our hash keys
     headers.forEach((header, i) => {

       h[header] = $td.eq(i).text();
     });

     data.push(h);
   });

   //Output the result
   $EXPORT.text(JSON.stringify(data));
 });
//END FOH OUTPUTS TAB SCRIPTS
</script>

<script>
//WIRELESS INPUTS TAB TABLE SCRIPTS
const $table4ID = $('#table4');
//const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
 const $BTN4 = $('#export-btn4');
 const $EXPORT4 = $('#export4');

 const newTr4 = `
<tr class="hide">
	 <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td>
		  <span class="table4-remove"><button type="button"
           class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
     </td>
     <td>
		  <span class="table4-remove"><button type="button"
           class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
     </td>
     <td>
     	<span class="table4-remove"><button type="button"
           class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
     </td>
     <td>
     	<span class="table4-remove" id="tscellfix"><button type="button"
           class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
     </td>
</tr>`;

 $('.table4-add').on('click', 'i', () => {
	 

   const $clone = $table4ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
   

   if ($table4ID.find('tbody tr').length === 0) {
	   
     $('tbody').append(newTr);
   }
   
   $table4ID.find('table').append($clone);
 });

 $table4ID.on('click', '.table4-remove', function () {

   $(this).parents('tr').detach();
 });

 $table4ID.on('click', '.table4-up', function () {

   const $row = $(this).parents('tr');

   if ($row.index() === 0) {
     return;
   }

   $row.prev().before($row.get(0));
 });

 $table4ID.on('click', '.table4-down', function () {

   const $row = $(this).parents('tr');
   $row.next().after($row.get(0));
 });

 //A few jQuery helpers for exporting only
 jQuery.fn.pop = [].pop;
 jQuery.fn.shift = [].shift;

 $BTN4.on('click', () => {

   const $rows = $table4ID.find('tr:not(:hidden)');
   const headers = [];
   const data = [];

   //Get the headers (add special header logic here)
   $($rows.shift()).find('th:not(:empty)').each(function () {

     headers.push($(this).text().toLowerCase());
   });

   //Turn all existing rows into a loopable array
   $rows.each(function () {
     const $td = $(this).find('td');
     const h = {};

     //Use the headers from earlier to name our hash keys
     headers.forEach((header, i) => {

       h[header] = $td.eq(i).text();
     });

     data.push(h);
   });

  // Output the result
   $EXPORT.text(JSON.stringify(data));
 });
//END WIRELESS INPUTS TAB SCRIPTS
</script>

<script>
//WIRELESS OUTPUTS TAB TABLE SCRIPTS
const $table5ID = $('#table5');
//const $tableID = document.getElementsByTagName('TABLE').getElementsByName()    
 const $BTN5 = $('#export-btn5');
 const $EXPORT5 = $('#export5');

 const newTr5 = `
<tr class="hide">
	 <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td class="pt-3-half" contenteditable="true"></td>
     <td>
		  <span class="table5-remove"><button type="button"
           class="btn btn-success btn-rounded btn-sm my-0">Submit</button></span>     
     </td>
     <td>
		  <span class="table5-remove"><button type="button"
           class="btn btn-warning btn-rounded btn-sm my-0">Copy</button></span>     
     </td>
     <td>
     	<span class="table5-remove"><button type="button"
           class="btn btn-primary btn-rounded btn-sm my-0">Paste</button></span>
     </td>
     <td>
     	<span class="table5-remove" id="tscellfix"><button type="button"
           class="btn btn-danger btn-rounded btn-sm my-0">Remove</button></span>
     </td>
</tr>`;

 $('.table5-add').on('click', 'i', () => {
	 

   const $clone = $table5ID.find('tbody tr').last().clone(true).removeClass('hide table-line');
   

   if ($table5ID.find('tbody tr').length === 0) {
	   
     $('tbody').append(newTr);
   }
   
   $table5ID.find('table').append($clone);
 });

 $table5ID.on('click', '.table5-remove', function () {

   $(this).parents('tr').detach();
 });

 $table5ID.on('click', '.table5-up', function () {

   const $row = $(this).parents('tr');

   if ($row.index() === 0) {
     return;
   }

   $row.prev().before($row.get(0));
 });

 $table5ID.on('click', '.table5-down', function () {

   const $row = $(this).parents('tr');
   $row.next().after($row.get(0));
 });

 //A few jQuery helpers for exporting only
 jQuery.fn.pop = [].pop;
 jQuery.fn.shift = [].shift;

 $BTN5.on('click', () => {

   const $rows = $table5ID.find('tr:not(:hidden)');
   const headers = [];
   const data = [];

   //Get the headers (add special header logic here)
   $($rows.shift()).find('th:not(:empty)').each(function () {

     headers.push($(this).text().toLowerCase());
   });

   //Turn all existing rows into a loopable array
   $rows.each(function () {
     const $td = $(this).find('td');
     const h = {};

     //Use the headers from earlier to name our hash keys
     headers.forEach((header, i) => {

       h[header] = $td.eq(i).text();
     });

     data.push(h);
    });

   //Output the result
    $EXPORT.text(JSON.stringify(data));
  });
//END WIRELESS OUTPUTS TAB SCRIPTS
</script>

<script>
//js
var td = document.getElementById('tsName')

td.addEventListener('input', function(){
    console.log(td.innerHTML)
})
</script>

<!-- JAVASCRIPTS -->

<script type="text/javascript" src="static/js/bootstrap.js"></script>
<script type="text/javascript" src="static/js/mdb.js"></script>
<script type="text/javascript" src="static/js/jquery.js"></script>
<script type="text/javascript" src="static/js/popper.js"></script>
<!-- <script type="text/javascript" src="static/js/all.js"></script> -->
<!-- <script type="text/javascript" src="static/js/scripts.js"></script>
<script type="text/javascript" src="tsScripts.js"></script> -->

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