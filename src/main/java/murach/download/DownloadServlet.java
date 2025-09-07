package murach.download;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;

public class DownloadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        String url = "/index.jsp";

        if (action == null) {
            action = "join"; // default
        }

        if (action.equals("join")) {
            url = "/register.jsp";
        }
        else if (action.equals("checkUser")) {
            String productCode = request.getParameter("productCode");
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");

            if (user == null) {
                url = "/register.jsp";
            } else {
                request.setAttribute("productCode", productCode);
                url = "/" + productCode + "_download.jsp";
            }
        }
        else if (action.equals("registerUser")) {
            // lấy dữ liệu từ form
            String email = request.getParameter("email");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");

            // tạo user object
            User user = new User(email, firstName, lastName);

            // lưu vào session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // cập nhật cookie
            addCookie(response, "email", email);
            addCookie(response, "firstName", firstName);
            addCookie(response, "lastName", lastName);

            String productCode = request.getParameter("productCode");
            if (productCode == null) {
                url = "/index.jsp";
            } else {
                request.setAttribute("productCode", productCode);
                url = "/" + productCode + "_download.jsp";
            }
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    /**
     * Ghi đè cookie (xóa cũ rồi thêm mới).
     */
    private void addCookie(HttpServletResponse response, String name, String value) {
        // xóa cookie cũ (nếu có)
        Cookie old = new Cookie(name, "");
        old.setMaxAge(0);
        old.setPath("/");
        response.addCookie(old);

        // tạo cookie mới
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(60 * 60 * 24 * 365 * 2); // 2 năm
        cookie.setPath("/");
        response.addCookie(cookie);
    }
}
