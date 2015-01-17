@op: .075;

#hillshade {
    [class='full_shadow'] {
      polygon-pattern-file:url(img/full_shadow-HD.png);
      polygon-pattern-opacity: @op;
      polygon-pattern-alignment:global;
    }
    [class='medium_shadow'] {
      polygon-pattern-file:url(img/medium_shadow-HD.png);
      polygon-pattern-opacity: @op;
      //polygon-pattern-alignment:global;
    }
    [class='medium_highlight'] {
      polygon-pattern-file:url(img/medium_highlight-HD.png);
      polygon-pattern-opacity: @op;
      polygon-pattern-alignment:global;
    }
    [class='full_highlight'] {
      polygon-pattern-file:url(img/full_highlight-HD.png);
      polygon-pattern-opacity: @op;
      polygon-pattern-alignment:global;
    }
}

#landcover {
  polygon-fill: @park;
  polygon-opacity: @op;
  }