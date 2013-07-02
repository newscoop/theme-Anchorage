{{ include "_tpl/_html-head.html" }}

<body>
    <!-- Begins Main Container -->
    <div class="container">

        {{ include "_tpl/header.html" }}

        <!-- Begins main content -->
        <section role="main">
            <div class="row">
                <div id="main" class="span12">
                    <div class="row columns">
                        <div class="span8 column">
                            <div id="main-content" class="single-page community-page">

                                <h1 class="page-title">User Index</h1>

                                <ul class="nav nav-pills user-tab">
                                    <li class="active">
                                         <a href="#">Active</a>
                                     </li>
                                    <li><a href="#">All</a></li>
                                    <li><a href="#">A-D</a></li>
                                    <li><a href="#">E-K</a></li>
                                    <li><a href="#">L-P</a></li>
                                    <li><a href="#">Q-T</a></li>
                                    <li><a href="#">U-Z</a></li>
                                    <li><a href="#">Editors</a></li>
                                </ul>

                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>

                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>
                                
                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>
                                
                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>
                                
                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>
                                
                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>

                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>

                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>
                                
                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>
                                
                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>
                                
                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>
                                
                                <div class="user-list">
                                    <_img src="{{ url static_file="_img/avatar-list.png" }}" class="avatar">
                                    <a class="user-title" href="">User Name</a>
                                    <span class="member" href="">member since 2 years ago</span>
                                </div>
                              
                            </div>
                        </div>
                        <!-- Begins Sidebar -->
                        <aside id="sidebar-container" class="span4 column">

                            {{ include "_tpl/sidebar-community.html" }}
                            
                        </aside>
                        <!-- / End Sidebar -->

                    </div>
                </div>
            </div>
        </section> 
        <!-- / End main content -->

{{ include "_tpl/footer.html" }}

{{ include "_tpl/_html-footer.html" }}
