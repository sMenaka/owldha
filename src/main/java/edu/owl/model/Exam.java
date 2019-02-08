package edu.owl.model;

import javax.persistence.*;

@Entity
@Table(name = "exam")
public class Exam {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "examId")
    private int examId;
    @Column(name = "examName")
    private  String exameName;
    @Column(name = "discription")
    private String discription;
    @Column(name = "subjectId")
    private int subjectId;

    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }

    public String getExameName() {
        return exameName;
    }

    public void setExameName(String exameName) {
        this.exameName = exameName;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }


}
