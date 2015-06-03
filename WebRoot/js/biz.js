
	/*使得页面所有输入控件失效*/
	function disable()
	{
	   var a = document.getElementsByTagName("input");
	   for (var i=0; i<a.length; i++)
	   {
	      if (a[i].type=="checkbox" || a[i].type=="radio" || a[i].type=="file") a[i].disabled=true;
		  if (a[i].type=="text") {
		  	a[i].disabled=true;
		  }
	   }
	   var b = document.getElementsByTagName("select");
	   for (var i=0; i<b.length; i++)
	   {
	      b[i].disabled=true;
	   }
	   var b = document.getElementsByTagName("textarea");
	   for (var i=0; i<b.length; i++)
	   {
	      b[i].disabled=true;
	   }
	}

	/*使页面所有输入控件有效*/
	function enable()
	{
	   var a = document.getElementsByTagName("input");
	   for (var i=0; i<a.length; i++)
	   {
	      if (a[i].type=="checkbox" || a[i].type=="radio" || a[i].type=="file") a[i].disabled=false;
		  if (a[i].type=="text") {
		  	a[i].disabled=false;
		  }
	   }
	   var b = document.getElementsByTagName("select");
	   for (var i=0; i<b.length; i++)
	   {
	      b[i].disabled=false;
	   }
	  
	   var b = document.getElementsByTagName("textarea");
	   for (var i=0; i<b.length; i++)
	   {
	      b[i].disabled=false;
	   }
	}

	//页面中可覆盖这些业务方法

	/*返回列表页面*/
	function goList(actionAliasName,myform) {	
	
		if (myform==undefined){
			myform = document.forms("myform")
		}

		myform.action=actionAliasName + "!list.action";
    	myform.submit();
	}
	
	/*新增操作*/
	function addnew(actionAliasName){	
		//var frm = ${"myform"};
		var url = actionAliasName+'!addnew.action';
		window.location=url;
		
	}

	/*新增操作*/
	function addItem(actionAliasName){	
		if (myform==undefined){
			myform = document.forms("myform")
		}

		myform.action=actionAliasName + "!addnew.action";
    	myform.submit();
		//var frm = ${"myform"};
		//alert(frm.action);			
	}
	
	/*删除方法*/
  	function del(myform){			
  		var checklist=document.getElementsByName("keys");			
  		var maxIndex=checklist.length;		
  		var strId="";
        for (var i=0;i<maxIndex;i++){				
			if(checklist[i].checked==true){					
				strId+=checklist[i].value+",";
			}
		}		
	    if(strId==""){
	    	alert("请选择要删除的记录!");
	    	return false;
	    }
	    
	    var delflag = confirm("确认删除操作吗？");
		if(delflag==true){
	        strId=strId.substring(0,strId.length-1);
	        
	  		myform.ids.value=strId;				
			myform.submit();
		}
  	}
  	
  	/*选中所有的复选框或取消所有的*/
  	function selectCheckAll(myCheck){
  		var checklist=document.getElementsByName("keys")
  		var maxIndex=checklist.length;
        for (var i=0;i<maxIndex;i++) {
            var e = checklist[i];
            	if(myCheck.checked==true){
            		e.checked=true;
            	}else{
            		e.checked=false;
            	}
	        }
    }
    
    
    /* 保存方法 */
    function save(myform, actionAliasName){
    	myform.action=actionAliasName+'Save.action';	
    	myform.submit();
    }
    
    /* 提交表单*/
  	function submit1(myform, url){
    	myform.action=url;	
    	myform.submit();
    }
    function doo(){
    alert("hello");
    }
    
    /* 分页查询*/
  	function goPage(myform, url, page){
 	if(page!=-1)
  //	myform.all("page.currentPage").value=page;			//支持IE，不支持firefox
  			window.document.all("page.currentPage").value=page;//都支持			
  		//alert(myform.all("page.currentPage").value);
    	myform.action=url;	
    	myform.submit();
    }