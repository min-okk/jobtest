package servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/ShindanServlet")
public class ShindanServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        // フォワード先の分岐
        if (action.equals("q1y")) {
            // Q1はいの処理
            request.getRequestDispatcher("/WEB-INF/jsp/question2.jsp").forward(request, response);
        } else if (action.equals("q1n")) {
            // Q1いいえの処理
            request.getRequestDispatcher("/WEB-INF/jsp/question3.jsp").forward(request, response);
        }
        else if (action.equals("q2y")) {
            // Q2はいの処理
            request.getRequestDispatcher("/WEB-INF/jsp/question4.jsp").forward(request, response);
        } else if (action.equals("q2n")) {
            // Q2いいえの処理
            request.getRequestDispatcher("/WEB-INF/jsp/question5.jsp").forward(request, response);
        }
        else if (action.equals("q3y")) {
            // Q3はいの処理
            request.getRequestDispatcher("/WEB-INF/jsp/question6.jsp").forward(request, response);
        } else if (action.equals("q3n")) {
            // Q3いいえの処理
            request.getRequestDispatcher("/WEB-INF/jsp/question7.jsp").forward(request, response);
        }
        else if (action.equals("q4y")) {
            // Q4はいの処理
            request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
        } else if (action.equals("q4n")) {
            // Q4いいえの処理
            request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
        }
        else if (action.equals("q5y")) {
            // Q5はいの処理
            request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
        } else if (action.equals("q5n")) {
            // Q5いいえの処理
            request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
        }
        else if (action.equals("q6y")) {
            // Q6はいの処理
            request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
        } else if (action.equals("q6n")) {
            // Q6いいえの処理
            request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
        }
        else if (action.equals("q7y")) {
            // Q7はいの処理
            request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
        } else if (action.equals("q7n")) {
            // Q7いいえの処理
            request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request, response);
        }
    }
}