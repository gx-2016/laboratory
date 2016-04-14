<%@page import="java.io.File"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=gbk" pageEncoding="gbk"%>
<%@ page import="com.nuaa.upload.Uploader" %>
<%@ page import="java.io.FileInputStream" %>

<%
    request.setCharacterEncoding( Uploader.ENCODEING );
    response.setCharacterEncoding( Uploader.ENCODEING );
    
    String currentPath = request.getRequestURI().replace( request.getContextPath(), "" );

    File currentFile = new File( currentPath );

    currentPath = currentFile.getParent() + File.separator;

    //���������ļ�
    String propertiesPath = request.getSession().getServletContext().getRealPath( currentPath + "config.properties" );
    Properties properties = new Properties();
    try {
        properties.load( new FileInputStream( propertiesPath ) );
    } catch ( Exception e ) {
        //����ʧ�ܵĴ���
        e.printStackTrace();
    }
    
    Uploader up = new Uploader(request);
    
    up.setSavePath("upload"); //����·��
    String[] fileType = {".rar" , ".doc" , ".docx" , ".zip" , ".pdf" , ".txt" , ".swf", ".wmv", ".avi", ".rm", ".rmvb", ".mpeg", ".mpg", ".ogg", ".mov", ".wmv", ".mp4"};  //������ļ�����
    up.setAllowFiles(fileType);
    up.setMaxSize(500 * 1024);        //������ļ����ߴ磬��λKB
    up.upload();
    response.getWriter().print("{'url':'"+up.getUrl()+"','fileType':'"+up.getType()+"','state':'"+up.getState()+"','original':'"+up.getOriginalName()+"'}");

%>
