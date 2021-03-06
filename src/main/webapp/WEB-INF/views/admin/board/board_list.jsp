<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%@ include file="../include/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">DashBoard Management</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Starter Page</li>
							</ol>


						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<!-- /.col-md-6 -->
						<div class="col-lg-6" style="max-width: 100%; flex: none;">
							<div class="card card-primary card-outline">
								<div class="card-header">
									<h5 class="m-0">게시판 검색</h5>
								</div>
								<div class="card-body">

								<!-- SEARCH FORM -->
								<form action="/admin/board/list" class="form-inline ml-3">
										<select name="searchType" class="form-control">
											<option value="all">전체</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
											<option>option 5</option>
										</select>
										<input type="text" name="searchKeyword" class="form-control" placeholder="">
										<div class="button">
											<button class="btn btn-light" style="border-color: #dce0e4;">검색</button>
											</div>
									</form>
								</div>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="card">
										<div class="card-header">
											<h3 class="card-title">전체 목록</h3>
											
										</div>
										<!-- /.card-header -->
										<div class="card-body table-responsive p-0">
											<table class="table table-hover text-nowrap">
												<thead>
													<tr>
														<th>Bno</th>
														<th>Title</th>
														<th>Writer</th>
														<th>Regdate</th>
														<th>Viewcnt</th>
													</tr>
												</thead>
												<tbody>
												<c:forEach items="${boardList}" var="boardVO" varStatus="status">
													<tr>
														<td>${boardVO.bno}</td>
														<td><a href="/admin/board/view?bno=${boardVO.bno}&page=${pageVO.page}">${boardVO.title}</a></td>
														<td>${boardVO.writer}</td>
														<td><span class="tag tag-success">
														<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/>
														</span></td>
														<td><span class="badge bg-danger">${boardVO.view_count}</span></td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
											<div class="card-footer clearfix">
											<a href="/admin/board/write" class="btn btn-outline-primary">CREATE</a>
												<ul class="pagination pagination-sm m-0 float-right">
												<c:if test="${pageVO.prev}">
												<li class="page-item">
													<a class="page-link" href="/admin/board/list?page=${pageVO.startPage-1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">이전</a>
												</li>
												</c:if>
												<c:forEach begin="${pageVO.startPage}" end="${pageVO.endPage}" var="idx">
													<li class="page-item <c:out value="${idx == pageVO.page?'active':''}"/>"><a href="/admin/board/list?page=${idx}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}" class="page-link">${idx}</a></li>
												</c:forEach>
												<c:if test="${pageVO.next}">
												<li class="page-item">
													<a class="page-link" href="/admin/board/list?page=${pageVO.endPage+1}&searchType=${pageVO.searchType}&searchKeyword=${pageVO.searchKeyword}">다음</a>
												</li>
												</c:if>
												</ul>
											</div>
										</div>
										<!-- /.card-body -->
									</div>
									<!-- /.card -->
								</div>
							</div>
							<!-- /.row -->

						</div>
						<!-- /.col-lg-6 -->
					</div>
					<!-- /.row -->

				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

<%@ include file="../include/footer.jsp"%>