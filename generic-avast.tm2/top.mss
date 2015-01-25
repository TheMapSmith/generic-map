// New Top POI - Central Austin
#poi_label [zoom>=16] {
    [name="Franklin Barbecue"],
    [name="East Side Pies"][osm_id!= 1000269092876], //excl double ESP
    [name="Bennu Coffee"],
    [name="Salty Sow"],
    [name="Eastside Cafe"],
    [osm_id= 1000001481721293],//[name="'Donn's Depot'"],
    [name="Alamo Drafthouse"][osm_id!=1000001481633325],
    [name="Uchi"],
    [name="Barley Swine"],
    [osm_id= 1000000919335942 ],//[name="Domincan Joe Coffee Shop"],
    [name="'Jo's Coffee'"],
    [name="'Torchy's Tacos'"][osm_id!=1000003181780241], //not So 1st one
    [name="Summermoon Coffee Bar"],
    [osm_id=1000003190845084], //ESK S Lamar
    [name="Kerbey Lane"][osm_id!=1000003181892454], // exclude campus
    [osm_id=1000000436633129], //magnolias lake austin
    [osm_id=1000000537495439], //360 whole foods
    [name="Ramen Tatsu-Ya"],
    [osm_id=1000001953179853], //anderson hopdoddy
    [name="Tacodeli"][osm_id!=1000003181780245], //not lamar
    [name="Fonda San Miguel"],
    [name="Pinthouse Pizza"],
    [name="Draught House"],
    [osm_id=1000001236793007], //quacks
    [name="Epoch Coffee"],
    [name="Mozart's Coffee Roasters"],
    [name="Qui"],
    [osm_id=1000003190873015],//via313
    [name='Rio Rita']
    {
    
    ::icon { 
        marker-fill:@red;
        marker-line-color: @land;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;   
        marker-allow-overlap: true;
        marker-allow-overlap: false; 
      }//end icon
    
    ::text {
        text-name: @name;
        [osm_id=1000001236793007] { text-name: "'Quack\'s Bakery'"; }
        text-face-name: @sans_bold;
        text-fill: @red;      
        text-size: 55;
        text-halo-fill: @land;
        text-halo-radius: 5;
        text-wrap-width: 30;
        text-line-spacing:  -15;
        text-align: center;
        text-placement-type: simple;
        text-placements: "S,SW,SE,E,W,SSW,SSE,N";
        text-transform: lowercase;
        text-character-spacing: 0.25;
        text-dy: 40;       
        text-avoid-edges: false;
        text-allow-overlap: true; 
      
      //adjust east
        [name="Eastside Cafe"]
        { 
        text-placements: "E";
        text-dx: 35; text-dy: 0;
        text-align: left;
        }

      //adjust SE
      [osm_id=1000003190845085] {
        text-placements: "SE";
        text-dx: 10;
        }
      
      //adjust west
        [name="Draught House"] 
        { 
        text-placements: "W";
        text-dx: 35; text-dy: 0;
        text-align: right;
        }
      
      //adjust north
      [osm_id=1000003196375766 ] { //drafthouse vilage
          text-placements: "N";
          text-dy: 40;
        }
      
      
      } // end label
        
    } // end filter

  } //end top central austin


// N lamar case
#poi_label [zoom>=16] {
  [name="Uchiko"],[osm_id=1000003181780246],[osm_id=1000003181780245]
    {
    ::icon [osm_id=1000003181780245] {
        marker-fill:@red;
//        marker-line-color: @land;
  //      marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;    
      }//end icon
    
    ::text {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @red;      
        text-size: 55;
        text-halo-fill: @land;
        text-halo-radius: 3;
        text-wrap-width: 30;
        text-line-spacing:  -25;
        text-align: center;
        text-placement-type: simple;
        text-transform: lowercase;
        text-character-spacing: 0.25;
        text-avoid-edges: false;
        text-allow-overlap: true;   
      [name="Uchiko"] { 
        text-placements: "N"; 
        text-dy: 55; }
      [osm_id=1000003181780246] { //houndstooth
        text-placements: "E"; 
        text-wrap-character: "s";
        text-dx: 35; 
        text-align: left;}
      [osm_id=1000003181780245] { //tacodeli
        text-placements: "S"; 
        text-dy: 55;}
      }
    } //end filter
  } //end special N Lamar case