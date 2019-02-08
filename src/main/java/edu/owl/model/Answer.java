package edu.owl.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "answer")
public class Answer {
    @Id
    @Column(name = "answerId")
    private int answerId;
    @Column(name = "answer")
    private String answer;
    @Column(name = "quizId")
    private int quizeId;
    @Column(name = "isTrue")
    private boolean isTrue;

    public int getAnswerId() {
        return answerId;
    }

    public void setAnswerId(int answerId) {
        this.answerId = answerId;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public int getQuizeId() {
        return quizeId;
    }

    public void setQuizeId(int quizeId) {
        this.quizeId = quizeId;
    }

    public boolean isTrue() {
        return isTrue;
    }

    public void setTrue(boolean aTrue) {
        isTrue = aTrue;
    }


}
