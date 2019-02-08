package edu.owl.model;

import javax.persistence.*;

@Entity
@Table(name = "doexam")
public class DoExam {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "userId")
    private String userId;
    @Column(name = "examId")
    private int examId;
   @Column(name = "marks")
    private int marks;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }

    public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }


}
