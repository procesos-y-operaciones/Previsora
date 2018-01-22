(function() {
  $(function() {
    $('tr').mouseover(function() {
      var id3, id4, td3, td4;
      id3 = 'e' + this.id;
      id4 = 't' + this.id;
      td3 = document.getElementById(id3);
      td4 = document.getElementById(id4);
      $(td3).show();
      return $(td4).show();
    });
    return $('tr').mouseleave(function() {
      var id3, id4, td3, td4;
      id3 = 'e' + this.id;
      id4 = 't' + this.id;
      td3 = document.getElementById(id3);
      td4 = document.getElementById(id4);
      $(td3).hide();
      return $(td4).hide();
    });
  });

}).call(this);
