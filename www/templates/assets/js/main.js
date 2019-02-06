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


	_inputEmail.on('focus', function(){
		
		var item1 = $('#notify1-php');
		if($("div").index(item1)>0){
			$('#notify1-php').addClass('hidden');
		};
		var item2 = $('#notify2-php');
		if($("div").index(item2)>0){
			$('#notify2-php').addClass('hidden');
		};
		var item3 = $('#notify3-php');
		if($("div").index(item3)>0){
			$('#notify3-php').addClass('hidden');
		};
		})



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

			};




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

//-----------------------------------------------
	
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

		_inputEmail.on('focus', function(){
		
			var item1 = $('#notify1-php');
			if($("div").index(item1)>0){
				$('#notify1-php').addClass('hidden');
			};
			var item2 = $('#notify2-php');
			if($("div").index(item2)>0){
				$('#notify2-php').addClass('hidden');
			};
			var item3 = $('#notify3-php');
			if($("div").index(item3)>0){
				$('#notify3-php').addClass('hidden');
			};
		})

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
			
		}

		return {
			init
		};


	}());

	checkLogin.init();
//-----------------------------------

		var checkComment = (function(){

		// Переменные модуля

		var _form = $('#comment-add-form'),
			_commentText = _form.find('.textarea'),
			_notify = _form.find('.notification__title');

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
//			event.preventDefault();

			// proverka

			if(_commentText.val().trim().length === 0) {
				event.preventDefault();
				_notify.fadeIn(700);

				_commentText.on('focus', function(){
					_notify.fadeOut(700);
					_form.trigger("reset");
				})

			} 
//			else {
//				_notify.fadeOut(700);
//				_form.unbind('submit').submit();
//			}

		};

		return {
			init
		};


	}());

	checkComment.init();

//-------------------------------------
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


		//-----------------------------------------------
	
	var checkContacts = (function(){

		// Переменные модуля

		var _form = $('#contacts-form'),
			_inputEmail = _form.find('#contactEmail'),
			_notifyEmail = _form.find('#notify-email'),
			_notifyEmail2 = _form.find('#notify-email2'),
			_pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

		_inputEmail.on('focus', function(){
		
			var item1 = $('#notify1-php');
			if($("div").index(item1)>0){
				$('#notify1-php').addClass('hidden');
			};
			var item2 = $('#notify2-php');
			if($("div").index(item2)>0){
				$('#notify2-php').addClass('hidden');
			};
			var item3 = $('#notify3-php');
			if($("div").index(item3)>0){
				$('#notify3-php').addClass('hidden');
			};
		})

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
			
		}

		return {
			init
		};


	}());

	checkContacts.init();

	//-----------------------------------------------
	
	var checkMessage = (function(){

		// Переменные модуля

		var _form = $('#message-form'),
			_inputEmail = _form.find('#message-email'),
			_notifyEmail = _form.find('#notify-email'),
			_notifyEmail2 = _form.find('#notify-email2'),
			_pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

		_inputEmail.on('focus', function(){
		
			var item1 = $('#notify1-php');
			if($("div").index(item1)>0){
				$('#notify1-php').addClass('hidden');
			};
			var item2 = $('#notify2-php');
			if($("div").index(item2)>0){
				$('#notify2-php').addClass('hidden');
			};
			var item3 = $('#notify3-php');
			if($("div").index(item3)>0){
				$('#notify3-php').addClass('hidden');
			};
		})

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
//				_form.trigger("reset");
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
			
		};

		return {
			init
		};


	}());

	checkMessage.init();
//-----------------------------------

	setTimeout(function(){
		$('[data-notify-hide]').slideUp(400);
	},2000);
	$('[data-notify-hide]').dblclick(function(){
		$(this).slideUp(400);
	});

	
});