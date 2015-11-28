<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>FAQ</title>
</head>

<body>
<p>${message}</p>

<div class="container">
	<div class="row">
		<div class="col-md-1"></div>

		<div class="col-md-6">
			<div id="postlist">

				<g:each in="${questions}">

					<div class="panel">
						<div class="panel-heading">
							<div class="text-center">
								<div class="row">
									<div class="col-sm-9">
										<h3 class="pull-left">${it.question}</h3>
									</div>
								</div>
							</div>
						</div>

						<div class="panel-body">
							${it.answer}
						</div>
					</div>

				</g:each>

			</div>
		</div>

		<div class="col-md-1"></div>

		<div class="col-md-3">
		</div>

		<div class="col-md-1">
		</div>
	</div>
</div>

</body>
</html>