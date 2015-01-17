@water: #0093AC;
@park: #A2CB3C; //#d2d638;//#D4D83B;
@tan: rgb(228,206,170); // more brownish#af9055; 
@land: rgb(246, 238, 235);
@darkblue: darken(@water, 20);
@red: #BD443E;
@orange: #E18A48;
@grey: rgb(133,133,133);
@purple: #9977b2;
@yellow: #e9bf3f;
@silver: #cdd9ce;
@cyan: #0ae1f1;
@bluegreen: #42aa8d;
@black: #27201b;

@4x: 16;

Map {
  background-color:@land;
}

// Political boundaries //


// Water Features //
#water { polygon-fill: @water; }
#waterway {
	[type='river'],
	[type='canal'] {
		line-color: @water;
		line-width: 0.5;
		[zoom>=12] { line-width: 1; }
		[zoom>=14] { line-width: 2; }
		[zoom>=16] { line-width: 3; }
  	}
  	[type='stream'] {
    	line-color: @water;
    	line-width: 0.5;
    	[zoom>=14] { line-width: 1; }
    	[zoom>=16] { line-width: 2; }
    	[zoom>=18] { line-width: 3; }
  	}
}

#landuse_overlay[class='wetland'][zoom>=11] {
	polygon-pattern-file:url(img/wetland.png);
	polygon-pattern-alignment:local;
	polygon-pattern-opacity:0.25;
  	[zoom>=16] { polygon-pattern-file:url(img/wetland-lrg.png); }
}

#landuse[zoom>=9] {
	polygon-pattern-file:url(img/noise.png);
	polygon-pattern-alignment:global;
	[class='park'],[class='grass'],[class='pitch'],[class='cemetery'] {
    	polygon-fill: @park;
    	polygon-opacity: 0.675;
    line-color: @land;
    line-width: .5;
    line-opacity: .75;
    line-gamma: .5;
  	}
  	[class='school'] { polygon-fill: @purple; polygon-opacity: 0.75; }
    [type='university'] { polygon-fill: @orange;polygon-opacity: 0.75; } 
    [class='hospital'] { polygon-fill: @purple;polygon-opacity: 0.75; }
    [class='parking'] {
        polygon-fill: @grey;
        polygon-opacity: .125;
        line-color: @grey;
        line-opacity: .33;
    }
}

#building {
	polygon-fill: @tan;
  	[zoom>=17] {
  		line-width: 0.1px;
  		line-color: darken(@tan, 50%);
    }
}
