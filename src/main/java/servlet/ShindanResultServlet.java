package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.JobList;

@WebServlet("/ShindanResultServlet")
public class ShindanResultServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:h2:tcp://localhost/~/jobtest"; // H2データベースのURLを修正
    private static final String DB_USER = "sa";
    private static final String DB_PASS = "";
    
 // JDBCドライバの読み込み
    static {
        try {
            Class.forName("org.h2.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	String resultId = request.getParameter("resultId"); // パラメータ名を修正

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS)) {
            String sql = "SELECT * FROM joblist WHERE jobID = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, resultId); // パラメータバインディングのインデックスを修正

            ResultSet rs = stmt.executeQuery();
            ArrayList<JobList> jobLists = new ArrayList<>();
            while (rs.next()) {
                String jobId = rs.getString("JOBID");
                String jobName = rs.getString("JOBNAME");
                String comment = rs.getString("COMMENT");
                String type1 = rs.getString("TYPE1");
                String type2 = rs.getString("TYPE2");
                String type3 = rs.getString("TYPE3");
                String job1 = rs.getString("JOB1");
                String job2 = rs.getString("JOB2");
                String job3 = rs.getString("JOB3");
                String jobImg = rs.getString("JOBIMG");
                JobList jobList = new JobList(jobId, jobName, comment, type1, type2, type3, job1, job2, job3, jobImg);
                jobLists.add(jobList);
            }

            request.setAttribute("jobLists", jobLists);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
            dispatcher.forward(request, response);

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
}