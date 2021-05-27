import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", value = "/get")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription = request.getParameter("ProductDescription");
        String listPrice = request.getParameter("ListPrice");
        String discountPercent = request.getParameter("DiscountPercent");

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        Double discountAmount = Double.parseDouble(listPrice) * Double.parseDouble(discountPercent) * 0.01;
        Double discountPrice = Double.parseDouble(listPrice) - discountAmount;
        writer.println("<h1>Product Description " + productDescription + " </h1>");
        writer.println("<h1>Discount Amount " + discountAmount + " </h1>");
        writer.println("<h1>Discount Price " + discountPrice + " </h1>");
        writer.println("</html>");
    }
}
