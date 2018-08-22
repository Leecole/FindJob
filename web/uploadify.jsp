<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>添加用户</title>

<%--	<link rel="stylesheet" type="text/css" href="../easyui/demo/demo.css">
	<link rel="stylesheet" type="text/css" href="../easyui/themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="../easyui/themes/icon.css">
	<script type="text/javascript" src="../easyui/jquery.min.js"></script>
	<script type="text/javascript" src="../easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="../easyui/locale/easyui-lang-zh_CN.js"></script>--%>

	<link rel="stylesheet" type="text/css" href="/uploadify/uploadify.css">
	<%--<script type="text/javascript" src="/js/jquery.uploadify.min.js"></script>--%>

</head>
<body>
<div style="width:100%;height:600px;margin-top:0px;margin-left:0px;position:absolute;z-index:199;top:10px;left:10px">
	<div class="easyui-panel" title="添加用户" style="width:100%;max-width:400px;padding:30px 60px;">
		<form id="ff" class="easyui-form"  data-options="novalidate:true" method="post" >
			
			<div id="photo"><img  id="imagePre"  style="width: 100px;height: 80px;border:1px solid red"/></div>  
            <div style="margin-bottom:20px;margin-top:10px">
                 <input  type="file"  name="image"  id="image" />
			</div>
			
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.username" style="width:100%" data-options="label:'用户名:',required:true,validType:'range[8,16]'">
			</div>
			
			<div style="margin-bottom:20px">
			    <input class="easyui-textbox" id="pwd" name="u.password" type="password" style="width:100%" data-options="label:'密码:',required:true,validType:'range[3,10]'">
			</div>
			<div style="margin-bottom:20px">
			     <input class="easyui-textbox" id="rpwd"  type="password"    style="width:100%" data-options="label:'重新密码:',required:true," validType="equals['#pwd']">
			</div>
			
			
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.tel" style="width:100%" data-options="label:'手机号:',validType:'mobile',required:true">
			</div>
			
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.useraddress" style="width:100%;height:60px" data-options="label:'地址:',multiline:true">
			</div>
			
			<div style="margin-bottom:20px">
				<select id="cc" class="easyui-combobox" name="u.sex" style="width:100%;" data-options="label:'性别:',required:true,">
			        <option value="1">男</option>
			        <option value="0">女</option>
			    </select>
           </div>			
			
		</form>
		
         
		<div style="text-align:center;padding:5px 0">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">Submit</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">Clear</a>
		</div>
    </div>
</div>
	
	<script type="text/javascript">
	//自定义验证框验证
		$.extend($.fn.validatebox.defaults.rules, {
		    equals: {
				validator: function(value,param){
					return value == $(param[0]).val();
				},
				message: '密码不匹配'
		    }
		});
		
		$.extend($.fn.validatebox.defaults.rules, {
		    minLength: {
				validator: function(value, param){
					return value.length >= param[0];
				},
				message: '输入至少 {0} 字符'
		    },
		    
		    range:{
		          validator:function(value,param){
		            if(/^[1-9]\d*$/.test(value)){
		              return value.length >= param[0] && value.length <= param[1]
		            }else{
		              return false;
		            }
		          },
		          message:'输入字符个数在{0}到{1}之间'
		        }
		});
		
		//电话必须为11位
		$.extend($.fn.validatebox.defaults.rules, {
			mobile: {
		          validator: function (value, param) {
		            return /^(?:13\d|15\d|18\d)-?\d{5}(\d{3}|\*{3})$/.test(value);
		          },
		          message: '手机号码不正确'
		        }
		});
	
	</script>
	<script>
	function submitForm(){
		$('#cc').combobox('getText');
		$('#cc').combobox('getValue');
		$('#ff').form('submit',{
			url:'UserAction!addUser.action',
			onSubmit:function(){
				return $(this).form('enableValidation').form('validate');
			},
		    success:function(data){
			    if(data=="true"){
			    	$.messager.alert("温馨提示","添加成功",'info');
			    }
			    if(data=="false"){
			    	$.messager.alert("温馨提示","添加失败",'error');
			    	
			    }
	        }
		    
		});
	}
	function clearForm(){
		$('#ff').form('clear');
	}


	</script>
	
	<script type="text/javascript">
	$(function(){        
	       $('#image').uploadify({  
	    	    'auto'         :  true,
	    	    'swf'          : 'uploadify.swf',  
	    	    'fileObjName'  :'image',
	    	    'buttonText' : '选择头像',
	            'uploader'     : 'UserAction!updateUserImage.action',    
	            'fileTypeDesc'  :   '图片文件',  
	            'fileTypeExts'  :   '*.gif;*.jpg;*.png;*.bmp',  
	            'multi'         :   false, 
	            'method'            :   'post',  
	            'buttonClass'   :  'upload_button',  	          
	            'onUploadComplete': function(file){                   
	            },     
	            /** 
	             * 上传成功后触发事件 
	             */  
	             'onUploadSuccess' : function(file, data, response) {  
	                //参数data保存的是上传后的图片的路径  
	                //alert(data);  
	                //$('#imageTouXiang').css("background-color","#f00");  
	                  
	                $('#imagePre').attr("src",data);  
	            },  
	        });  
        //alert(PUBLIC);  
    }); 
	  
	
	</script>
</body>

</html>