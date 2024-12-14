<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>
        Landing Page
    </title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Landing.css">
</head>

<body class="bg-white">
    <!-- Navbar -->
    <header class="bg-white shadow-md">
        <div class="container mx-auto flex justify-between items-center py-4 px-6">
            <div class="navbar-brand">
                <img src="images/4th year full stack Assets/Lead Generation Landing page (Images)/logo.svg" alt=" Company log">

            </div>
            <nav class="space-x-6">
                <a class="text-gray-600 hover:text-blue-600" href="#">HOME</a>
                <a class="text-gray-600 hover:text-blue-600" href="#">SERVICES</a>
                <a class="text-gray-600 hover:text-blue-600" href="#Project">ABOUT PROJECTS</a>
                <a class="text-gray-600 hover:text-blue-600" href="admin.jsp">ADMIN</a>
                <a class="bg-orange-500 text-white px-4 py-2 rounded hover:bg-orange-600" href="#"
                    id="contact-link">CONTACT</a>
            </nav>
        </div>
    </header>
    
    <div class="container">
        <!-- Our Company Section -->
        <main class="relative">
            <img alt="Three people discussing a project with blueprints" class="w-full h-auto object-cover img1"
                height="600" src="images/4th year full stack Assets/Lead Generation Landing page (Images)/young-couple-examining-blueprints-with-real-estate-agent-while-buying-new-home 1.svg" />
            <div class="absolute top-0 left-0 w-full h-full flex items-center justify-center">
                <div class="container mx-auto flex justify-between items-center px-6">
                    <div class="img1">
                        <div>CONSALTATION,<br>DESIGN <br> & MARKETING
                        </div>
                    </div>
                    <div id="form-container" class="bg-blue-900 bg-opacity-75 p-8 rounded-lg shadow-lg hidden">
                        <h2 class="text-white text-2xl font-bold mb-4">Get a Free Consultation</h2>
                        <form id="consultation-form" action="ContactServlet" method="post">
                            <div class="mb-4">
                                <input class="w-full p-3 rounded bg-white text-gray-800" placeholder="Full Name"
                                    type="text"  id="fullName" name="full_name" required/>
                            </div>
                            <div class="mb-4">
                                <input class="w-full p-3 rounded bg-white text-gray-800"
                                    placeholder="Enter Email Address" type="email" id="email" name="email_address" required />
                            </div>
                            <div class="mb-4">
                                <input class="w-full p-3 rounded bg-white text-gray-800" placeholder="Mobile Number"
                                    type="text" id="mobile" name="mobile_number" required />
                            </div>
                            <div class="mb-4">
                                <input class="w-full p-3 rounded bg-white text-gray-800" placeholder="Area/City"
                                    type="text" id="city" name="city" required/>
                            </div>
                            <button class="w-full bg-orange-500 text-white p-3 rounded hover:bg-orange-600"
                                type="submit">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </main>
        <!-- circle section -->
        <div class="container4">
            <div class="text-section">
                <h1>
                    Not Your Average Realtor
                </h1>
                <p>
                    Meet realtors who are experts in navigating property, with local market insights, and effective
                    strategies to get the house you desire at the best value.
                </p>
            </div>
            <div class="image-section">
                <img alt="Realtor holding a small house model" height="150"
                    src="images/4th year full stack Assets/Lead Generation Landing page (Images)/Ellipse 11.svg"
                    width="150" />
                <img alt="Couple discussing with a realtor" height="150"
                    src="images/4th year full stack Assets/Lead Generation Landing page (Images)/Ellipse 12.svg"
                    width="150" />
                <img alt="Realtor showing house keys" height="150"
                    src="images/4th year full stack Assets/Lead Generation Landing page (Images)/Ellipse 13.svg"
                    width="150" />
            </div>
        </div>
        <!-- //Why choose section -->
        <div class="container5">
            <h2>
                Why Choose Us?
            </h2>
            <div class="cards1">
                <div class="card1">
                    <img alt=" Potential ROI" height="50"
                        src="images/4th year full stack Assets/Lead Generation Landing page (Icons)/home.svg"
                        width="50" />
                    <h3>
                        Potential ROI
                    </h3>
                    <p>
                        Whether you are looking to buy a development or renovate your current home for sale, we will
                        work you through potential returns for projects.
                    </p>
                </div>
                <div class="card1">
                    <img alt="Design" height="50"
                        src="images/4th year full stack Assets/Lead Generation Landing page (Icons)/paintbrush-2.svg"
                        width="50" />
                    <h3>
                        Design
                    </h3>
                    <p>
                        Our in-house, world-renowned design team will guide through your design options and assist in
                        selecting contractors to complete the home upgrades.
                    </p>
                </div>
                <div class="card1">
                    <img alt="Marketing" height="50"
                        src="images/4th year full stack Assets/Lead Generation Landing page (Icons)/circle-dollar-sign.svg"
                        width="50" />
                    <h3>
                        Marketing
                    </h3>
                    <p>
                        Having your property marketed using proven and sophisticated digital marketing plans accompanied
                        with having the most up-to-date listings.
                    </p>
                </div>
            </div>
        </div>

        <!-- IMAGE SECTION -->
        <div class="container6">
            <div class="images">
                <img alt="Person talking to another person outside a building" height="150"
                    src="images/4th year full stack Assets/Lead Generation Landing page (Images)/pexels-fauxels-3182834.svg"
                    width="200" />
                <img alt="Group of people discussing inside an office" height="150"
                    src="images/4th year full stack Assets/Lead Generation Landing page (Images)/pexels-brett-sayles-2881232.svg"
                    width="200" />
                <img alt="People shaking hands in a meeting" height="150"
                    src="images/4th year full stack Assets/Lead Generation Landing page (Images)/pexels-andres-ayrton-6578391.svg"
                    width="200" />
            </div>
            <div class="about">
                <h2>
                    About Us
                </h2>
                <div class="underline">
                </div>
                <p>
                    Fifteen years of experience in real estate, excellent customer service and a commitment to work
                    hard, listen and follow through. We provide quality services to build relationships with clients
                    and, more importantly, maintain those relationships by communicating effectively.
                </p>
                <button>
                    LEARN MORE
                </button>
            </div>
        </div>
        <!-- Our Projects Section -->
        <section class="section" id="Project">
            <h2>
                Our Projects
            </h2>
            <div class="grid">
                <div class="card">
                    <img alt="Project image showing a modern office building" height="200"
                        src="https://storage.googleapis.com/a1aa/image/7ft6m3E9f3kGXUrhYLtZvreE2wpDOyzSpdm9UyGReykVf2NfE.jpg"
                        width="300" />
                    <h3>
                        Project 1
                    </h3>
                    <p>
                        Description of Project 1
                    </p>
                    <button>
                        Read More
                    </button>
                </div>
                <div class="card">
                    <img alt="Project image showing a residential complex" height="200"
                        src="https://storage.googleapis.com/a1aa/image/3eBTQ7N1rHUpWyhURCipAmlHUUceA6Fb73R4YLxkoKD63u5TA.jpg"
                        width="300" />
                    <h3>
                        Project 2
                    </h3>
                    <p>
                        Description of Project 2
                    </p>
                    <button>
                        Read More
                    </button>
                </div>
                <div class="card">
                    <img alt="Project image showing a commercial shopping center" height="200"
                        src="https://storage.googleapis.com/a1aa/image/EKelsLd0eFmjk0fmzXKlGhKbRRRvINH3f8A7AVHA03PSf2NfE.jpg"
                        width="300" />
                    <h3>
                        Project 3
                    </h3>
                    <p>
                        Description of Project 3
                    </p>
                    <button>
                        Read More
                    </button>
                </div>
            </div>
        </section>
        <!-- Happy Clients Section -->
        <section class="section">
            <h2>
                Happy Clients
            </h2>
            <div class="grid">
                <div class="card">
                    <img alt="Client image showing a smiling businesswoman" height="100"
                        src="https://storage.googleapis.com/a1aa/image/5zTX6jfVNGUVQixPcZfUr18NDDNE3U65iXTvf3NeMh3Pf2NfE.jpg"
                        width="100" />
                    <h3>
                        Client 1
                    </h3>
                    <p>
                        CEO, Company 1
                    </p>
                    <p>
                        Client 1's description
                    </p>
                </div>
                <div class="card">
                    <img alt="Client image showing a happy businessman" height="100"
                        src="https://storage.googleapis.com/a1aa/image/7fPFwxFQ131WTibXOBOrJ0hEGny0MjtqR02I4iWyKlB8b38JA.jpg"
                        width="100" />
                    <h3>
                        Client 2
                    </h3>
                    <p>
                        Web Developer, Company 2
                    </p>
                    <p>
                        Client 2's description
                    </p>
                </div>
                <div class="card">
                    <img alt="Client image showing a cheerful designer" height="100"
                        src="https://storage.googleapis.com/a1aa/image/fWP6rteObJmBrUXFwdGQ57gzNoU3pEr5PKs7bUCBu5w33u5TA.jpg"
                        width="100" />
                    <h3>
                        Client 3
                    </h3>
                    <p>
                        Designer, Company 3
                    </p>
                    <p>
                        Client 3's description
                    </p>
                </div>
            </div>
        </section>
    </div>
    <div>
        <div class="hero">
            <img alt="Living room with modern furniture" height="400"
                src="images/4th year full stack Assets/Lead Generation Landing page (Images)/Rectangle.svg" width="120" />
            <div class="hero-overlay"></div>
            <div class="hero-text">
                <h1>Learn more about our listing process, as well as our additional staging and design work.</h1>
                <button>LEARN MORE</button>
            </div>
        </div>
        <div class="navbar2">
            <div class="nav-links2">
                <a href="#home">Home</a>
                <a href="#services">Services</a>
                <a href="#projects">Projects</a>
                <a href="#testimonials">Testimonials</a>
                <a href="#contact">Contact</a>
            </div>
            <div class="subscribe">
                <a href="#subscribe">Subscribe Us</a>
                <input type="text" placeholder="Enter Email Address">
                <input type="submit" value="Subscribe">
            </div>
        </div>

        <div class="footer">
            <p>All Rights Reserved 2023</p>
            <img src="images/4th year full stack Assets/Lead Generation Landing page (Images)/logo.svg" alt="">
            <div class="social-icons">
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const contactLink = document.getElementById('contact-link');
            const formContainer = document.getElementById('form-container');
            const form = document.getElementById('consultation-form');

            contactLink.addEventListener('click', function (e) {
                e.preventDefault();
                formContainer.classList.remove('hidden');
            });

            form.addEventListener('submit', function (e) {
                e.preventDefault();
                formContainer.classList.add('hidden');
            });
        });
    </script>
</body>

</html>
