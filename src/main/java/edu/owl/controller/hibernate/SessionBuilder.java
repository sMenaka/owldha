package edu.owl.controller.hibernate;


import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class SessionBuilder{

    public static  SessionFactory getSessionFactory() {
        Configuration config= new Configuration();
        config.configure("hibernate.cfg.xml");
        ServiceRegistry serviceRegistry = new ServiceRegistryBuilder()
                .applySettings(config.getProperties())
                .buildServiceRegistry();
        SessionFactory sessionFac= config.buildSessionFactory(serviceRegistry);
        return sessionFac;
    }
}
