<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../inc/header.jsp"/>

<div class="container d-flex mt-5 justify-content-center">
   <div class="w-75 shadow p-5 rounded border">
   <%-- 
   ${pageDTO.viewPage} 
   ${pDto.viewPage} 
   참조형 매개변수는 @ModelAttribute가 생략되어있기 때문에
   맨 앞글자를 소문자로 써서 바로 받을 수 있고, @ModelAttribute("별칭")을 쓴다면
   별칭으로 받아 줄 수 있다. 
   --%>
      <h3>글상세보기</h3>
      <div class="form-group">
         <label for="subject">번호</label>
         <input type="text" class="form-control" id="bid" 
            name="bid" readonly value="${dto.bid}"/>
      </div>

      <div class="form-group">
         <label for="subject">제목</label>
         <input type="text" class="form-control" id="subject" 
            name="subject" disabled value="${dto.subject}"/>
      </div>

      <div class="form-group">
         <label for="contents">내용</label>
         <textarea class="form-control" id="contents" 
            name="contents" rows="4" disabled>${dto.contents}</textarea>
      </div>
      <div class="form-group">
         <label for="writer">글쓴이</label>
         <input type="text" class="form-control" id="writer" 
            name="writer" disabled value="${dto.writer}"/>
      </div>
      <div class="form-group mt-4">
         <button type="submit" id="btn-modify" class="btn btn-primary me-2">수정하기</button>
         <button type="button" id="btn-list" class="btn btn-primary">리스트</button>
      </div>
   </div>
</div>
<script>
	$("#btn-list").click(()=>{
		location.href="<c:url value='/board/list.do?viewPage=${pDto.viewPage}'/>";
	});
	$("#btn-modify").click(()=>{
		location.href="<c:url value='/board/modify.do?bid=${dto.bid}'/>";
	});
</script>

<jsp:include page="../inc/footer.jsp"/>
