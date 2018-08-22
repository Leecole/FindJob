package com.findjob.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.findjob.pojo.Combasemsg;
/*import net.sf.json.JSONArray;
import net.sf.json.JSONObject;*/
import org.springframework.stereotype.Component;
/**
 * 封装好的独立输出json格式数据的帮助类
 * @author tengsir
 *
 */
@Component(value="responserByajax")
public class ResponserByajax {

    private static final int ArrayList = 0;

    public void responseToText(HttpServletRequest request, HttpServletResponse response, String text) {
        response.setContentType("text;charset=utf-8");
        PrintWriter out;
        try {
            out = response.getWriter();
            out.write(text);
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
	
	
	/**
	 * 通用的方法集合将JSON数据传送出去
	 * @param jsonO
	 *//*
	public void outJSONTo(HttpServletRequest request,HttpServletResponse response,JSONArray jsonO){
		 response.setContentType("text/json;charset=UTF-8");
		 try {
			PrintWriter out = response.getWriter();
			out.write(jsonO.toString());
			out.flush();
			out.close();
		 } catch (IOException e) {
			e.printStackTrace();
		 }
	}


	*//**
	 * 通用的方法，将User对象集合封装成json集合格式
	 * @param
	 *//*
	public JSONArray writeToJSON(ArrayList list){
		JSONArray allJson = JSONArray.fromObject( list );
		System.out.println(allJson.toString());
		return allJson;
	}

	public JSONArray writeToJSONImg(ArrayList<Combasemsg> allCompanys){
		JSONArray allJson = new JSONArray();
		for (Combasemsg c:allCompanys){
			c.setBusinesslicense("<img src='"+c.getBusinesslicense()+"'"+" style='width:30px;hight:30px'/>");
			JSONObject Json = JSONObject.fromObject(c);
			allJson.add(Json);
		}
		return allJson;
	}

	public JSONObject writeToJSONObject(Object o){
		JSONObject Json = JSONObject.fromObject(o);
		return Json;
	}
}
*/