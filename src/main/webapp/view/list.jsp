<%@ page import="project.app.model.user.User" %><%--
  Created by IntelliJ IDEA.
  User: alex_pro
  Date: 9/12/19
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="<c:url value="/resources/style.css" />" rel="stylesheet">

    <title>list</title>


</head>
<body>


    <div id = "mainHeader">
        <div class="buttons" id="buttons">
            <a class="btn btn-info" href="/addPost/${user.id}" id="add">add post</a>
            <a class="btn btn-info"  href="/settings/${user.id}" id="settings">settings</a>
        </div>


    </div>

    <c:forEach var="post" items="${list}">

        <div class="container">

            <div class="row alert alert-primary" id="post_row">
                <div class="col-3" id="user">
                    <div  class="btn btn-primary" id="menu">Contact</div>
                    <div class="container" id="menu-box">
                        <div >
                            <p id="user_info1">${post.user.name}</p>
                            <p id="user_info2">${post.user.email}</p>
                            <p id="user_info3">${post.user.number}</p>
                        </div>


                    </div>
                </div>

                <div class="col-9" id="info">

                    <div class="row">
                        <div class="col-10">
                            <h3>${post.topic}</h3>
                        </div>
                        <div class="col-2" id="price">
                            <h3>$${post.price}/hour</h3>
                        </div>
                    </div>

                    <div class="row" id = "description">
                        ${post.description}
                    </div>
                    <div class="row" id="button_post_row">

                        <c:if test="${user.id==post.user.id}">
                            <a class="btn btn-info" id="editbtn"   href="/editPost/${post.id}">edit</a>
                            <a class="btn btn-info" id="deletebtn" href="/deletePost/${post.id}">delete</a>

                        </c:if>
        </div>
                </div>
            </div>
        </div>
    </c:forEach>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
