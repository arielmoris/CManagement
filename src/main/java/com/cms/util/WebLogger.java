package com.cms.util;

import java.io.*;
import java.text.*;
import java.util.*;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

public class WebLogger {
	static String prefix_name = "cafeportal";
	static String logdir;
	public WebLogger() {
		try 
		{
			///Load configuration file such as directory where the log while be placed
			InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream("/ClientManagementWebLogger.properties"); 

			Properties properties = new Properties();	
			properties.load(inputStream);

			logdir = properties.getProperty("LOGDIR");

			if (Boolean.valueOf(properties.getProperty("LOGGER"))){
				if (!(new File(logdir).exists())){
					new File(logdir).mkdir();
				}
			}		
			inputStream.close();
		}
		catch (FileNotFoundException e){
			e.printStackTrace();
		} 
		catch (IOException e){
			e.printStackTrace();
		}
	}

	public void logServerError(String data) {
		try {
			String filename = new String();
			filename = logdir+ prefix_name +"_"+ formatDate("ddMMMyyyy") + ".server";
			Writer writer = new FileWriter(filename, true);
			PrintWriter out = new PrintWriter(writer);
			out.println("----------------------------------------------");
			out.println("Date/Time :" + formatDate("MMM dd yyyy 'at' HH:mm:ss aaa ") +
					" ");
			out.println("INFO:\"" + data + "\"");
			writer.close();
			out.close();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void logThrowable (String ipAddress, String user,Throwable throwable) {
		try {

			/*build data to append on the logger */
			StringBuilder data= new StringBuilder();
			data.append("\nIP Address: " + ipAddress + "\n");
			data.append("Merchant Name: " + user + "\n");
			data.append("Message: ");

			String filename = new String();
			filename = logdir+"logs/" + prefix_name +"_"+ formatDate("ddMMMyyyy") + ".error";
			Writer writer = new FileWriter(filename, true);
			PrintWriter out = new PrintWriter(writer);
			out.println("----------------------------------------------");
			out.println("Date/Time :" + formatDate("MMM dd yyyy 'at' HH:mm:ss aaa") +
					"  ");
			out.println("INFO: " + data);
			throwable.printStackTrace(out);
			writer.close();
			out.close();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static String formatDate(String format) {
		Format formatter;
		Date date = new Date();
		formatter = new SimpleDateFormat(format);
		String formattedDate = formatter.format(date);
		return formattedDate;
	}

	public void logData (String ipAddress, String user, String message) {
		try {    	
			/*build data to append on the logger */
			StringBuilder data= new StringBuilder();
			data.append("\nIP Address: " + ipAddress + "\n");
			data.append("Username: " + user + "\n");
			data.append("Message: "+ message + "\n");
			String filename = new String();
			filename = logdir+ prefix_name +"_"+ formatDate("ddMMMyyyy") + ".log";
			Writer writer = new FileWriter(filename, true);
			PrintWriter out = new PrintWriter(writer);
			out.println("----------------------------------------------");
			out.println("Date/Time :" + formatDate("MMM dd yyyy 'at' HH:mm:ss aaa ") +
					" ");
			out.println("INFO: " + data);
			writer.close();
			out.close();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void logData(String message){
		try {
			String filename = new String();
			filename = logdir+ prefix_name +"_"+ formatDate("ddMMMyyyy") + ".log";
			Writer writer = new FileWriter(filename, true);
			PrintWriter out = new PrintWriter(writer);
			out.println();
			String[] data = Pattern.compile("[\n]").split(message);
			for(String datum : data){
				out.println(datum);
			}
			writer.close();
			out.println();
			out.close();
		}
		catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static String getClientIpAddr(HttpServletRequest request) {  
		String ip = request.getHeader("X-Forwarded-For");  
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
			ip = request.getHeader("Proxy-Client-IP");  
		}  
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
			ip = request.getHeader("WL-Proxy-Client-IP");  
		}  
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
			ip = request.getHeader("HTTP_CLIENT_IP");  
		}  
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");  
		}       
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
			ip = request.getRemoteAddr();  
		}  
		return ip; 
	}
}
