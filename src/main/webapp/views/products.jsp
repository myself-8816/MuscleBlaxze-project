<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f6f9;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            border-radius: 12px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>

<div class="container">
    <div class="card shadow p-4">
        <h2>🏋️ Gym Equipment List</h2>

        <table class="table table-hover table-striped">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price ($)</th>
                </tr>
            </thead>

            <tbody>
                <% 
                    java.util.List<com.gym.model.Product> products = 
                        (java.util.List<com.gym.model.Product>) request.getAttribute("products");

                    for (com.gym.model.Product p : products) {
                %>
                <tr>
                    <td><%= p.getId() %></td>
                    <td><%= p.getName() %></td>
                    <td><%= p.getPrice() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <div class="text-center mt-3">
            <a href="index.jsp" class="btn btn-secondary">⬅ Back</a>
        </div>
    </div>
</div>

</body>
</html>
