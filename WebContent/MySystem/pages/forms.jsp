<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="jcWeblib" uri="jcWebTag"%><%--宣告tab元件--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jcWeblib:src type="css" path="/vendor/bootstrap/css/bootstrap.min.css" /><!-- Bootstrap Core CSS -->
<jcWeblib:src type="css" path="/vendor/metisMenu/metisMenu.min.css" /><!-- MetisMenu CSS -->
<jcWeblib:src type="css" path="/dist/css/sb-admin-2.css" /><!-- Custom CSS -->
<jcWeblib:src type="css" path="/vendor/font-awesome/css/font-awesome.min.css" /><!-- Custom Fonts -->
<jcWeblib:src type="js" path="/vendor/jquery/jquery.min.js" /><!-- jQuery -->
<jcWeblib:src type="js" path="/vendor/bootstrap/js/bootstrap.min.js" /><!-- Bootstrap Core JavaScript -->
<jcWeblib:src type="js" path="/vendor/metisMenu/metisMenu.min.js" /><!-- Metis Menu Plugin JavaScript -->
<jcWeblib:src type="js" path="/dist/js/sb-admin-2.js" /><!-- Custom Theme JavaScript -->
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page vi	a file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<title>Forms</title>
<script type="text/javascript">
$(document).ready(function(){
	  $("form").submit(function(e){
	    $('.required').addClass( 'has-error' );
	    e.preventDefault();
	  });
	});
</script>
</head>
<body>
<div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Forms</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Form Elements
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                    	<div class="form-group required">
                                            <label>Text area</label>
                                            <input id='' name='' class="form-control" type="number" max="5" required></input>
                                        </div>
                                        <div class="form-group required">
                                            <label>Text area</label>
                                            <input id='' name='' class="form-control" type="number" max="5" required></input>
                                        </div>
                                    	<h1>inputText類別(HTML5)</h1>
										<jcWeblib:inputText name="P_TEST1" inputTitle="inputText_基本範例"/>
										<jcWeblib:inputText name="P_TEST2" inputTitle="inputText_輸入範例" placeholder="gggg"/>
										<jcWeblib:inputText name="P_TEST3" inputTitle="inputText_加入輸入說明" helpText="協助輸入敘述。"/>
										<jcWeblib:inputText name="P_TEST4" inputTitle="inputText_預設值" inputValue="gg"/>
										<jcWeblib:inputText name="P_TEST5" inputTitle="inputText_密碼" inputStatus = "password"/>
										<jcWeblib:inputText name="P_TEST5" inputTitle="inputText_電子信箱" inputStatus = "email"/>
										<jcWeblib:inputText name="P_TEST5" inputTitle="inputText_電話" inputStatus = "tel"/>
										<jcWeblib:inputText name="P_TEST5" inputTitle="inputText_電話_固定格式_手機" inputStatus = "cellphone"/>
										<jcWeblib:inputText name="P_TEST5" inputTitle="inputText_電話_固定格式_電話" inputStatus = "housephone"/>
										<jcWeblib:inputText name="P_TEST5" inputTitle="inputText_網址" inputStatus = "url"/>
										<jcWeblib:inputText name="P_TEST5" inputTitle="inputText_數字" inputStatus = "number"/>
										<jcWeblib:inputText name="P_TEST5" inputTitle="inputText_數字_最大5最小1" inputStatus = "number" maxValue="5" minValue="1"/>
										<jcWeblib:inputText name="P_TEST6" inputTitle="inputText_靜態文字範例" inputStatus = "TEXT" inputValue="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut consequat nisl. Quisque faucibus eros id lorem semper laoreet. Donec mi justo, lacinia sit amet dui at, finibus accumsan libero. Proin lacinia magna sapien. Quisque feugiat felis sit amet lorem efficitur vestibulum. Integer volutpat a dui vel efficitur. Praesent lacinia consequat pulvinar."/>
										<jcWeblib:inputText name="P_TEST7" inputTitle="inputText_Fileinput" inputStatus = "FILE"/>
										<jcWeblib:inputText name="P_TEST8" inputTitle="inputText_權限控制" ndAuthControl="true" chkAuth="12" permitAuths="12"/>
										<jcWeblib:inputText name="P_TEST1" inputTitle="inputText_必填" required="true"/>
										

                                        <div class="form-group">
                                            <label>Text area</label>
                                            <textarea id='' name='' class="form-control" rows="3" placeholder="請輸入文字"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Checkboxes</label>
                                            <div class="checkbox">
                                                <label>
                                                    <input id='' name='' type="checkbox" value="">Checkbox 1
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input id='' name='' type="checkbox" value="">Checkbox 2
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input id='' name='' type="checkbox" value="">Checkbox 3
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Inline Checkboxes</label>
                                            <label class="checkbox-inline">
                                                <input id='' name='' type="checkbox">1
                                            </label>
                                            <label class="checkbox-inline">
                                                <input id='' name='' type="checkbox">2
                                            </label>
                                            <label class="checkbox-inline">
                                                <input id='' name='' type="checkbox">3
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <label>Radio Buttons</label>
                                            <div class="radio">
                                                <label>
                                                    <input id='' name='' type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>Radio 1
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input id='' name='' type="radio" name="optionsRadios" id="optionsRadios2" value="option2">Radio 2
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input id='' name='' type="radio" name="optionsRadios" id="optionsRadios3" value="option3">Radio 3
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Inline Radio Buttons</label>
                                            <label class="radio-inline">
                                                <input id='' name='' type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>1
                                            </label>
                                            <label class="radio-inline">
                                                <input id='' name='' type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">2
                                            </label>
                                            <label class="radio-inline">
                                                <input id='' name='' type="radio" name="optionsRadiosInline" id="optionsRadiosInline3" value="option3">3
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <label>Selects</label>
                                            <select id='' name='' class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Multiple Selects</label>
                                            <select id='' name='' multiple class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <input id='' name='' type="submit" value="Submit Button" class="btn btn-default"></input>
                                        <input id='' name='' type="reset" value="Reset Button" class="btn btn-default"></input>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <h1>Disabled Form States</h1>
                                    <form role="form">
                                        <fieldset disabled>
                                            <div class="form-group">
                                                <label for="disabledSelect">Disabled input</label>
                                                <input id='' name='' class="form-control" type="text" placeholder="Disabled input" disabled>
                                            </div>
                                            <div class="form-group">
                                                <label for="disabledSelect">Disabled select menu</label>
                                                <select id='' name='' class="form-control">
                                                    <option>Disabled select</option>
                                                </select>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input id='' name='' type="checkbox">Disabled Checkbox
                                                </label>
                                            </div>
                                            <button id='' name='' type="submit" class="btn btn-primary">Disabled Button</button>
                                        </fieldset>
                                    </form>
                                    <h1>Form Validation States</h1>
                                    <form role="form">
                                        <div class="form-group has-success">
                                            <label class="control-label">Input with success</label>
                                            <input name='' type="text" class="form-control">
                                        </div>
                                        <div class="form-group has-warning">
                                            <label class="control-label">Input with warning</label>
                                            <input id='' name='' type="text" class="form-control">
                                        </div>
                                        <div class="form-group has-error">
                                            <label class="control-label">Input with error</label>
                                            <input id='' name='' type="text" class="form-control">
                                        </div>
                                    </form>
                                    <h1>Input Groups</h1>
                                    <form role="form">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">@</span>
                                            <input id='' name='' type="text" class="form-control" placeholder="Username">
                                        </div>
                                        <div class="form-group input-group">
                                            <input id='' name='' type="text" class="form-control">
                                            <span class="input-group-addon">.00</span>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-eur"></i>
                                            </span>
                                            <input id='' name='' type="text" class="form-control" placeholder="Font Awesome Icon">
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">$</span>
                                            <input id='' name='' type="text" class="form-control" placeholder="Font Awesome Icon">
                                            <span class="input-group-addon">.00</span>
                                        </div>
                                        <div class="form-group input-group">
                                            <input id='' name='' type="text" class="form-control" placeholder="搜尋...">
                                            <span class="input-group-btn">
                                                <button id='' name='' class="btn btn-default" type="button"><i class="fa fa-search"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
</body>
</html>