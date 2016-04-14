    <%@ page language="java" contentType="text/html; charset=gbk"
             pageEncoding="gbk"%>
        <%@ page import="java.util.Properties" %>
        <%@ page import="java.util.List" %>
        <%@ page import="java.util.Iterator" %>
        <%@ page import="java.util.Arrays" %>
        <%@ page import="java.io.FileInputStream" %>
        <%@ page import="com.nuaa.upload.Uploader" %>  
        <%@ page import="java.io.File" %>
        <%@ page import="java.util.Map" %>

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

List<String> savePath = Arrays.asList( properties.getProperty( "savePath" ).split( "," ) );


//��ȡ�洢Ŀ¼�ṹ
if ( request.getParameter( "fetch" ) != null ) {

    response.setHeader( "Content-Type", "text/javascript" );

    //����json����
    Iterator<String> iterator = savePath.iterator();

    String dirs = "[";
    while ( iterator.hasNext() ) {

        dirs += "'" + iterator.next() +"'";

        if ( iterator.hasNext() ) {
            dirs += ",";
        }

    }
    dirs += "]";
    response.getWriter().print( "updateSavePath( "+ dirs +" );" );
    return;

}

Uploader up = new Uploader(request);

// ��ȡǰ���ύ��path·��
String dir = request.getParameter( "dir" );


//��ͨ�������ò��������� ����ϴ�������
if ( dir == null ) {
	dir = up.getParameter("dir");
}

if ( dir == null || "".equals( dir ) ) {

    //����Ĭ��ֵ
    dir = savePath.get( 0 );

    //��ȫ��֤
} else if ( !savePath.contains( dir ) ) {

    response.getWriter().print( "{'state':'\\u975e\\u6cd5\\u4e0a\\u4f20\\u76ee\\u5f55'}" );
    return;

}

up.setSavePath( dir );
String[] fileType = {".gif" , ".png" , ".jpg" , ".jpeg" , ".bmp"};
up.setAllowFiles(fileType);
up.setMaxSize(500 * 1024); //��λKB
up.upload();
response.getWriter().print("{'original':'"+up.getOriginalName()+"','url':'"+up.getUrl()+"','title':'"+up.getTitle()+"','state':'"+up.getState()+"'}");
%>
