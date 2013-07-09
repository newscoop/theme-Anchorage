{{ config_load file="{{ $gimme->language->english_name }}.conf" }}
{{ include "_tpl/_html-head.tpl" }}

<body>
    <!-- Begins Main Container -->
    <div class="container">

        {{ include "_tpl/header.tpl" }}

        <!-- Begins main content -->
        <section role="main">
            <div class="row">
                <div id="main" class="span12">
                    <div class="row columns">
                        <div class="span8 column">
                            <div id="main-content" class="single-page section-page">
                                <div class="anchorage-form">
                                     <form action="{{ $form->getAction() }}" class="zend_form" method="{{ $form->getMethod() }}">
                                        {{ if $form->isErrors() }}
                                        <div class="alert alert-error">
                                            <h5>{{ #loginFailed# }}</h5>
                                            <p>{{ #loginFailedMessage# }}</p>
                                            <p>{{ #tryAgainPlease# }}</p>
                                            <p><a class="register-link" href="{{ $view->url(['controller' => 'auth', 'action' => 'password-restore']) }}">{{ #forgotYourPassword# }}</a></p>
                                        </div>
                                        {{ /if }}
                                        <dl>
                                            {{ $form->email->setLabel("E-mail")->removeDecorator('Errors') }}
                                            {{ $form->password->setLabel("Password")->removeDecorator('Errors') }}
                                            <dt class="empty">&nbsp;</dt>
                                            <dd>
                                                <span class="input-info">
                                                    <a class="register-link link-color" href="{{ $view->url(['controller' => 'register', 'action' => 'index']) }}">Register | </a>
                                                    <a class="register-link link-color" href="{{ $view->url(['controller' => 'auth', 'action' => 'password-restore']) }}">{{ #forgotYourPassword# }}</a>
                                                </span>
                                            </dd>
                                        </dl>
                                        <div class="form-buttons right">
                                            <input type="submit" id="submit" class="button big" value="{{ #login# }}" />
                                        </div>
                                    </form>
                                </div>
                           </div>
                        </div>
                        <!-- Begins Sidebar -->
                        <aside id="sidebar-container" class="span4 column">

                            {{ include "_tpl/sidebar-article.tpl" }}
                            
                        </aside>
                        <!-- / End Sidebar -->

                    </div>
                </div>
            </div>
        </section> 
        <!-- / End main content -->

{{ include "_tpl/footer.tpl" }}

{{ include "_tpl/_html-footer.tpl" }}
