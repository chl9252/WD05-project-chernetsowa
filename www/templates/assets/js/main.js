$(document).ready(function() {
	
	$(".left-panel").customScrollbar({preventDefaultScroll: true});


	var checkRegistration = (function(){

		// Переменные модуля

		var _form = $('#registrationForm'),
			_regButt = _form.find('#registration'),
			_inputEmail = _form.find('#registration-form-email'),
			_inputPassword = _form.find('#registration-form-password'),
			_notifyEmail = _form.find('#notify-email'),
			_notifyEmail2 = _form.find('#notify-email2'),
			_notifyPassword = _form.find('#notify-password'),
			_notifyEmailOccupy = _form.find('#notify-email-occupy'),
			_notifyEmailOccupy2 = _form.find('#notify-email-occupy2'),
			_pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

		// Метод инициализации (запуска) модуля

		var init = function(){
			_setupListeners();

		};

		// Метод прослушки событий

		var _setupListeners = function(){
//			_regButt.on('click', function(event){
			_form.on('submit', function(event){
				_formValidate(event);

			});
		};

		// Приватные методы

		var _formValidate = function(event){
//			event.preventDefault();
			valid = true;

			// proverka

			// email empty

			if(_inputEmail.val().trim().length === 0) {
					event.preventDefault();
				valid = false;
				_notifyEmail.fadeIn(700);

				_inputEmail.on('focus', function(){
					_notifyEmail.fadeOut(700);
					_form.trigger("reset");
				})
			};


			//password empty

			if(_inputPassword.val().trim().length === 0) {
					event.preventDefault();
				valid = false;
				_notifyPassword.fadeIn(700);

				_inputPassword.on('focus', function(){
					_notifyPassword.fadeOut(700);

				})
			};


			// email invalid

			if (valid) {
				if (!_pattern.test(_inputEmail.val())) {
						event.preventDefault();
					_notifyEmail2.fadeIn(700);
					valid = false;
					_inputEmail.on('focus', function(){
						_notifyEmail2.fadeOut(700);

						})
					};

/*				if(_inputEmail.val().toLowerCase() === 'mail@mail.com')  {
					valid = false;
					_notifyEmailOccupy.fadeIn(700);
					_notifyEmailOccupy2.fadeIn(700);
					_inputEmail.on('focus', function(){
						_notifyEmailOccupy.fadeOut(700);
						_notifyEmailOccupy2.fadeOut(700);
						_form.trigger("reset");
					});
				}*/

			};


			

//			 email  invalid

			if (valid) {
//				_form.unbind('submit').submit();
//            _form.off('submit',_form,_formValidate);
  //           _form.off('submit').submit();
 // $('.button--registration').on( "submit");
//$('.button--registration').off().submit();
    //            _form.on( "submit", "_form", _setupListeners );
// _form.off().trigger("submit");
			};
									
		}

		return {
			init
		};


	}());

	checkRegistration.init();
	
	var checkLogin = (function(){

		// Переменные модуля

		var _form = $('#login-form'),
			_inputEmail = _form.find('#input-email'),
			_inputPassword = _form.find('#input-password'),
			_notifyEmail = _form.find('#notify-email'),
			_notifyEmail2 = _form.find('#notify-email2'),
			_notifyPassword = _form.find('#notify-password'),
			_notifyEmailPassword = _form.find('#notify-email-password'),
			_pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

		// Метод инициализации (запуска) модуля

		var init = function(){
			_setupListeners();

		};

		// Метод прослушки событий

		var _setupListeners = function(){
			_form.on('submit', function(event){
				_formValidate(event);

			});
		};

		// Приватные методы

		var _formValidate = function(event){
			
			valid = true;

			// proverka

			// email empty

			if(_inputEmail.val().trim().length === 0) {
				event.preventDefault();
				valid = false;
				_notifyEmail.fadeIn(700);

				_inputEmail.on('focus', function(){
					_notifyEmail.fadeOut(700);
					_form.trigger("reset");
				})
			};

			// email invalid

			if (valid) {
				if (!_pattern.test(_inputEmail.val())) {
					event.preventDefault();
					_notifyEmail2.fadeIn(700);
					valid = false;
					_inputEmail.on('focus', function(){
						_notifyEmail2.fadeOut(700);

						})
					};
				};

			//password empty

			if(_inputPassword.val().trim().length === 0) {
				event.preventDefault();
				valid = false;
				_notifyPassword.fadeIn(700);

				_inputPassword.on('focus', function(){
					_notifyPassword.fadeOut(700);

				})
			};

			

			// email & password invalid

/*			if (valid) {
				if(((_inputEmail.val().toLowerCase() === 'mail@mail.com') & (_inputPassword.val() === '123'))) {
					_form.unbind('submit').submit();
					}else {
						_notifyEmailPassword.fadeIn(700);
						_inputEmail.on('focus', function(){
							_notifyEmailPassword.fadeOut(700);

						})
					}
				}; */


			}
						



		return {
			init
		};


	}());

	checkLogin.init();

	var checkLostpassword = (function(){

		// Переменные модуля

		var _form = $('#lostpassword'),
			_regButt = _form.find('#registration'),
			_inputEmail = _form.find('#registration-form-email'),
			
			_notifyEmail = _form.find('#notify-email'),
			_notifyEmail2 = _form.find('#notify-email2'),
		
			_pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

		// Метод инициализации (запуска) модуля

		var init = function(){
			_setupListeners();

		};

		// Метод прослушки событий

		var _setupListeners = function(){
//			_regButt.on('click', function(event){
			_form.on('submit', function(event){
				_formValidate(event);

			});
		};

		// Приватные методы

		var _formValidate = function(event){
//			event.preventDefault();
			valid = true;

			// proverka

			// email empty

			if(_inputEmail.val().trim().length === 0) {
					event.preventDefault();
				valid = false;
				_notifyEmail.fadeIn(700);

				_inputEmail.on('focus', function(){
					_notifyEmail.fadeOut(700);
					_form.trigger("reset");
				})
			};


			//password empty


			// email invalid

			if (valid) {
				if (!_pattern.test(_inputEmail.val())) {
						event.preventDefault();
					_notifyEmail2.fadeIn(700);
					valid = false;
					_inputEmail.on('focus', function(){
						_notifyEmail2.fadeOut(700);

						})
					};

/*				if(_inputEmail.val().toLowerCase() === 'mail@mail.com')  {
					valid = false;
					_notifyEmailOccupy.fadeIn(700);
					_notifyEmailOccupy2.fadeIn(700);
					_inputEmail.on('focus', function(){
						_notifyEmailOccupy.fadeOut(700);
						_notifyEmailOccupy2.fadeOut(700);
						_form.trigger("reset");
					});
				}*/

			};


			

//			 email  invalid

			if (valid) {
//				_form.unbind('submit').submit();
//            _form.off('submit',_form,_formValidate);
  //           _form.off('submit').submit();
 // $('.button--registration').on( "submit");
//$('.button--registration').off().submit();
    //            _form.on( "submit", "_form", _setupListeners );
// _form.off().trigger("submit");
			};
									
		}

		return {
			init
		};


	}());

	checkLostpassword.init();


		var checkNewpassword = (function(){

		// Переменные модуля

		var _form = $('#setnewpassword'),
			_regButt = _form.find('#idsetpassword'),
			_inputEmail = _form.find('#registration-form-email'),
			
			_notifyEmail = _form.find('#notify-email'),
					
			_pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

		// Метод инициализации (запуска) модуля

		var init = function(){
			_setupListeners();

		};

		// Метод прослушки событий

		var _setupListeners = function(){
//			_regButt.on('click', function(event){
			_form.on('submit', function(event){
				_formValidate(event);

			});
		};

		// Приватные методы

		var _formValidate = function(event){
//			event.preventDefault();
			valid = true;

			// proverka

			// email empty

			if(_inputEmail.val().trim().length === 0) {
					event.preventDefault();
				valid = false;
				_notifyEmail.fadeIn(700);

				_inputEmail.on('focus', function(){
					_notifyEmail.fadeOut(700);
					_form.trigger("reset");
				})
			};


			//password empty


			// email invalid


			

//			 email  invalid

			if (valid) {
//				_form.unbind('submit').submit();
//            _form.off('submit',_form,_formValidate);
  //           _form.off('submit').submit();
 // $('.button--registration').on( "submit");
//$('.button--registration').off().submit();
    //            _form.on( "submit", "_form", _setupListeners );
// _form.off().trigger("submit");
			};
									
		}

		return {
			init
		};


	}());

	checkNewpassword.init();

	
});