package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ShindanServlet")
public class ShindanServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final Map<String, String> QUESTION_MAP = new HashMap<>();

    static {
        QUESTION_MAP.put("q1y", "question2.jsp");
        QUESTION_MAP.put("q1n", "question3.jsp");
        QUESTION_MAP.put("q2y", "question4.jsp");
        QUESTION_MAP.put("q2n", "question5.jsp");
        QUESTION_MAP.put("q3y", "question6.jsp");
        QUESTION_MAP.put("q3n", "question7.jsp");
        QUESTION_MAP.put("q4y", "result.jsp");
        QUESTION_MAP.put("q4n", "result.jsp");
        QUESTION_MAP.put("q5y", "result.jsp");
        QUESTION_MAP.put("q5n", "result.jsp");
        QUESTION_MAP.put("q6y", "result.jsp");
        QUESTION_MAP.put("q6n", "result.jsp");
        QUESTION_MAP.put("q7y", "result.jsp");
        QUESTION_MAP.put("q7n", "result.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if (action == null || action.isEmpty()) {
            // エラー処理: actionパラメータが不正な場合
            request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
            return;
        }

        String nextPage = QUESTION_MAP.get(action);
        if (nextPage == null) {
            // エラー処理: 不明なactionの場合
            request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/WEB-INF/jsp/" + nextPage).forward(request, response);
        }
    }
}