<%-- 
    Document   : admin
    Created on : 13 Dec, 2024, 10:31:24 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Panel</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
        <!--<link rel="stylesheet" href="AdminPage.css">-->
        <style>
            body {
                font-family: 'Roboto', sans-serif;
            }
            .sidebar {
                height: 100vh;
                position: fixed;
                top: 0;
                left: 0;
                width: 250px;
                background-color: #1a202c;
                color: white;
                z-index: 1000;
            }
            .sidebar a {
                display: block;
                padding: 15px;
                color: white;
                text-decoration: none;
            }
            .sidebar a:hover {
                background-color: #2d3748;
            }
            .content {
                margin-left: 250px;
                padding: 20px;
            }
            .w-full table-auto{
                text-align: center;
            }
        </style>
    </head> 
    <body class="bg-gray-100">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="p-4 text-center">
                <h1 class="text-2xl font-bold">Admin Panel</h1>
            </div>
            <nav class="mt-10">
                <a href="#projects" class="hover:bg-gray-700">
                    <i class="fas fa-project-diagram"></i> Projects
                </a>
                <a href="#clients" class="hover:bg-gray-700">
                    <i class="fas fa-users"></i> Clients
                </a>
                <a href="#contact-forms" class="hover:bg-gray-700">
                    <i class="fas fa-envelope"></i> Contact Forms
                </a>
                <a href="#subscriptions" class="hover:bg-gray-700">
                    <i class="fas fa-newspaper"></i> Subscriptions
                </a>
            </nav>
        </div>

        <!-- Main Content -->
        <div class="content">
            <!-- Projects Section -->
            <section id="projects" class="mb-8">
                <h2 class="text-2xl font-bold mb-4">Manage Projects</h2>
                <form class="bg-white p-4 rounded shadow" action="AddProject" method="post" enctype="multipart/form-data">
                    
                    <div class="mb-4">
                        <label class="block text-gray-700" for="projectName">Project Name</label>
                        <input class="w-full p-2 border border-gray-300 rounded" id="projectName"  name="projectName"type="text">
                    </div>
                    
                    <div class="mb-4">
                        <label class="block text-gray-700" for="projectDescription">Project Description</label>
                        <textarea class="w-full p-2 border border-gray-300 rounded" id="projectDescription" name="projectdescription"></textarea>
                    </div>
                    
                    <div class="mb-4">
                        <label class="block text-gray-700" for="projectImage">Project Image</label>
                        <input class="w-full p-2 border border-gray-300 rounded" id="projectImage" name="projectImage" type="file"  accept="image/*" >
                    </div>
                    
                    
                    <button class="w-full bg-blue-600 text-white py-2 rounded" type="submit">Add Project</button>
                </form>
            </section>

            <!-- Clients Section -->
            <section id="clients" class="mb-8">
                <h2 class="text-2xl font-bold mb-4">Manage Clients</h2>
                <form class="bg-white p-4 rounded shadow">
                    <div class="mb-4">
                        <label class="block text-gray-700" for="clientImage">Client Image</label>
                        <input class="w-full p-2 border border-gray-300 rounded" id="clientImage" type="file">
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700" for="clientName">Client Name</label>
                        <input class="w-full p-2 border border-gray-300 rounded" id="clientName" type="text">
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700" for="clientDescription">Client Description</label>
                        <textarea class="w-full p-2 border border-gray-300 rounded" id="clientDescription"></textarea>
                    </div>
                    <div class="mb-4">
                        <label class="block text-gray-700" for="clientDesignation">Client Designation</label>
                        <input class="w-full p-2 border border-gray-300 rounded" id="clientDesignation" type="text">
                    </div>
                    <button class="w-full bg-blue-600 text-white py-2 rounded" type="submit">Add Client</button>
                </form>
            </section>

            <!-- Contact Forms Section -->
            <section id="contact-forms" class="mb-8">
                <h2 class="text-2xl font-bold mb-4">Contact Form Details</h2>
                <div class="bg-white p-4 rounded shadow">
                    <form action="getContact">
                        <%
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin?useSSL=false&serverTimezone=UTC", "root", "W7301@jqir#");
                                Statement st = con.createStatement();
                                String sql = "SELECT full_name, email_address, mobile_number, city FROM contact_form";
                                ResultSet rs = st.executeQuery(sql);
                        %>
                        <table style="width:100%" border="2" class="w-full table-auto">
                            <thead>
                                <tr>
                                    <th class="px-4 py-2">Full Name</th>
                                    <th class="px-4 py-2">Email Address</th>
                                    <th class="px-4 py-2">Mobile Number</th>
                                    <th class="px-4 py-2">City</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    while (rs.next()) {
                                        String name = rs.getString("full_name");
                                        String email = rs.getString("email_address");
                                        String mobileNumber = rs.getString("mobile_number");
                                        String city = rs.getString("city");
                                %>
                                <tr>
                                    <td class="border px-4 py-2"><%= name%></td>
                                    <td class="border px-4 py-2"><%= email%></td>
                                    <td class="border px-4 py-2"><%= mobileNumber%></td>
                                    <td class="border px-4 py-2"><%= city%></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                        <%
                                rs.close();
                                st.close();
                                con.close();
                            } catch (Exception e) {
                                out.println("Error: " + e.getMessage());
                            }
                        %>

                        <br>
                        <br>
                        <!-- Subscriptions Section -->
                        <section id="subscriptions" class="mb-8">
                            <h2 class="text-2xl font-bold mb-4"> Subscribed Email Addresses</h2>
                            <div class="bg-white p-4 rounded shadow">



                                <%
                                    try {
                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin?useSSL=false&serverTimezone=UTC", "root", "W7301@jqir#");
                                        Statement st = con.createStatement();
                                        String sql = "SELECT email FROM users";
                                        ResultSet rs = st.executeQuery(sql);
                                %>
                                <table class="w-full table-auto">
                                    <thead>
                                        <tr>
                                            <th class="px-4 py-2">Email Address</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            while (rs.next()) {
                                                String emaill = rs.getString("email");
                                        %>
                                        <tr>
                                            <td class="border px-4 py-2"><%= emaill%></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                                <%
                                        rs.close();
                                        st.close();
                                        con.close();
                                    } catch (Exception e) {
                                        out.println("Error: " + e.getMessage());
                                    }
                                %>
                            </div>

                        </section>
                </div>
                </body>
                </html>

