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

//ユーザー登録に関するリスクエストを処理するコントローラー

@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       //フォワード先
       String forwardPath = null;

       //サーブレットクラスの動作を決定するactionの値をリクエストパラメータから取得する
       String action = request.getParameter("action");

       //actionの値がnullの場合の処理
       if (action == null) {
           //フォワード先を設定
           forwardPath = "/WEB-INF/jsp/index.jsp";
       }
       //STARTをリクエストされたときの処理
       else if (action.equals("done")) {
           //セッションスコープに保存された登録ユーザを取得
           HttpSession session = request.getSession();
           User registerUser = (User)session.getAttribute("registerUser");

           //登録処理の呼び出し
           RegisterUserLogic logic = new RegisterUserLogic();
           logic.execute(registerUser);

           //不要になったセッションスコープ内のインスタンスを削除
           session.removeAttribute("registerUser");

           //登録後のフォワード先を設定
           forwardPath = "/WEB-INF/jsp/question1.jsp";
       }

       //設定されたフォワード先にフォワード
       RequestDispatcher dispatcher = request.getRequestDispatcher(forwardPath);
       dispatcher.forward(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       //リクエストパラメータのエンコーディングを設定
       request.setCharacterEncoding("UTF-8");

       //リクエストパラメータの取得
       String name = request.getParameter("name");

       //登録するユーザーの情報を設定
       User registerUser = new User(name);

       //セッションスコープにユーザーを保存
       HttpSession session = request.getSession();
       session.setAttribute("registerUser", registerUser);

       //フォワード
       RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/question1.jsp");
       dispatcher.forward(request, response);
   }
}