<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<div class="col-lg-12">

					<!-- right column -->
					<div class="col-md-12">
						<!-- general form elements disabled -->
						<div class="card card-warning">
							<div class="card-header">
								<h3 class="card-title">UPDATE Board</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<form role="form" action="/admin/board/update" method="post">
									<div class="row">
										<div class="col-sm-12">
											<!-- text input -->
											<div class="form-group">
												<label>Title</label>
												<input value="${boardVO.title}" name="title" type="text"
													class="form-control" placeholder="제목 입력">
											</div>
										</div>
										<div class="col-sm-12">
											<!-- textarea -->
											<div class="form-group">
												<label>Content</label>
												<textarea name="content" class="form-control" rows="3"
													placeholder="내용 입력">${boardVO.content}</textarea>
											</div>
										</div>
										<div class="col-sm-12">
											<!-- text input -->
											<div class="form-group">
												<label>Writer</label>
												<input value="${boardVO.writer}" name="writer" type="text"
													class="form-control" placeholder="작성자 입력">
											</div>
										</div>
										<div
											class="form-group note-form-group note-group-select-from-files">
											<label for="note-dialog-image-file-15928145942921"
												class="note-form-label">아래 기존파일 업로드 창 사용가능</label><input
												id="note-dialog-image-file-15928145942921"
												class="note-image-input form-control-file note-form-control note-input"
												type="file" name="files" accept="image/*"
												multiple="multiple">
										</div>
									</div>
									<!-- /.card-body -->
									<div class="box-footer" style="padding: 10px;">

										<div>
											<hr>
										</div>
										<ul class="mailbox-attachments clearfix uploadedList">
										</ul>
										<!-- submit -> form안의 내용을 입력해주는 역할 so, form태그 안쪽에 있어야 작동 됨! -->
										<input type="hidden" name="bno" value="${boardVO.bno}">
										<button type="submit" class="btn btn-warning">작성하기</button>
										<a href="/admin/board/list" class="btn btn-primary">전체목록</a>
									</div>
								</form>
							</div>



						</div>
						<!-- /.card -->
						<!-- general form elements disabled -->


					</div>
					<!-- /.col-md-12 -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp"%>
