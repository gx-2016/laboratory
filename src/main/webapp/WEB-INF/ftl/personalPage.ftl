<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0118)file:///C:/Users/sylar/Desktop/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/Hu%20peng,%20LAMDA%20Group%20at%20NJU.htm -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title> 
<#if bloBs.username??> 
${bloBs.username} 
<#else>
</#if>  Lab at NJUPT</title>

<meta content="MSHTML 6.00.2900.6003" name="GENERATOR">
<style type="text/css">
BODY {
	BACKGROUND-COLOR: #ffffff
}
.style1 {
	FONT-SIZE: 16px; FONT-FAMILY: "Times New Roman", Times, serif
}
.style2 {
	FONT-WEIGHT: bold; FONT-SIZE: 16px
}
.style7 {
	FONT-WEIGHT: bold; FONT-SIZE: x-large; FONT-FAMILY: Arial, Helvetica, sans-serif
}
.style9 {
	FONT-SIZE: 18px
}
.style12 {
	FONT-SIZE: 20px
}
.style13 {
	FONT-SIZE: 12px; FONT-FAMILY: Arial, Helvetica, sans-serif
}
.style17 {
	FONT-WEIGHT: bold; FONT-SIZE: 16px; FONT-FAMILY: Geneva, Arial, Helvetica, sans-serif
}
.STYLE18 {
	font-family: �����塱
	font-size: 36px;
}
</style>
</head>
<body>
<table height="210" width="100%" border="0">
  <tbody>
  <tr>
    <td width="220" height="210"><img height="209" alt="
    <#if bloBs.username??> 
    ${bloBs.username} 
    <#else>
    </#if>"
    src="system/${bloBs.photourl}"/>
     </td>

    <td width="30"></td>
    <td width="425">
      <div align="center">
      <p align="center"><span class="style7">
      
      <#if bloBs.username??> 
	    ${bloBs.username}
	    <#else>
	    </#if>
    
      </span><br>
      <span class="style7">
      
      <#if bloBs.logonname??> 
	    ${bloBs.logonname} 
	    <#else>
	    </#if>
       </span> </p>
      <h3 align="left"><span class="style9">
      
       <#if bloBs.education??> 
	    ${bloBs.education} 
	    <#else>
	    </#if>
      </span></h3>

      <p class="style5" align="left"><a href="" target="_blank">Lab Of Njupt</a>,<br>
	  <a href="http://acm.njupt.edu.cn/acmhome/welcome.do;jsessionid=95122C4BBB63953CEC2D28A56A05BAEB?method=index" target="_blank">Department of Computer Science</a>,<br>
	  <a href="http://www.njupt.edu.cn/" target="_blank">Nanjing University of Posts & Telecommunications</a>, 
      Nanjing, China</p></div></td>
    
    <td valign="top" width="100"><a href="http://www.njupt.edu.cn/" target="_blank"><img height="110" src="assets/images/b14224a196a4.jpg" width="100" border="0"></a></td></tr></tbody></table>
      

    
      <table width="100%" border="0">
        <tbody>
		<tr>
          <td colspan="2" height="5">
            <hr>
          </td></tr>
        <tr valign="center">
          <td class="style12" colspan="2" height="30"><a name="researchinterest"></a>Supervisor: </td></tr>
        <tr>
          <td valign="top">&nbsp;</td>
          <td valign="top" height="33">
            <div class="style1" align="left"> <a href="http://cs.nju.edu.cn/zhandc/" target="_blank">
            
             <#if bloBs.supervisor??> 
	        ${bloBs.supervisor} 
		    <#else>
		    </#if>
		    
			</div></td></tr>
        <tr>

          <td valign="top" width="90" height="22">&nbsp;</td>
       
        </tr>
        <tr>
          <td colspan="2" height="5">
            <hr>
          </td></tr>
        <tr valign="center">

          <td class="style12" colspan="2" height="30"><a name="biography"></a>Biography:</td></tr>
        <tr>
          <td valign="top" height="81">&nbsp;</td>
          <td class="style1" valign="top" height="84">
          
          <#if bloBs.biography??> 
	        ${bloBs.biography}
		    <#else>
		    </#if>
           
		  </td>

        </tr>
        <tr>
          <td colspan="2" height="5">
            <hr>
          </td></tr>
        <tr valign="center">
          <td class="style12" colspan="2" height="30"><a name="researchinterest"></a>Research Interest: </td></tr>

        <tr>
          <td valign="top">&nbsp;</td>
          <td valign="top" height="63">
            <div class="style1" align="left">
            
            <#if bloBs.research??> 
	         ${bloBs.research}
		    <#else>
		    </#if>
		    
           
            </div></td></tr>
        <tr>
          <td colspan="2" height="5">
            <hr>
          </td></tr>

		  <TR vAlign=center>
          <TD class=style12 colSpan=2 height=30><A 
            name=publication></A>Publication: </TD></TR>
        <TR>
          <TD vAlign=top>&nbsp;</TD>
          <TD vAlign=top height=63>
            <DIV class=style1 align=left>
              <#if writings??>
              <#list writings as writing >
               <#if writing.writingspeople??>
               
               <#if writing.writingspeople??> 
	       ${writing.writingspeople}
		    <#else>
		    </#if>
               
               .&nbsp;&nbsp; 
                </#if> 
               <#if writing.writingsname??>
               ${writing.writingsname}
               <#else>.&nbsp;&nbsp; @
                </#if> 
                
               <#if writing.writingstime??>
               ${writing.writingstime?string("yyyy-MM-dd")}
               <#else>
                </#if> 
                <br> 
                </#list>
              </#if> 
			 
            </DIV></TD></TR>
        <TR>
		
		
		<tr>
          <td colspan="2" height="5">
            <hr>
          </td></tr>
		
        <tr valign="center"></tr>
        <tr>
          <td valign="top">&nbsp;</td>
          <td valign="top">
            <table width="100%" border="0">
              <tbody>
              <tr>
                <td valign="bottom" height="22"><span class="style2">Mail:</span></td></tr>

              <tr>
                <td class="style1" valign="top" height="82"><span class="norm">
                
                 <#if bloBs.logonname??> 
	          ${bloBs.logonname}
		    <#else>
		    </#if>
               
                
                <br>
                    National Key Laboratory for Novel Software 
                  Technology<br>Nanjing University of Posts and Telecommunications, Mailbox 328<br>Nanjing 
                  210046, China</span></td></tr>
              <tr>
                <td class="style2" valign="bottom" height="22">Laboratory:</td></tr>
              <tr>

                <td class="style1" valign="top" height="21"><span class="norm">328, 
                  Building of Computer Science and Technology , Xianlin Campus of Nanjing University of Posts and Telecommunications</span></td></tr>

                <td class="style2" valign="bottom" height="22">Email:</td></tr>
              <tr>
                <td class="style1" valign="top" height="21"><span class="style1">
                
                <#if bloBs.email??> 
	          ${bloBs.email}
		    <#else>
		    </#if>
                </span></td>
              </tr></tbody></table></td></tr></tbody></table>
<hr width="100%" noshade="" size="3">

<div class="style13" align="center">last modified: 2016-04-25 </div>

<table cellspacing="0" width="100%" border="0">
  <tbody>
  <tr></tr></tbody></table>
</body></html>

