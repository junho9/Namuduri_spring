<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���̵� ã�� ����</title>
</head>
<body>
<script type="text/javascript">
	alert('����� ���̵��' +  '${mresultClass.member_id}'  + '�Դϴ�.');
	opener.parent.location = "loginForm.do";
	window.close();
</script>
</body>
</html>