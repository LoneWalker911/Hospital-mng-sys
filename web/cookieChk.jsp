<%@ page import="Backend.Login" %>
<%          Cookie[] cookies = request.getCookies();
            if( cookies != null ) {
                System.out.println("HH");
            Cookie usr = null;
            for(int i = 0; i < cookies.length; i++)
            {
                if(cookies[i].getName().equals("usr"))
                {
                    usr=cookies[i];
                    System.out.println("KK");
                }
            }
            if(usr==null) {
                System.out.println("LL");
                response.sendRedirect("/Hospital-mng-sys/index.jsp");
                return;
            }
            System.out.println(usr.getValue());
            Login login = new Login();
            login.setLoginstring(usr.getValue());
            if(!login.ChkCookie())
            {
                usr.setMaxAge(0);
                response.addCookie(usr);
                response.sendRedirect("/Hospital-mng-sys/index.jsp");
            }
            }
            else
            {
                response.sendRedirect("/Hospital-mng-sys/index.jsp");
                return;
            } %>
