package cn.edu.njupt.util;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

/**
 * ClassName: RichFreeMarkerView <br/>
 * Function:  TODO ADD FUNCTION. <br/>
 * Reason:    TODO ADD REASON(可选). <br/>
 * date:      2013年11月18日 下午10:04:09 <br/>
 *
 * @author ChangYuan
 * @version 
 */
public class RichFreeMarkerView extends FreeMarkerView {
	 /**
     * 部署路径属性名称
     */
    public static final String CONTEXT_PATH = "base";

    /**
     * 在model中增加部署路径base，方便处理部署路径问题。
     */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
    protected void exposeHelpers(Map model, HttpServletRequest request)
                    throws Exception {
            super.exposeHelpers(model, request);
            model.put(CONTEXT_PATH, request.getContextPath());
    }

}

