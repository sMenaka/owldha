package edu.owl.interfaces;

import edu.owl.model.*;

import java.util.List;

public interface Handleable {
    public boolean insert(User user);
    public boolean insert(DoExam result);
    public boolean deleteItem(User user);
    public List<User> getAllItems(String hql);
    public List<Quiz> getAllQuiez(String hql);
    public List<Answer> getAnswer(String hql);
    public List<DoExam> getResult(String hql);
    public List<User> getUser(String hql);
    public void justRunHQL(String hql);
    public List<Topic>  getTopics(String hql);
    public List<Subject> getSubject(String hql);

}
