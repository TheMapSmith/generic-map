@water: #0093AC;
@park: #D4D83B;
@tan: rgb(228,206,170);
@bright: rgb(246, 238, 235);
@darkblue: darken(@water, 20);
@red: #BD443E;
@orange: #E18A48;
@grey: rgb(133,133,133);

Map {
  background-color:@bright;
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
	[class='park'] {
    	polygon-fill: @park;
    	polygon-opacity: 0.75;
  	}
  	[class='industrial'] {
    	polygon-fill: @orange;
    	polygon-opacity:0.75;
  	}
  	[class='cemetery'] {
		polygon-fill: darken(@tan, 10%);
  	}
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
