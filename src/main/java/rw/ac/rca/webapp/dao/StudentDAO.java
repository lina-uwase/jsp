/**
 *
 */
package rw.ac.rca.webapp.dao;

import java.util.List;

import rw.ac.rca.webapp.orm.Student;

/**
 * @author Aphrodice Rwagaju
 *
 */
public interface StudentDAO {

    public Student saveStudent(Student user);

    public Student updateStudent(Student user);

    public Student saveOrUpdateStudent(Student user);

    public boolean deleteStudent(Student user);

    public Student getStudentById(int userId);

    public List<Student> getAllStudents();

    public List<Student> getStudentByStudentname(String username);

    public List<Student> getStudentByFullName(String fullName);

    public Student getStudentByStudentNameAndPassword(String username, String password);



}
