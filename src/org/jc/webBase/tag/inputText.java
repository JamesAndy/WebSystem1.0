package org.jc.webBase.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class inputText extends TagSupport {
	private String type = "";//input.type
	private String name = "";//input.name,id
	private String inputValue = "";//input.inputvalue
	private String className ="";//input.class
	private String onchange = "";//input.onchange
	private String helpText = "";
	private String inputStatus = "";
	private String inputTitle = "";
	private String placeholder = "";//input.placeholder
    private String scope = "";
    private String change = "";
    private String chkAuth = "";
    private String permitAuths = "";
    private String pattern = "";
    private String minValue = "";
    private String maxValue = "";
    private boolean ndAuthControl = false;
	private boolean required = false;//input.required
	private boolean readonly = false;//input.readonly
	public int doEndTag() throws JspException{
        if(ndAuthControl){
            if(chkAuth.equals(permitAuths)){
                tagContent();
            }
        }else{
            tagContent();
        }
        return TagSupport.EVAL_PAGE;
    }
	
	 public void tagContent(){
		 JspWriter out = super.pageContext.getOut();
		 try{
			 
			//輸入值處理placeholder
			 if(placeholder.equals("")) {
				 switch(inputStatus) {
				 case "password":placeholder = "請輸入密碼......";break;
				 case "email":placeholder = "test@mail.com";break;
				 case "tel":placeholder = "0912345678";break;
				 case "cellphone":placeholder = "0901-123456";break;
				 case "housephone":placeholder = "00-12345678";break;
				 case "url":placeholder = "http://test.com.tw";break;
				 default:placeholder = "請輸入文字......";
				 }
			 }
			 
			 //輸出值處理pattern(表單驗證)
			 switch(inputStatus) {
			 case "cellphone":pattern = "\\d{4}[\\-]\\d{6}";break;
			 case "housephone":pattern = "\\d{2}[\\-]\\d{8}";break;
			 }
			//輸入值處理inputStatus
			 if(inputStatus.equals("")){inputStatus = "text";}else {
				 switch(inputStatus) {
				 case "cellphone":inputStatus = "tel";break;
				 case "housephone":inputStatus = "tel";break;
				 }
			 }
			 
			 //out.println Start
			 out.println("<div class=\"form-group\">");
			 if(!inputTitle.equals("")){out.println("<label>"+inputTitle+"</label>");}
			 	
			 if(inputStatus.equals("TEXT")) {
				 out.println("<p id='\"+name+\"' class=\"form-control-static\">"+inputValue+"</p>");
			 }else if(inputStatus.equals("FILE")) {
				 out.println("<input id='\"+name+\"' name='\"+name+\"' type=\"file\">");
			 }else {
				 out.println("<input id='"+name+"' name='"+name+"' type=\""+inputStatus+"\" class=\"form-control\"");
				 if(!inputValue.equals("")) {out.println("value=\""+inputValue+"\"");}
				 if(!placeholder.equals("")) {out.println("placeholder=\""+placeholder+"\"");}
				 if(!pattern.equals("")) {out.println("pattern='"+pattern+"'");}
				 if(!maxValue.equals("")&&inputStatus.equals("number")) {out.println("max='"+maxValue+"'");}
				 if(!minValue.equals("")&&inputStatus.equals("number")) {out.println("min='"+minValue+"'");}
				 if(!className.equals("")) {out.println(className);}
				 if(required) {out.println("required ");}
				 out.println(">");
				 if(required) {out.println("<span style=\"color:red;\">*必填</span>");}
				 if(!helpText.equals("")){out.println("<p class=\"help-block\">"+helpText+"</p>");}

			 }
			 out.println("</div>");
			//out.println End
		 }catch( Exception e){
            System.out.println("inputTag錯誤");
            e.printStackTrace();     
        }
        finally{
            resetAllValues();
        }
	 
	 }
	 
	
	
	public String getId() {
        return id;
    }

    public String getInputTitle() {
		return inputTitle;
	}

	public void setInputTitle(String inputTitle) {
		this.inputTitle = inputTitle;
	}

	public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getName() {
        return name;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getChange() {
        return change;
    }

    public void setChange(String change) {
        this.change = change;
    }

    public String getType() {
      return type;
    }

    public void setType(String type) {
      this.type = type;
    }

    public String getInputValue() {
      return inputValue;
    }

    public void setInputValue(String inputValue) {
      this.inputValue = inputValue;
    }

    public String getPlaceholder() {
        return placeholder;
    }

    public String getOnchange() {
        return onchange;
    }

    public void setOnchange(String onchange) {
        this.onchange = onchange;
    }

    public void setPlaceholder(String placeholder) {
        this.placeholder = placeholder;
    }

    public boolean isRequired() {
        return required;
    }

    public void setRequired(boolean required) {
        this.required = required;
    }

    public boolean isReadonly() {
        return readonly;
    }

    public void setReadonly(boolean readonly) {
        this.readonly = readonly;
    }

    public boolean isNdAuthControl() {
        return ndAuthControl;
    }

    public void setNdAuthControl(boolean ndAuthControl) {
        this.ndAuthControl = ndAuthControl;
    }

    public String getChkAuth() {
        return chkAuth;
    }

    public void setChkAuth(String chkAuth) {
        this.chkAuth = chkAuth;
    }

    public String getPermitAuths() {
        return permitAuths;
    }

    public void setPermitAuths(String permitAuths) {
        this.permitAuths = permitAuths;
    }
	public String getHelpText() {
		return helpText;
	}

	public void setHelpText(String helpText) {
		this.helpText = helpText;
	}
	

    public String getInputStatus() {
		return inputStatus;
	}

	public void setInputStatus(String inputStatus) {
		this.inputStatus = inputStatus;
	}

	public String getMinValue() {
		return minValue;
	}

	public void setMinValue(String minValue) {
		this.minValue = minValue;
	}

	public String getMaxValue() {
		return maxValue;
	}

	public void setMaxValue(String maxValue) {
		this.maxValue = maxValue;
	}

	/**
     * 清除Values值
     */
    public void resetAllValues(){
        id = "";
        className = "";
        name = "";
        scope = "";
        change = "";
        type = "";
        inputValue = "";
        placeholder = "";
        onchange = "";
        chkAuth = "";
        permitAuths = "";
        required = false;
        readonly = false;
        ndAuthControl = false;
    }
}
