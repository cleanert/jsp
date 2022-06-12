<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>test</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <h1>지식in</h1>
    <div class="container-md pt-5 mt-5 testt">
      <h2>테스트</h2>
          <div class="row pt-5">
            <div class="col-8">
              <table class="table table-sm">
                  <thead>
                      <tr>
                          <th scope="col" width="60%">제목</th>
                          <th scope="col" width="15%">작성자</th>
                          <th scope="col" width="15%">게시일</th>
                      </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="board" items="${boardList}">
                      <tr>
                          <td><a href="#">${board.title}</a></td>
                          <td>${board.writer}</td>
                          <td><fmt:formatDate value="${board.Date}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                      </tr>
                    </c:forEach>
                  </tbody>
              </table>
              <div>
                  <a type="button" class="btn btn-primary" href="#">테스트 쓰기</a>
              </div>
            </div>
            <div class="col-3 test">
              <a type="button" class="btn btn-primary" href="#">로그인</a>
              <a type="button" class="btn btn-primary" href="#">회원가입</a>
            </div>
          </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
  </body>
</html>