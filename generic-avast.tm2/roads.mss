// Roads & Railways //
#tunnel { opacity: 0.5; }

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2] {
    [class='motorway_link'],
    [class='motorway'] {
	  line-color:@red;
      line-width: 0.5;
      line-cap: round;
      [zoom>=6] { line-width: 0.75; }
      [zoom>=10] { line-width: 1; }
      [zoom>=12] { line-width: 1.25; }
      [zoom>=14] { line-width: 2; }
      [zoom>=15] { line-width: 2.25; }
      [zoom>=16] { line-width: 6; }
      [zoom>=18] { line-width: 12; }
    }
    [class='main'][zoom>=14] {
      line-color: @land;
      [zoom>=14] { line-width: 4; }
	  [zoom>=15] { line-width: 6; }
      [zoom>=17] { line-width: 15; }
      [zoom>=18] { line-width: 17; }
    } 
  }

  // fill/inlines
  ::fill['mapnik::geometry_type'=2][zoom>=9] {
    [class='main'] {
      line-color: @darkblue;
      line-cap: round;
      [zoom>=9] { line-width: 0.15; }
	  [zoom>=11] { line-width: 0.35; }
      [zoom>=12] { line-width: 0.40; }
      [zoom>=13] { line-width: 0.75; }
      [zoom>=14] { line-width: 1.25; }
	  [zoom>=15] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
      [zoom>=18] { line-width: 9; }
    }
    [class='street'][zoom>=11],
    [class='street_limited'][zoom>=11] {
      	line-color: @darkblue;
		line-width: 0.10;
        [zoom>=13] { line-width: 0.25; }
		[zoom>=14] { line-width: 0.35; }
		[zoom>=16] { line-width: 1.5; }
        [zoom>=18] { line-width: 5; }
    }
    [class='path'] {
      line-color: @orange;
      line-cap: round;
      line-dasharray: 3,1;
      line-width: 0.25;
      [zoom>=16] { line-dasharray: 6,6; line-width: 1; }
      [zoom>=18] { line-dasharray: 8,8; line-width: 3; }
      }
    [class='street_limited'],[class='service'] {
      [zoom>=18] {
        line-color: @darkblue;
        line-width: .5;
        line-gamma: .5;
        }
      }
    
  }
}

#road, #bridge, #tunnel['mapnik::geometry_type'=2][zoom>=10] {
  [class='minor_rail'][zoom>13],
  [class='major_rail'] {
    ::fill { line-color: @land; 
      [zoom>=16] { line-width: 4; }
      [zoom>=18] { line-width: 5; } } //end fill
    ::dash {
      line-color: @orange;
      line-dasharray: 3,1;
      line-width: 0.25;
      [zoom>=16] { line-width: 4;  line-dasharray: 10,7; }
      [zoom>=18] { line-width: 5; line-dasharray: 20,15; } } //end dash
  }
}
