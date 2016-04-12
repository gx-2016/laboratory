 <!--权限分配-->
<div class="row" >
<label class="form-label">权限分配:</label>
             <#assign parentCode = "">
             <#if xmlObjects??>
                <#list xmlObjects as xmlObject>
                 <#if xmlObject.parentCode!= parentCode >
                      <br/>
                      <strong>${xmlObject.parentName}</strong>:&nbsp;&nbsp;&nbsp;
                      <input type = "checkbox" name="rolepadom">
                      ${xmlObject.name}
                      <#assign parentCode = xmlObject.parentCode>
                  <#else>
                      <input type = "checkbox" name="rolepadom">
                      ${xmlObject.name}
                  </#if>
                </#list>
             </#if>
     </div>   
    
  </div>
