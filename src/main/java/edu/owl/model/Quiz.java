package edu.owl.model;

import javax.persistence.*;

@Entity
@Table(name = "quiz")
public class Quiz {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "quizId")
    private int quizeId;
    @Column(name = " quizContent")
    private String qizeContent;
    @Column(name = "examId")
    private int examId;
    public int getQuizeId() {
        return quizeId;
    }

    public void setQuizeId(int quizeId) {
        this.quizeId = quizeId;
    }

    public String getQizeContent() {
        return qizeContent;
    }

    public void setQizeContent(String qizeContent) {
        this.qizeContent = qizeContent;
    }

    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }



}
