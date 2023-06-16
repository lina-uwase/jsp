package rw.ac.rca.webapp.web;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rw.ac.rca.webapp.dao.CourseDAO;
import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.CourseDAOImpl;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Course;
import rw.ac.rca.webapp.orm.Student;
import rw.ac.rca.webapp.orm.User;
import rw.ac.rca.webapp.util.UserRole;
import rw.ac.rca.webapp.util.Util;
import rw.ac.rca.webapp.dao.UserDAO;
import rw.ac.rca.webapp.dao.impl.UserDAOImpl;

/**
 * Servlet implementation class CreateUser
 */
public class CreateStudent extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StudentDAO studentDAO = StudentDAOImpl.getInstance();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateStudent() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageRedirect = request.getParameter("page");
        HttpSession httpSession = request.getSession();
        if (pageRedirect != null) {
            if (pageRedirect.equals("createStudent")) {
                if (request.getParameter("saveDataStudent") != null) {
                    Student student = new Student();
                    String firstName = request.getParameter("firstName");
                    String lastName = request.getParameter("lastName");
                    String phoneNumber = request.getParameter("phoneNumber");
                    boolean isInternational = Boolean.parseBoolean(request.getParameter("isInternational"));
                    boolean isPartTime = Boolean.parseBoolean(request.getParameter("isPartTime"));
                    boolean isRepeating = Boolean.parseBoolean(request.getParameter("isRepeating"));

                    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                    Date dob = null;

                    try {
                        dob = dateFormat.parse(request.getParameter("dob"));

                    } catch (ParseException e) {
                        throw new RuntimeException(e);
                    }

                    try {
                        student.setFirstName(firstName);
                        student.setLastName(lastName);
                        student.setPhoneNumber(phoneNumber);
                        student.setDateOfBirth(dob);
                        student.setInternational(isInternational);
                        student.setPartTime(isPartTime);
                        student.setRepeating(isRepeating);
                        System.out.println(student);
                        studentDAO.saveOrUpdateStudent(student);

                        httpSession.setAttribute("message", "Created successfully");
                    } catch (Exception e) {
                        httpSession.setAttribute("message", "Can't Create");
                    }

                }

            }
            request.getRequestDispatcher("WEB-INF/createStudent.jsp").forward(request, response);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}