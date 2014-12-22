// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';
@fallback: 'Call Eight Negative OT Regular';
@serif: 'Meta Serif Offc Pro Bold',@fallback;
@sans: 'Avenir Book', 'Source Sans Pro Regular', @fallback;
@sans_it: 'Avenir Book Oblique','Source Sans Pro Italic', @fallback;
@sans_bd: 'Avenir Heavy','Source Sans Pro Semibold', @fallback;

// Places //

#place_label {
  [type='city'][zoom<=16][name!='Austin'] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @darkblue;
    text-halo-fill: @bright;
    text-halo-radius: 2.5px;
    text-size: 13;
    text-line-spacing: -5px;
    text-wrap-width: 200;
    text-wrap-before: true;
	[zoom>=12] { text-size: 20; }
    [zoom>=14] {
		text-size: 24;
		text-halo-radius: 3px;
    }
    [scalerank=0],
    [scalerank=1] {
		[zoom>=7] { text-size: 18; }
        [zoom>=9] { text-size: 20; }
        [zoom>=10] { text-size: 22; }
		[zoom>=11] {
        	text-size: 24;
            text-halo-radius: 3px;
			[zoom>=13] { text-size: 26; }
      	}
    }
  }
  [type='town'][zoom<=17] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @darkblue;
    text-size: 14;
    text-wrap-width: 100;
	text-halo-fill:	@bright;
    text-halo-radius: 2px;
    text-wrap-before: true;
  }
  [type='village'] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @darkblue;
	text-halo-fill:	@bright;
    text-halo-radius: 2px;
    text-size: 12;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=12] { text-size: 14; }
    [zoom>=14] { text-size: 18; }
  }
  [type='hamlet'][zoom<=17],
  [type='suburb'][zoom<=17],
  [type='neighbourhood'][zoom<=17] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @darkblue;
	text-halo-fill: @bright;
    text-halo-radius: 2px;
    text-size: 13;
    text-wrap-width: 100;
    text-wrap-before: true;
	[zoom>=13] {
      text-size: 14;
      text-wrap-width:150;
      text-halo-radius: 3px;
    }
    [zoom>=14] { text-size: 16; }
    [zoom>=15] { text-size: 18; }
	[zoom>=16] { text-size: 22; }
  }
}

#water_label {
  [zoom<=13],  // automatic area filtering @ low zooms
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: darken(@water, 30%);
    text-size: 13;
    text-wrap-width: 100;
    text-wrap-before: true;
  }
}

#area_label {
  [class='park'] {
    [zoom<=13],  // automatic area filtering @ low zooms
    [zoom>=14][area>500000],
    [zoom>=16][area>10000],
    [zoom>=17] {
      text-name: @name;
      text-face-name: @serif;
      text-fill: @red;
      text-halo-fill: @bright;
      text-size: 13;
      text-wrap-width: 100;
      text-wrap-before: true;
    }
  }
}

// ROADS //
@us-shield-name: "[ref].replace(';.*', '').replace('^[^\d]*', '')";
#road_label::us_shield[class='motorway'] {
  // Default shields
  shield-file: url("img/shield/motorway_sm_[reflen].png");
  shield-transform: scale(1.75,1.75);
  shield-name: [ref];
  shield-face-name: @sans_bd;
  shield-size: 23;
  shield-fill: @darkblue;
  shield-min-padding: 10;
  shield-min-distance: 40;
  shield-text-transform: uppercase;
  [zoom>=11] { shield-min-distance: 50; }
  [zoom>=12] { shield-min-distance: 70; }
  [zoom>=13] { shield-min-distance: 60; }
  [zoom>=14] { shield-min-distance: 80; }
  // 1 & 2 digit US state highways
  [ref =~ '^(AL|AK|AS|AZ|AR|CA|CO|CT|DE|DC|FM|FL|GA|GU|HI|ID|IL|IN|IA|KS|KY|LA|ME|MH|MD|MA|MI|MN|MS|MO|MT|NE|NV|NH|NJ|NM|NY|NC|ND|MT|OH|OK|OR|PW|PA|PR|RI|SC|SD|TN|TX|UT|VT|VI|VA|WA|WV|WI|WY|SR)\ ?\d[\dA-Z]?(;.*|$)'] {
    shield-file: url(img/shield/us_state_2.png);
    shield-name: @us-shield-name;
  }
  // 3 digit US state highways
  [ref =~ '^(AL|AK|AS|AZ|AR|CA|CO|CT|DE|DC|FM|FL|GA|GU|HI|ID|IL|IN|IA|KS|KY|LA|ME|MH|MD|MA|MI|MN|MS|MO|MT|NE|NV|NH|NJ|NM|NY|NC|ND|MT|OH|OK|OR|PW|PA|PR|RI|SC|SD|TN|TX|UT|VT|VI|VA|WA|WV|WI|WY|SR)\ ?\d\d[\dA-Z](;.*|$)'] {
    shield-file: url(img/shield/us_state_3.png);
    shield-name: @us-shield-name;
  }
  // 1 & 2 digit US highways
  [ref =~ '^US\ ?\d[\dA-Z]?(;.*|$)'] {
    shield-file: url(img/shield/us_highway_2.png);
    shield-name: @us-shield-name;
  }
  // 3 digit US highways
  [ref =~ '^US\ ?\d\d[\dA-Z](;.*|$)'] {
    shield-file: url(img/shield/us_highway_2.png);
    shield-name: @us-shield-name;
  }
  // 1 & 2 digit US Interstates
  [ref =~ '^I\ ?\d[\dA-Z]?(;.*|$)'] {
    shield-file: url(img/shield/us_interstate_2.png);
    shield-name: @us-shield-name;
    shield-fill: #fefef1;
  }
  // 3 digit US Interstates
  [ref =~ '^I\ ?\d\d[\dA-Z](;.*|$)'] {
    shield-file: url(img/shield/us_interstate_3.png);
    shield-name: @us-shield-name;
    shield-fill: #fefef1;
  }
}
#road_label['mapnik::geometry_type'=2] {
  [class='main'][zoom>=12] {
    text-name: [name];
    text-face-name: @sans_bd;
    text-fill: @darkblue;
    text-placement: line;
    text-avoid-edges: true;
    text-halo-fill: @bright;
    text-halo-radius: 2;
    text-min-distance: 200;
    text-size: 12;
    [zoom>=15] { text-size: 14; }
    [zoom>=16] { text-size: 30; }
    [zoom>=17] { text-size: 28; }
    [zoom>=18] { text-size: 36; }
  }
}

#water_label {
  [zoom<=13],  // automatic area filtering @ low zooms
  [zoom>=14][area>500000],
  [zoom>=16][area>10000] {
    text-name: @name;
    text-face-name: @sans_it;
    text-fill: @red;
	text-halo-fill: @bright;
    text-halo-radius: 2px;
    text-size: 12;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-line-spacing: -2;
    [zoom>=10] { text-size: 16; }
  }
}

// Note: != null condition is a workaround for mapnik#1952.
#poi_label[type='Rail Station'][network!=null][scalerank=1][zoom>=14],
#poi_label[type='Rail Station'][network!=null][scalerank=2][zoom>=15],
#poi_label[type='Rail Station'][network!=null][scalerank=3][zoom>=16] {
  marker-file: url("img/rail/[network]-18.svg");
  marker-height: 18;
  marker-allow-overlap: false;
  [zoom>=16] {
    marker-file: url("img/rail/[network]-18.svg");
    marker-height:28;
    text-name: @name;
    text-face-name: @sans_bd;
    text-fill: @darkblue;
    text-halo-fill: @bright;
    text-halo-radius: 2px;
    text-halo-rasterizer: fast;
    text-size: 14;
    text-wrap-width: 80;
    text-line-spacing: -3;
  }
}