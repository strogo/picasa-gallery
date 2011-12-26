<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="gallery" scope="request" type="com.google.gdata.data.photos.UserFeed"/>

<html>
<head>
    <meta name="viewport" content="width=600">
    <title>${gallery.nickname} Photography</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div id="header">
    <a href="http://picasaweb.google.com/${gallery.username}" class="button"><img src="/img/picasa-logo.png">Picasaweb<span></span></a>
    <h1 id="title">${gallery.nickname} Photography</h1>
    <form onsubmit="return doSearch()"><input id="search"></form>
</div>
<div id="content">
    <ul class="albums">
        <c:forEach var="album" items="${gallery.albumEntries}">
            <li>
                <a onclick="return transitionTo(this.href)" href="/${album.name}">
                    <img src="${album.mediaThumbnails[0].url}">
                    <div class="title">
                        <span class="info">${album.photosUsed}</span>
                        ${album.title.plainText}
                    </div>
                </a>
            </li>
        </c:forEach>
    </ul>
</div>
</body>
</html>