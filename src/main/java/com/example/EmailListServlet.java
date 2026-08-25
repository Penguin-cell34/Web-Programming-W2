package com.example;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/emailList")
public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // Lấy thông tin cá nhân
        request.setAttribute("firstName",
                request.getParameter("firstName"));

        request.setAttribute("lastName",
                request.getParameter("lastName"));

        request.setAttribute("email",
                request.getParameter("email"));

        // Lấy ngày, tháng, năm sinh
        String day = request.getParameter("dobDay");
        String month = request.getParameter("dobMonth");
        String year = request.getParameter("dobYear");

        // Ghép thành ngày sinh
        String dateOfBirth = day + "/" + month + "/" + year;

        request.setAttribute("dateOfBirth", dateOfBirth);

        // Cách người dùng biết đến website
        request.setAttribute("source",
                request.getParameter("source"));

        // Checkbox
        request.setAttribute("announceYes",
                request.getParameter("announcements1") != null);

        request.setAttribute("announceEmail",
                request.getParameter("announcements2") != null);

        // Phương thức liên hệ
        request.setAttribute("contactBy",
                request.getParameter("contactMethod"));

        // Chuyển sang trang cảm ơn
        request.getRequestDispatcher("/thanks.jsp")
                .forward(request, response);
    }
}