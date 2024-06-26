package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RegisterUserLogic;
import model.User;

@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String forwardPath = null;
        String action = request.getParameter("action");

        if (action == null) {
            forwardPath = "/WEB-INF/jsp/index.jsp";
        } else if (action.equals("done")) {
            HttpSession session = request.getSession();
            User registerUser = (User) session.getAttribute("registerUser");
            RegisterUserLogic logic = new RegisterUserLogic();
            logic.execute(registerUser);
            session.removeAttribute("registerUser");
            forwardPath = "/WEB-INF/jsp/question1.jsp";
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");

        // 名前が空白または null の場合、「匿名希望」を設定
        if (name == null || name.trim().isEmpty()) {
            name = "匿名希望";
        }

        User registerUser = new User(name);
        HttpSession session = request.getSession();
        session.setAttribute("registerUser", registerUser);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/question1.jsp");
        dispatcher.forward(request, response);
    }
}