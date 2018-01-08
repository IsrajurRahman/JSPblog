package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BlogPost
 */
@WebServlet("/BlogPost")
public class BlogP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			String title = request.getParameter("user");
			String date =  request.getParameter("password");
			String description =  request.getParameter("description");
			String sql = "insert into content(title,date,description) values(?,?,?)";
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/my_blog","root","");
			java.sql.PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, date);
			ps.setString(3, description);
			ps.executeUpdate();
			PrintWriter out = response.getWriter();
			out.println("Registered");
		
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
}

}
