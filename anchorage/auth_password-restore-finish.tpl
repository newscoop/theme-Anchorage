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
                                        <fieldset>
                                            {{ if $form->isErrors() }}
                                            <div class="alert alert-error">
                                                <p>{{ #yourPasswordCouldNotBeChanged# }}</p>
                                            </div>
                                            {{ /if }}
                                        </fieldset>
                                        <fieldset class="fixBackground background-block login">
                                            <dl>
                                                    {{ $form->password->setLabel("Neues Passwort")->removeDecorator('Errors') }}
                                                    {{ if $form->password->hasErrors() }}
                                                    <dt class="info-block">&nbsp;</dt>
                                                    <dd class="info-block">
                                                        <span class="error-info">{{ #pleaseEnterYourNewPassword# }}</span>
                                                    </dd>
                                                    {{ /if }}
                                            </dl>
                                            <dl>
                                                    {{ $form->password_confirm->setLabel("Retype your password")->removeDecorator('Errors') }}
                                                    {{ if $form->password_confirm->hasErrors() && !$form->password->hasErrors() }}
                                                    <dt class="info-block">&nbsp;</dt>
                                                    <dd class="info-block">
                                                        <span class="error-info">{{ #theConfirmationPasswordDoesNotMatch# }}</span>
                                                    </dd>
                                                    {{ /if }}
                                             </dl>
                                            <div class="form-buttons right">
                                                <input type="submit" id="submit" class="button" value="{{ #savePassword# }}" />
                                            </div>
                                        </fieldset>
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
