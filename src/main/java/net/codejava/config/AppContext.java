package net.codejava.config;
import java.util.Properties;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan("net.codejava")
@EnableTransactionManagement
public class AppContext {
   @Bean
   public LocalSessionFactoryBean sessionFactory() {
       LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
       sessionFactory.setDataSource(dataSource());
       sessionFactory.setPackagesToScan(new String[] {
           "net.codejava"
       });
       sessionFactory.setHibernateProperties(hibernateProperties());
       return sessionFactory;
   }
   @Bean
   public DataSource dataSource() {
       DriverManagerDataSource dataSource = new DriverManagerDataSource();
       dataSource.setDriverClassName("com.mysql.jdbc.Driver");
       dataSource.setUrl("jdbc:mysql://localhost:4306/degrey");
       dataSource.setUsername("root");
       dataSource.setPassword("toivaban12345");
       return dataSource;
   }
   private Properties hibernateProperties() {
       Properties properties = new Properties();
       properties.put("hibernate.dialect", "org.hibernate.dialect.MySQL5InnoDBDialect");
       properties.put("hibernate.show_sql", true);
       properties.put("hibernate.format_sql", true);
       properties.put("hibernate.hbm2ddl.auto", "update");
       return properties;
   }

   @Bean
   public HibernateTransactionManager getTransactionManager() {
       HibernateTransactionManager transactionManager = new HibernateTransactionManager();
       transactionManager.setSessionFactory(sessionFactory().getObject());
       return transactionManager;
   }
}
