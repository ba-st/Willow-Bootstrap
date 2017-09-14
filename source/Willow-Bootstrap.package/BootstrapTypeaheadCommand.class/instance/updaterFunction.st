private
updaterFunction

	^ JSFunction new
		arguments: #('item');
		add: (JSStream this alias: 'item');
		return: true;
		yourself