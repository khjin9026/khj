<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../include/header.jsp" %>

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
						<div class="col-lg-12">

							<!-- right column -->
							<div class="col-md-12">
								<!-- general form elements disabled -->
								<div class="card card-warning">
									<div class="card-header">
										<h3 class="card-title">READ Board</h3>
									</div>
									<!-- /.card-header -->
									<div class="card-body">
										<form role="form">
											<div class="row">
												<div class="col-sm-12">
													<!-- text input -->
													<div class="form-group">
														<label>Title</label>
														<br>${boardVO.title}
													</div>
												</div>
												<div class="col-sm-12">
													<!-- textarea -->
													<div class="form-group">
														<label>Content</label>
														<br>
														<textarea name="content" class="form-control" rows="3"
													placeholder="내용 입력" disabled>${boardVO.content}</textarea>
														
													</div>
												</div>
												<div class="col-sm-12">
													<!-- text input -->
													<div class="form-group">
														<label>Writer</label>
														<br>${boardVO.writer}
													</div>
												</div>

											</div>
											<div class="box-footer">
										    <a href="/admin/board/update?bno=${boardVO.bno}" class="btn btn-warning">업데이트</a>
											<button type="submit" class="btn btn-danger">삭제</button>
											<a href="/admin/board/list" class="btn btn-primary">전체목록</a>
									</div>
										</form>
									</div>
									<!-- /.card-body -->
									
									<!-- box-footer 엔드 -->
									
								</div>
								<!-- /.card -->

								<div class="card card-success">
									<div class="card-header">
										<h3 class="card-title">Add New Reply</h3>
									</div>
									
									<div class="card-body">
									<form role="form">
										<div class="col-sm-12">
											<!-- text input -->
											<div class="form-group">
												<label>Writer</label> <input type="text"
													class="form-control" placeholder="아이디">
											</div>
										</div>
										<div class="col-sm-12">
											<!-- text input -->
											<div class="form-group">
												<label>Reply Text</label> <input type="text"
													class="form-control" placeholder="댓글입력">
											</div>
											
										</div>
						                <div class="box-footer">
										<button type="button" class="btn btn-info">댓글 추가</button>
										</div>
										<div><hr></div>
									    <!-- box-footer 엔드 -->
						                 
										</form>
										</div>
										<!-- /.card-body -->
										
										
									
										<div class="card-body">
										<div class="timeline">
											<div class="time-label" style="paddig-left:20px;">
												<span class="bg-green">Replies
													List [1]</span>
											</div>
											<div>
												<i class="fas fa-comments bg-yellow"></i>
												<div class="timeline-item">
													<span class="time"><i class="fas fa-clock"></i> 27
														mins ago</span>
													<h3 class="timeline-header">
														<a href="#">26</a> test
													</h3>
													<div class="timeline-body">댓글 테스트 입니다</div>
													<div class="timeline-footer">

														<a class="btn btn-primary btn-sm">수정</a>
													</div>
												</div>
											</div>
										<ul class="pagination pagination-sm m-0 float-right">
													<li class="page-item"><a class="page-link" href="#">«</a></li>
													<li class="page-item"><a class="page-link" href="#">1</a></li>
													<li class="page-item"><a class="page-link" href="#">2</a></li>
													<li class="page-item"><a class="page-link" href="#">3</a></li>
													<li class="page-item"><a class="page-link" href="#">»</a></li>
												</ul>
										</div>
										<!-- /타임라인 엔드 -->
										</div>
									
									
								</div>

							</div>
							<!-- /.col-md-12 -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
			</div>
<%@ include file="../include/footer.jsp" %> 