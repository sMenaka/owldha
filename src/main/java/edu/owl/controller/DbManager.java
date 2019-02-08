package edu.owl.controller;

import edu.owl.controller.hibernate.SessionBuilder;
import edu.owl.interfaces.Handleable;
import edu.owl.model.*;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

public class DbManager implements Handleable {

    @Override
    public boolean insert(User user) {
        boolean result = false;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            session.save(user);
            result = true;

        } catch (Exception e) {
            result = false;
        } finally {
            session.getTransaction().commit();
            session.close();
        }

        return result;
    }

    @Override
    public boolean insert(DoExam result) {
        boolean rt = false;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            session.save(result);
            rt = true;

        } catch (Exception e) {
            rt = false;
        } finally {
            session.getTransaction().commit();
            session.close();
        }

        return rt;
    }

    @Override
    public boolean deleteItem(User user) {
        boolean result = false;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            session.delete(user);
            result = true;
        } catch (Exception e) {
            result = true;
        } finally {
            session.getTransaction();
            session.close();
        }
        return result;
    }

    @Override
    public List<User> getAllItems(String model) {
        List<User> resultList = null;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            Query query = session.createQuery("from User");
            resultList = query.list();
            System.out.println(resultList.size());
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            session.getTransaction();
            session.close();
        }
        return resultList;
    }

    @Override
    public List<Quiz> getAllQuiez(String hql) {
        List<Quiz> resultList = null;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            Query query = session.createQuery(hql);
            resultList = query.list();

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            session.getTransaction();
            session.close();
        }
        return resultList;

    }

    @Override
    public List<Answer> getAnswer(String hql) {
        List<Answer> resultList = null;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            Query query = session.createQuery(hql);
            resultList = query.list();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            session.getTransaction();
            session.close();
        }
        return resultList;
    }

    @Override
    public List<DoExam> getResult(String hql) {
        List<DoExam> resultList = null;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            Query query = session.createQuery(hql);
            resultList = query.list();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            session.getTransaction();
            session.close();
        }
        return resultList;
    }

    @Override
    public List<User> getUser(String hql) {
        List<User> resultList = null;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            Query query = session.createQuery(hql);
            resultList = query.list();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            session.getTransaction();
            session.close();
        }
        return resultList;
    }

    @Override
    public void justRunHQL(String hql) {
        List<DoExam> resultList = null;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            Query query = session.createQuery(hql);
            query.list();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            session.getTransaction();
            session.close();
        }
    }

    @Override
    public List<Topic> getTopics(String hql) {
        List<Topic> resultList = null;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            Query query = session.createQuery(hql);
            resultList = query.list();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            session.getTransaction();
            session.close();
        }
        return resultList;
    }


    @Override
    public List<Subject> getSubject(String hql) {
        List<Subject> resultList = null;
        Session session = SessionBuilder.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            Query query = session.createQuery(hql);
            resultList = query.list();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            session.getTransaction();
            session.close();
        }
        return resultList;
    }
}
