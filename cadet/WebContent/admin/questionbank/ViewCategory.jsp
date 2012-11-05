<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Question Bank | Add/View Category</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="../../css/bootstrap.css">
        <style>
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
            /*div#deleteConfirmationPopup
			{
			    position:absolute;
			    display:none;
			    top:275px;
			    left:50%;
			    width:400px; 
			    margin-left:-250px;
			    border:5px solid black;
			    -webkit-box-shadow:rgba(110,110,110,.6) 10px 10px 10px;
			    border-radius:10px; 
			    padding:20px;
			    background-color:rgba(250,250,250,.8);
			}
			div#deleteConfirmationPopupTitle{
				font-weight:600;
				position:absolute;
			    display:none;
			    top:240px;
			    left:50%;
			    width:420px;
			    height:25px;
			    margin-left:-250px;
			    border:5px solid black;
			    -webkit-box-shadow:rgba(110,110,110,.6) 10px 10px 10px;
			    border-radius:10px;
			    padding-left:20px;
			    padding-top:5px; 
			    background-color:rgba(250,250,250,.8);
			}
			div#addNewCategoryPopup
			{
			    position:absolute;
			    display:none;
			    top:235px;
			    left:50%;
			    width:600px; 
			    margin-left:-250px;
			    border:5px solid black;
			    -webkit-box-shadow:rgba(110,110,110,.6) 10px 10px 10px; 
			    border-radius:10px; 
			    padding:20px;
			    background-color:rgba(250,250,250,.8);
			}
			div#addNewCategoryPopupTitle{
				font-weight:600;
				position:absolute;
			    display:none;
			    top:200px;
			    left:50%;
			    width:620px;
			    height:30px;
			    margin-left:-250px;
			    border:5px solid black;
			    -webkit-box-shadow:rgba(110,110,110,.6) 10px 10px 10px;
			    border-radius:10px;
			    padding-left:20px;
			    padding-top:5px; 
			    background-color:rgba(250,250,250,.8);
			}*/
        </style>
        <link rel="stylesheet" href="../../css/bootstrap-responsive.css">
        <link rel="stylesheet" href="../../css/main.css">

        <script src="../../js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
	</head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->
        <%
        	session.setAttribute("user", "admin");
			session.setAttribute("AdminAuth", true);
			session.setAttribute("ClientAuth", false);
			session.setAttribute("homeurl","admin/dashboard");
        %>
        <form id="form1" action="" method="POST">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">CADET</a>
                    <div class="nav-collapse collapse">
                       <ul class="nav">
                           <li class="active"><a href="#home">Home</a></li>
                           <li><a href="#questionBank">Question Bank</a></li>
                           <li><a href="#testManagement">Test Management</a></li>
                           <li><a href="#candidateCategory">Candidate Category</a></li>
                       </ul>
                    </div>
                </div>	<!--/.container -->
            </div>
        </div>	<!--/.navbar -->
        
        <div class="container">
        	<div class="row">
                <div class="accordion span2" id="accordionMenu">

                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-parent="#accordionMenu" href="#">Home</a>
                        </div>
                    </div>
    
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapse2">Question Bank</a>
                        </div>
                        <div id="collapse2" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <ul class="nav">
                                    <li><a href="#">Add/View Questions</a></li>
                                    <li><a href="#">Upload Questions</a></li>
                                    <li><a href="/cadet/admin/questionBank/ViewCategory">Add/View Category</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
    
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapse3">Test Management</a>
                        </div>
                        <div id="collapse3" class="accordion-body collapse in">
                            <div class="accordion-inner">
                                <ul class="nav">
                                    <li><a href="#">Create/View Test</a></li>
                                    <li><a href="#">Result</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
    
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionMenu" href="#collapse4">Candidate Category</a>
                        </div>
                        <div id="collapse4" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <ul class="nav">
                                    <li><a href="#">Add Category</a></li>
                                    <li><a href="#">Edit Category</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>	<!--/#accordion -->

				<div class="container span9 offset*">
                    <div class="navbar navbar-inverse">
                        <div class="navbar-inner">
                            <div class="container pull-left"><a class="brand" href="#">Add/View Category:</a></div>
                        </div>
                    </div>
                    <div>
                    	<input type="submit" id="btnSubmit" name="btnSubmit" style="display:none;"/>
		                <table id="tblCategory">
		                	<tr style="5px solid black; font-size: medium;">
		                		<th><u>Category Name</u></th>
		                		<th><u>Description</u></th>
		                		<th colspan="2">&nbsp;</th>
		                	</tr>
		                	<tr><td colspan="4" style="height:5px;"></td></tr>
		                	<c:if test="${requestScope.status eq 'success'}">
		                		<c:forEach items="${requestScope.categories}" var="category">
				                    <tr id="tr${category.categoryId}">
				                        <td>
				                            <input type="text" id="txtI${category.categoryId}" name="txtI${category.categoryId}" value="${category.categoryId}" readonly="readonly" style="display: none;"/>
				                            <input type="text" id="txtN${category.categoryId}" name="txtN${category.categoryId}" value="${category.categoryName}" readonly="readonly"/>
				                        </td>
				                        <td style="padding-left: 10px;">
    					                    <input type="text" id="txtD${category.categoryId}" name="txtD${category.categoryId}" value="${category.categoryDescription}" readonly="readonly" style="width: 300px; "/>
				                        </td>
				                        <td align="right" valign="middle" style="padding-left: 20px">
			                        		<a href="#" id="lnkEdit${category.categoryId}" name="lnkEdit${category.categoryId}" onClick="modifyCategory('Edit','${category.categoryId}')">Edit</a> | 
				                        	<a href="#deleteConfirmationPopup" id="lnkRemove${category.categoryId}" name="lnkRemove${category.categoryId}" data-toggle="modal" onClick="document.getElementById('btnSubmit').value = '${category.categoryId}'; return false;">Remove</a> 
				                        	<!-- document.getElementById('deleteConfirmationPopup').style.display = 'block'; document.getElementById('deleteConfirmationPopupTitle').style.display = 'block'; -->
				                        </td>
				                        <td valign="top" style="padding-left: 10px">
				                        	<input type="button" class="" id="btnSaveCategory${category.categoryId}" name="btnSaveCategory${category.categoryId}" value="Save" onClick="modifyCategory('Save','${category.categoryId}')" style="display: none;"/>
				                        </td>
				                    </tr>
			                    </c:forEach>
			                </c:if>
		                    <tr>
		                        <td colspan="4" style="height:50px">
		                        	<a href="#addNewCategoryPopup" id="btnAddCategory" name="btnAddCategory" role="button" class="btn btn-primary" data-toggle="modal">Add Category</a>
		                        </td>
		                    </tr>
		                </table>
		                <input type="hidden" id="hdnCategoryId" name="hdnCategoryId" />
		                <!-- <div id="addNewCategoryPopupTitle">
		                		
	                	</div> -->
		                <div id="addNewCategoryPopup" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		                	<div class="modal-header">
							    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
							    <h3 id="myModalLabel">Add New Category</h3>
							</div>
							<div class="modal-body">
							<table>
								<tr>
									<td valign="top" style="padding-top: 5px; padding-left: 20px;">Category Name: </td>
									<td><input type="text" id="txtCategoryName" name="txtCategoryName" /></td>
								</tr>
								<tr>
									<td valign="top" style="padding-top: 5px; padding-left: 20px;">Category Description: </td>
									<td><textarea id="txtCategoryDescription" name="txtCategoryDescription" style="width:350px" rows="4"></textarea></td>
								</tr>
							</table>
							</div>
							<div class="modal-footer">
								<input type="button" class="btn btn-primary" id="btnAddCategory" name="btnAddCategory" value="Add Category" onClick="addCategory()" data-dismiss="modal" aria-hidden="true"/>
							    <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Cancel</button>
							</div>
							<!-- 
								<tr>
									<td style="height:50px">
										
									</td>
									<td>
										<input type="button" class="btn btn-danger" id="btnAddCategory" name="btnAddCategory" value="Cancel" onClick="document.getElementById('addNewCategoryPopup').style.display = 'none'; document.getElementById('addNewCategoryPopupTitle').style.display = 'none'; return false;"/>
									</td>
								</tr>
							</table>
							 -->
						</div>
						<!--
		                <div id="deleteConfirmationPopupTitle">
		                		Delete Category
	                	</div>
	                	-->
		                <div id="deleteConfirmationPopup" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		                	<div class="modal-header">
							    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
							    <h3 id="myModalLabel">Delete Category</h3>
							</div>
							<div class="modal-body">
							    <p>Are you sure you want to delete the category permanently?</p>
							</div>
							<div class="modal-footer">
								<input type="button" class="btn btn-primary" id="btnAddCategory" name="btnAddCategory" value="Yes" onClick="modifyCategory('Remove','btnSubmit')" data-dismiss="modal" aria-hidden="true"/>
							    <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">No</button>
							</div>
						</div>
						 
    				</div>
                </div>
            </div>	<!--/.row div -->

        </div>	<!--/.container div -->
		
		<hr>
        <footer>
                <div class="container row">
                    <a class="span pull-right" href="#">About</a>
                    <a class="span pull-right" href="#">FAQ</a>
                    <a class="span pull-right" href="#">Contact us</a>
                    <a class="span pull-right" href="#">Help</a>
                    <a class="span pull-right" href="#">Privacy & Policy</a>
                </div>
        </footer>
		</form>
        <script src="../../js/jquery-1.8.2.js"></script>
        <script>window.jQuery || document.write('<script src="../../js/jquery-1.8.2.js"><\/script>')</script>

        <script src="../../js/bootstrap.js"></script>

        <script src="../../js/plugins.js"></script>
        <script src="../../js/main.js"></script>
        <script type="text/javascript">
	        function modifyCategory( action, categoryId ){
	        	if (action == 'Edit'){
	        		document.getElementById("txtN" + categoryId).removeAttribute("readonly",0);
	        		document.getElementById("txtD" + categoryId).removeAttribute("readonly",0);
	        		document.getElementById("btnSaveCategory" + categoryId).setAttribute("style","");
	        		document.getElementById("btnSaveCategory" + categoryId).setAttribute("class","btn btn-primary"); 
	        	}
	        	else if (action == 'Save') {
	        		categoryId = document.getElementById("txtI" + categoryId).value;
	        		categoryName = document.getElementById("txtN" + categoryId).value;
	        		categoryDescription = document.getElementById("txtD" + categoryId).value;
	        		saveCategory(categoryId, categoryName, categoryDescription);
	        	}
	        	else if (action == 'Remove') {
	        		categoryId = document.getElementById("btnSubmit").value;
	        		removeCategory(categoryId);
	        	}
	        }
	
	        function addCategory(){
	        	categoryName = document.getElementById("txtCategoryName").value;
	        	categoryDescription = document.getElementById("txtCategoryDescription").value;
	        	xmlHttp2=GetXmlHttpObject2()
	        	var url="AddCategory";
	        	url=url+"?categoryName=" + categoryName+ "&categoryDescription=" + categoryDescription;
	        	xmlHttp2.onreadystatechange=stateChanged2 
	        	xmlHttp2.open("GET",url,true)
	        	xmlHttp2.send(null)
	        }
	
	        function stateChanged2(){
	        	if(xmlHttp2.readyState==4 || xmlHttp2.readyState=="complete"){
	        		var status=xmlHttp2.responseText;
	        		if(status == "Category Added"){
	        			window.location.reload()
	        		}
	        	} 
	        }
	
	        function GetXmlHttpObject2(){
	        	var xmlHttp2=null;
	        	try{
	        	xmlHttp2=new XMLHttpRequest();
	        	}
	        	catch (e) {
	        	try {
	        	xmlHttp2=new ActiveXObject("Msxml2.XMLHTTP");
	        	}
	        	catch (e){
	        	xmlHttp2=new ActiveXObject("Microsoft.XMLHTTP");
	        	}
	        	}
	        	return xmlHttp2;
	        }
	
	        function removeCategory(categoryId){
	        	xmlHttp1=GetXmlHttpObject1()
	        	var url="RemoveCategory";
	        	url=url+"?categoryId=" + categoryId;
	        	categoryName = categoryId;
	        	xmlHttp1.onreadystatechange=stateChanged1 
	        	xmlHttp1.open("GET",url,true)
	        	xmlHttp1.send(null)
	        	}
	
	        function stateChanged1(){
	        	if(xmlHttp1.readyState==4 || xmlHttp1.readyState=="complete"){
	        		var status=xmlHttp1.responseText;
	        		if(status == "Category Removed"){
	        			document.getElementById("tr" + categoryName).setAttribute("style","display: none;");
	        		}
	        	} 
	        }
	
	        function GetXmlHttpObject1(){
	        	var xmlHttp1=null;
	        	try{
	        	xmlHttp1=new XMLHttpRequest();
	        	}
	        	catch (e) {
	        	try {
	        	xmlHttp1=new ActiveXObject("Msxml2.XMLHTTP");
	        	}
	        	catch (e){
	        	xmlHttp1=new ActiveXObject("Microsoft.XMLHTTP");
	        	}
	        	}
	        	return xmlHttp1;
	        }
	
	        function saveCategory(categoryId, categoryName, categoryDescription){
	        	xmlHttp=GetXmlHttpObject()
	        	document.getElementById("hdnCategoryId").value = categoryId;
	        	var url="EditCategory";
	        	url=url+"?categoryId=" + categoryId + "&categoryName=" + categoryName + "&categoryDescription=" + categoryDescription;
	        	cid=categoryId;
	        	//alert(url);
	        	xmlHttp.onreadystatechange=stateChanged 
	        	xmlHttp.open("GET",url,true)
	        	xmlHttp.send(null)
	        }
	
	        function stateChanged(){
	        	if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
	        		var status=xmlHttp.responseText;
	        		//alert("status: " + status);
	        		//alert("Begin:" + status + ":End" + cid + "...");
	        		if(status == "Category Edited"){
	        			document.getElementById("txtN" + cid).setAttribute("readonly","readonly");
	        			document.getElementById("txtD" + cid).setAttribute("readonly","readonly");
	        			document.getElementById("btnSaveCategory" + cid).setAttribute("class","");
	        			document.getElementById("btnSaveCategory" + cid).setAttribute("style","display: none;"); 
	        		}
	        	} 
	        }
	
	        function GetXmlHttpObject(){
	        	var xmlHttp=null;
	        	try{
	        	xmlHttp=new XMLHttpRequest();
	        	}
	        	catch (e) {
	        	try {
	        	xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	        	}
	        	catch (e){
	        	xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	        	}
	        	}
	        	return xmlHttp;
	        }
	
	        /*var table = document.getElementById(tblCategory);
	
	        var row = table.insertRow(1);
	
	        //Cell1
	        var cell1 = row.insertCell(0);
	        var element1 = document.createElement("input");
	        var element2 = document.createElement("input");
	        //CategoryName
	        element1.type = "text";
	        element1.setAttribute('id','txtI'+categoryName);
	        element1.setAttribute('name','txtI'+categoryName);
	        element1.setAttribute('value',categoryName);
	        element1.setAttribute('readonly','readonly');
	        element1.setAttribute('style','display: none;');
	        //CategoryDescription
	        element2.type = "text";
	        element2.setAttribute('id','txtD'+categoryDescription);
	        element2.setAttribute('name','txtD'+categoryDescription);
	        element2.setAttribute('value',categoryDescription);
	        element2.setAttribute('readonly','readonly');
	
	        cell1.appendChild(element1);
	        cell1.appendChild(element2);
	
	        var cell2 = row.insertCell(1);
	        var element1 = document.createElement("a");
	        var element2 = document.createElement("a");
	
	        element1.setAttribute('href','#');
	        element1.setAttribute('id','lnkEdit'+categoryName);
	        element1.setAttribute('name','lnkEdit'+categoryName);
	        element1.setAttribute('onClick',"modifyCategory('Edit','" + categoryName + "')");
	        element1.innerHTML = "Edit | ";
	
	        element2.setAttribute('href','#');
	        element2.setAttribute('id','lnkRemove'+categoryName);
	        element2.setAttribute('name','lnkRemove'+categoryName);
	        element2.setAttribute('onClick',"document.getElementById('btnSubmit').value = '" + categoryName + "'; document.getElementById('deleteConfirmationPopup').style.display = 'block'; document.getElementById('deleteConfirmationPopupTitle').style.display = 'block'; return false;");
	        element2.innerHTML = "Remove";
	
	        cell2.appendChild(element1);
	        cell2.appendChild(element2);
	
	        var cell3 = row.insertCell(2);
	        var element1 = document.createElement("input");
	
	        element1.type = "button";
	        element1.setAttribute('id','btnSaveCategory'+categoryName);
	        element1.setAttribute('name','btnSaveCategory'+categoryName);
	        element1.setAttribute('value','Save');
	        element1.setAttribute('onClick',"modifyCategory('Save','" + categoryName + "')");
	        element1.setAttribute('style','display: none;');
	        element1.setAttribute('class','');
	
	        cell3.appendChild(element1);*/
        </script>
    </body>
</html>