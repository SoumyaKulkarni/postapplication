package application.web;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import application.dao.DaoImplementation;
import application.pojo.Address;
import application.pojo.PickUpDetails;
import application.pojo.User;

/**
 * Servlet implementation class ApplicationServlet
 */
@WebServlet("/appserv/*")
public class ApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final Logger LOGGER=Logger.getLogger(ApplicationServlet.class.getName());
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		HttpSession session=request.getSession();
		DaoImplementation daoImplementation=DaoImplementation.daoImplementation;
		if(uri.endsWith("register")){
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String email=request.getParameter("email");
			String addressOption=request.getParameter("addressOption");
			String address=request.getParameter("address");
			String city=request.getParameter("city");
			String state=request.getParameter("state");
			String pincode=request.getParameter("pincode");
			String contactNo=request.getParameter("contactNo");
			
			User user=new User(fname, lname, email);
			Address address2=new Address(address, city, state, pincode, contactNo, email, addressOption);
			boolean isRegistered=daoImplementation.userRegistration(user,address2);
			if(isRegistered){
				LOGGER.info("Registerd Successfully "+user+" with address "+address2);
				session.setAttribute("email", email);
				response.sendRedirect("../pickupdetails.jsp");
			}
		}else if(uri.endsWith("pickup")){
			String email=(String) session.getAttribute("email");
			String date=request.getParameter("datepick");
			String time=request.getParameter("time");
			String weight=request.getParameter("weight");
			
			PickUpDetails details=new PickUpDetails();
			details.setPickupDate(date);
			details.setPickupTime(time);
			details.setWeightOfparcel(weight);
			details.setEmail(email);
			
			
			User user=daoImplementation.getAddress(details);
			LOGGER.info("Order has been taken successfully details"+details);
			session.setAttribute("pickupDetails", details);		
			response.sendRedirect("../confirmOrder.jsp");
			
		}
		else{
			response.sendRedirect("../index.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		}

}
