// Fonts //
@name: '[name_en]';
@fallback: 'Open Sans Regular';

@sans: 'Avenir Book', 'Source Sans Pro Regular', @fallback;
@sans_med: 'Avenir Medium', @fallback;
@sans_bold: 'Avenir Heavy','Source Sans Pro Semibold', @fallback;

@sans_italic: 'Avenir Book Oblique','Source Sans Pro Italic', @fallback;
@sans_med_italic: 'Avenir Medium Oblique', @fallback;
@sans_black_italic: 'Avenir Black Oblique', @fallback;
@sans_bold_italic: 'Avenir Heavy Oblique',@fallback;
@sans_black: 'Avenir Black', @fallback;

@serif_bold: 'Meta Serif Offc Pro Bold',@fallback;
@serif_italic: 'Meta Serif Offc Pro Italic',@fallback;

#centroids [zoom=16][Name!='East 6th'] {
  text-fill: @darkblue;
  text-name: [Name];
  text-face-name: 'Avenir Black';
  text-size: 90;
  text-wrap-width: 200;
  text-align: center;
  text-line-spacing: -35;  
  text-halo-fill: @land;
  text-halo-radius: 7;
  text-allow-overlap: true;
  [Name="Capital"] { text-name: "'State Capital'"; }
  [Name="Campus"] {
    text-name: "'UT Campus'";
    text-wrap-width: 100;
    text-line-spacing: -55;
    text-dy: 1;
    }
  [Name="Rainey"]   { text-name: "'Rainey Street'"; }
  [Name="West 6th"] { text-name: "'West 6th St'"; }
  [Name="Zilker"]   { text-name: "'Zilker Park'"; }
  [Name="So Co"]    { text-name: "'South Congress'"; }
  [Name="Dirty 6th"] {
    text-name: "'6th St'";
    text-wrap-width: 5;
    }
}

// MAJOR ROADS //
@us-shield-name: "[ref].replace(';.*', '').replace('^[^\d]*', '')";
#road_label::us_shield[class='motorway'][zoom>=16] {
  // Default shields
  shield-file: url("img/shield/motorway_sm_[reflen].png");
  shield-transform: scale(1.75,1.75);
  shield-name: [ref];
  //MoPac Case
    [ref=~'.*Loop 1.*'] { shield-name: 'MoPac'; shield-file: url("img/shield/motorway_sm_6.png"); }
  shield-face-name: @sans_bold;
  shield-size: 23;
  shield-fill: @darkblue;
  shield-min-padding: 10;
  shield-min-distance: 40;
  shield-text-transform: uppercase;
  [zoom>=11] { shield-min-distance: 50; }
  [zoom>=12] { shield-min-distance: 70; }
  [zoom>=13] { shield-min-distance: 60; }
  [zoom>=14] { shield-min-distance: 80; }
  [zoom>=16] { shield-min-distance: 150; }
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

#road_label { 
    [class='main'][name=~'^((?!Frontage).)*$'][zoom>=16] { //this regex is for eliminating "frontage" labels 
      text-name: @name;
      text-placement: line;
      text-face-name: @sans_bold;
      text-fill: @darkblue;
      text-avoid-edges: true;
      text-min-padding: 25;
      text-transform:lowercase;
      text-halo-fill: @land;
      [zoom>=16] {
        text-size: 30;
        text-halo-radius: 4;
        text-halo-fill: @land;
        }
      [zoom>=18] {
        text-size: 34;
        text-halo-radius: 5;
        text-halo-fill: @land;
        }        
      } 
    [class='street'][zoom>=18],
    [class='street_limited'][zoom>=18] {
      text-name: @name;
      text-placement: line;
      text-face-name: @sans_med_italic;
      text-fill: @darkblue;
      text-avoid-edges: true;
      text-halo-radius: 3;
      text-halo-fill: @land;
      text-min-padding: 25;      
      text-transform:lowercase;
      text-size: 30;
   }
} 

// waterway labels
// who needs 'em?

//ladybird lake trail

#road_label [name="Lady Bird Lake Hike and Bike Trail"] {
      text-name: "'Town Lake Running Trail'";
      text-placement: line;
      text-face-name: @sans_italic;
      text-fill: @darkblue;
//      text-avoid-edges: true;
      text-halo-radius: 2;
      text-halo-fill: @land;    
      text-min-padding: 25;      
      text-transform:lowercase;
  text-allow-overlap: true;
      [zoom>=16] {
        text-size: 19;//(@max - @drk) + 3;        
        }
      [zoom>=18] {
        text-face-name: @sans_med_italic;        
        text-size: 20;//(@max - @drkst) ;//* 2.5;
        }
  }