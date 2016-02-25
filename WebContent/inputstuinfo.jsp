<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>input</title>
</head>
<jsp:include page="islogin.jsp"></jsp:include>
<body>
	<form action="" method="post" >
		<table bgcolor="#c0c0c0">
			<tr> <td colspan="2" align="center" bgcolor="green">录入学生信息</td> </tr>
			<tr> <td>昵称</td> <td><input type="text" name="nickname"/></td></tr>
			<tr>
				<td>性别</td>
				<td>
					<input type="radio" name="xb" checked value="1">男&nbsp;&nbsp;
					<input type="radio" name="xb" value="0">女
				</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td><input type="text" name="nickname"/></td>
			</tr>
			<tr>
				<td>所学专业</td>
				<td>
					<select>
						<option value="computer">计算机</option>
						<option value="language">外国语</option>
						<option value="Chemistry">化学</option>
						<option value="medicine">医学</option>
						<option value="electronic">电子</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>所会语言</td>
				<td>
					<select multiple="multiple" size="2" >
						<option value="java">java</option>
						<option value="c">c++</option>
						<option value="jsp">jsp</option>
						<option value="php">php</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>兴趣</td>
				<td>
					<input type="checkbox" value="music" name="xq">听音乐&nbsp;
					<input type="checkbox" value="book" name="xq">看书&nbsp;
					<input type="checkbox" value="net" name="xq">上网&nbsp;
				</td>
			</tr>
			<tr>
				<td>备注</td>
				<td><textarea rows="3" cols="20" name="bz"></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="submit" value="提交">&nbsp;<input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>