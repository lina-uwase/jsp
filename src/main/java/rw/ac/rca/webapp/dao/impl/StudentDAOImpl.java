/**
 *
 */
package rw.ac.rca.webapp.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.UserDAO;
import rw.ac.rca.webapp.orm.Student;
import rw.ac.rca.webapp.orm.User;
import rw.ac.rca.webapp.util.UserRole;

/**
 * implements user interface extends DAO
 *
 * @see UserDAO
 * @see DAO
 * @author Aphrodice Rwagaju
 *
 */
public class StudentDAOImpl extends DAO implements StudentDAO {
    public static final Logger LOG = Logger.getLogger(StudentDAOImpl.class);
    public static StudentDAOImpl instance;

    /**
     * @return user instance
     */
    public static StudentDAOImpl getInstance() {
        if (instance == null) {
            return new StudentDAOImpl();

        } else {
            return instance;
        }
    }

    private StudentDAOImpl() {
    }

    /**
     * saves user
     *
     * @return user
     * @throws Exception
     */
    @Override
    public Student saveStudent(Student user) {
        try {
            begin();
            Student usr = (Student) getSession().save(user);
            commit();
            return usr;

        } catch (Exception e) {
            rollback();
            return null;
        }
    }

    /**
     * updates user
     *
     * @return user
     * @throws Exception
     */
    @Override
    public Student updateStudent(Student user) {
        try {
            begin();
            getSession().update(user);
            commit();
            return user;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }

    /**
     * saves or updates user
     *
     * @return user
     * @throws Exception
     */
    @Override
    public Student saveOrUpdateStudent(Student user) {
        try {
            begin();
            getSession().saveOrUpdate(user);
            commit();
            return user;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }

    /**
     * deletes user
     *
     * @return true
     * @return false
     * @throws Exception
     */
    @Override
    public boolean deleteStudent(Student user) {
        try {
            begin();
            getSession().delete(user);
            commit();
            return true;
        } catch (Exception e) {
            rollback();
            return false;
        }
    }

    /**
     * gets user by id
     *
     * @return user
     * @throws Exception
     */
    @Override
    public Student getStudentById(int id) {
        try {
            begin();
            Query query = getSession().createQuery("from Student where id= :ref");
            query.setInteger("ref", id);
            Student user = (Student) query.uniqueResult();
            commit();
            return user;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }

    /**
     * gets all users
     *
     * @return list users
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @Override
    public List<Student> getAllStudents() {
        try {
            begin();
            Query query = getSession().createQuery("from Student");
            List<Student> users = query.list();
            commit();
            return users;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }

    /**
     * gets user by username
     *
     * @return users the list of users
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @Override
    public List<Student> getStudentByStudentname(String username) {
        try {
            begin();
            Query query = getSession().createQuery("from Student where username= :ref");
            query.setString("ref", username);
            List<Student> users = query.list();
            commit();
            return users;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }

    /**
     * gets users by name
     *
     * @return users the list of users
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @Override
    public List<Student> getStudentByFullName(String fullName) {
        try {
            begin();
            Query query = getSession().createQuery("from Student where fullName= :ref");
            query.setString("ref", fullName);
            List<Student> users = query.list();
            commit();
            return users;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }

    @Override
    public Student getStudentByStudentNameAndPassword(String username, String password) {
        try {
            begin();
            Query query = getSession().createQuery("FROM Student u WHERE u.username = :usrn AND " + "u.password = :pswd");
            query.setString("usrn", username);
            query.setString("pswd", password);
            Student user = (Student) query.uniqueResult();
            commit();
            return user;
        } catch (Exception e) {
            rollback();
            return null;
        }
    }





}