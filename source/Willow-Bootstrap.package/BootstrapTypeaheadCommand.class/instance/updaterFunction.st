private
updaterFunction 

	^ JSFunction new
		arguments: #('item');
		add: ((JSStream this alias: 'item') access: self indexProperty);
		return: true;
		yourself