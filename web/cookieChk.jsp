<%@ page import="Backend.Login" %>
<%          Cookie[] cookies = null;
    Cookie usr = null;
    Login login = new Login();
    cookies = request.getCookies();
            if( cookies != null ) {
            for(int i = 0; i < cookies.length; i++)
            {
                if(cookies[i].getName().equals("usr"))
                {
                    usr=cookies[i];
                    login.setLoginstring(usr.getValue());
                }
            }
            }
            out.print(login.getType());
%>
