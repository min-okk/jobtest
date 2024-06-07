package model;
import java.io.Serializable;

public class JobList implements Serializable{
	private String jobId; // JOB Id
	private String jobName; // JOB NAME
	private String comment; // COMMENT
	private String type1; // タイプ1
	private String type2; // タイプ2
	private String type3; // タイプ3
	private String job1; // タイプ1
	private String job2; // タイプ2
	private String job3; // タイプ3
	
	public JobList() {}
	public JobList(String jobId, String jobName,String comment,
			String type1,String type2,String type3,String job1,String job2,String job3) {
		this.jobName = jobName;
		this.comment = comment;
		this.type1 = type1;
		this.type2 = type2;
		this.type3 = type3;
		this.job1 = job1;
		this.job2 = job2;
		this.job3 = job3;
	}
	
	public String getJobId() { return jobId; }
	public String getJobName() { return jobName; }
	public String getComment() { return comment; }
	public String getType1() { return type1; }
	public String getType2() { return type2; }
	public String getType3() { return type3; }
	public String getJob1() { return job1; }
	public String getJob2() { return job2; }
	public String getJob3() { return job3; }

}
