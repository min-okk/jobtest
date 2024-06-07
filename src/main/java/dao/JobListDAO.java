package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;

import model.JobList;

public class JobListDAO {

    // データベース接続に使用する情報
    private final String JDBC_URL ="jdbc:h2:tcp://localhost/~/jobtest";
    private final String DB_USER = "sa";
    private final String DB_PASS = "";

    public List<JobList> findAll() throws ServletException {
        List<JobList> jobLists = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {
            String sql = "SELECT JOBID, JOBNAME, COMMENT, TYPE1, TYPE2, TYPE3, JOB1, JOB2, JOB3 FROM JOBLIST";
            PreparedStatement pStmt = conn.prepareStatement(sql);

            // SELECT文を実行して結果表（ResultSet）を取得
            // SELECT文の結果が格納される rs
            ResultSet rs = pStmt.executeQuery();

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

                // 取り出した値からインスタンスを作成
                JobList jobList = new JobList(jobId, jobName, comment, type1, type2, type3, job1, job2, job3);
                jobLists.add(jobList);
            }

            // リソースの解放
            rs.close();
            pStmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException(e);
        }

        return jobLists;
    }
}
