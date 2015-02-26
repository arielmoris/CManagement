package com.cms.interceptor;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.resource.ResourceHttpRequestHandler;

import com.cms.dto.UserDto;
import com.google.gson.GsonBuilder;

public class SessionChecker extends HandlerInterceptorAdapter {
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		if(!isResourceHandler(handler)){
			HttpSession session = request.getSession();
			UserDto user = (UserDto) session.getAttribute("loggedUserDto");
			boolean isAjaxRequest = isAjaxRequest(request);
			if(user == null){
				session.invalidate();
				if(isAjaxRequest){
					ServletOutputStream out = response.getOutputStream();
					Map<String, Object> map = new HashMap<String, Object>();
					map.put("error", true);
					map.put("redirectUrl", request.getContextPath()+"/login?session");
					out.println(new GsonBuilder().serializeNulls().create().toJson(map));
					out.flush();
					out.close();
				}else{
					response.sendRedirect(request.getContextPath()+"/login");
				}
				return false;
			}
			
			/*String sesionId = accountService.getSessionId(user.getUsername());
			if(!sesionId.equalsIgnoreCase(session.getId())){
				session.invalidate();
				if(isAjaxRequest){
					ServletOutputStream out = response.getOutputStream();
					Map<String, Object> map = new HashMap<String, Object>();
					map.put("error", true);
					map.put("redirectUrl", request.getContextPath()+"/login?session");
					out.println(new GsonBuilder().serializeNulls().create().toJson(map));
					out.flush();
					out.close();
				}else{
					response.sendRedirect(request.getContextPath()+"/login?session");
				}
				return false;
			}*/
			
		}
		return super.preHandle(request, response, handler);
	}
	
	private boolean isResourceHandler(Object handler) {
        return handler instanceof ResourceHttpRequestHandler;
    }
	
	private boolean isAjaxRequest(HttpServletRequest request){
		return request.getHeader("X-Requested-With") != null;
	}
	
}
