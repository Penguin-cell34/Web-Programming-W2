<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Murach Survey - Thanks</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/main.css"
          type="text/css">

</head>

<body>

<div class="page">

    <div class="card">

        <!-- Logo -->
        <div class="logo-container">
            <img
                src="${pageContext.request.contextPath}/images/Murach_image.jpg"
                alt="Murach Logo"
                class="logo">
        </div>


        <!-- Header -->
        <div class="header">

            <h1>Thanks for taking our survey</h1>

            <p>
                Here is the information that you entered:
            </p>

        </div>


        <!-- Results -->
        <div class="results">


            <!-- First Name -->
            <div class="result-row">

                <span class="result-label">
                    First Name
                </span>

                <span class="result-value">
                    ${firstName}
                </span>

            </div>


            <!-- Last Name -->
            <div class="result-row">

                <span class="result-label">
                    Last Name
                </span>

                <span class="result-value">
                    ${lastName}
                </span>

            </div>


            <!-- Email -->
            <div class="result-row">

                <span class="result-label">
                    Email
                </span>

                <span class="result-value">
                    ${email}
                </span>

            </div>


            <!-- Date of Birth -->
            <div class="result-row">

                <span class="result-label">
                    Date of Birth
                </span>

                <span class="result-value">
                    ${dateOfBirth}
                </span>

            </div>


            <!-- Source -->
            <div class="result-row">

                <span class="result-label">
                    How you heard about us
                </span>

                <span class="result-value">
                    ${source}
                </span>

            </div>


            <!-- Special Offers -->
            <div class="result-row">

                <span class="result-label">
                    Special Offers
                </span>

                <span class="result-value">

                    ${announceYes
                        ? "YES, I'd like that."
                        : "No"}

                </span>

            </div>


            <!-- Email Announcements -->
            <div class="result-row">

                <span class="result-label">
                    Email Announcements
                </span>

                <span class="result-value">

                    ${announceEmail
                        ? "YES, please send me email announcements"
                        : "No"}

                </span>

            </div>


            <!-- Contact -->
            <div class="result-row">

                <span class="result-label">
                    Contact Via
                </span>

                <span class="result-value">
                    ${contactBy}
                </span>

            </div>

        </div>


        <!-- Return -->
        <div class="return-area">

            <form action="index.html" method="get">

                <input
                    type="submit"
                    value="Return to Survey"
                    class="return-button">

            </form>

        </div>

    </div>

</div>

</body>

</html>