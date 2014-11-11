var game = {
	
	/*
		*. init variables.
		*. fire ajax to get Gamedata.
		*. preCache 5-10 puzzle images
		*. start the game.
	*/
	
	'data' : {
		score : 0,
		levels : []
	},
	
	load : function(data){
		game.data.levels = data;
		//me.boot();
		//me.bindReady();
		if (!me.video.init("screen",  me.video.CANVAS, 10, 10, true, 'auto')) {
			alert("Your browser does not support HTML5 canvas.");
			return;
		}
		
		
		/*** {name: "tileset-platformer", type: "image",  src: "data/map/tileset.png"} ***/
		var resources = [];	
		for( var d=0; d < data.length; d++ ){
			resources.push({"name": data[d].Question, "type": "image", "src": data[d].Question});
		}
		
		me.loader.preload(resources);
		me.loader.onload = game.loaded;
		me.loader.onProgress = function( a, b ){ 
			//console.debug( 'onProgress: ' + a * 100 + '%' ); 
		}
		
		me.state.set(me.state.LOADING, new me.ScreenObject() );
        me.state.change(me.state.LOADING);
		
	},
	
	loaded : function(){
		
		var img = $('#img');
		$(img).attr('src', game.data.levels[0].Question).css({'position': 'fixed', 'width' : '100px', 'height': '100px'});
		
		position = {x: 100, y: 100, rotation: 0};
		target = document.getElementById('img');
		tween = new me.Tween(position)
					.to({x: 700, y: 200, rotation: 359}, 2000)
					.delay(1000)
					.easing(me.Tween.Easing.Elastic.InOut)
					.onUpdate(function(){
						target.style.width = position.x + 'px';
						target.style.height = position.y + 'px'; 
						console.debug('hi');
					});
		me.game.world.addChild( tween );
		tween.start();
		
		me.timer.reset();
		console.debug( me.timer.getTime() );
		/*me.timer.setInterval(function(){
			console.debug('hi');
			me.Tween.update(time);
		}, 10 );*/
	},
};