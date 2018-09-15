
package org.jc.webBase.tag;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author 資訊中心管理員
 */
public class baseStaticFunction extends TagSupport {
    private String path = "";
    private String type = "";
        public int doEndTag() throws JspException{
        JspWriter out = super.pageContext.getOut();
        String contextPath = this.pageContext.getRequest().getServletContext().getContextPath();
        try{
            switch(type){
                case "webBaselib":
                    out.write("<link rel='stylesheet' type='text/css' href='" + contextPath + "/bootstrap/css/bootstrap.min.css'/>");
                    out.write("<link rel='stylesheet' type='text/css' href='" + contextPath + "/bootstrap/css/bootstrap-theme.min.css'/>");
                    out.write("<link rel='stylesheet' type='text/css' href='" + contextPath + "/bootstrap/css/bootstrap-datetimepicker.min.css'/>");
                    out.write("<script type='text/javascript' src='" + contextPath + "/js/jquery.min.js'></script>");
                    out.write("<script type='text/javascript' src='" + contextPath + "/bootstrap/js/bootstrap.min.js'></script>");
                    out.write("<script type='text/javascript' src='" + contextPath + "/bootstrap/js/bootstrap-datetimepicker.min.js'></script>");
                    break;
                case "css":
                    if(this.path.startsWith("/")){
                        out.write("<link rel='stylesheet' type='text/css' href='" + contextPath+ this.path + "'/>");
                    }else{
                        out.write("<link rel='stylesheet' type='text/css' href='" + this.path + "'/>");
                    }
                    break;
                case "js":
                    if(this.path.startsWith("/")){
                        out.write("<script type=\"text/javascript\" src=\"" + contextPath+ this.path + "\"></script>");
                    }else{
                        out.write("<script type=\"text/javascript\" src=\"" + this.path + "\"></script>");
                    }
                    break;
                case "ckeditor":
                    out.write("<script type='text/javascript' src='" + contextPath + "/js/jquery.min.js'></script>");
                    out.write("<script type='text/javascript' src='" + contextPath + "/ckeditor/ckeditor.js'></script>");
                    break;
            }
            
           
        }
        catch( Exception e){
            System.out.println("baseCss錯誤");
            e.printStackTrace();
                
        }
        return TagSupport.EVAL_PAGE;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    
}
