(function() {
  $(function() {
    return $('#filter_btn').click(function() {
      if ($(this).attr('aria-expanded') === "true") {
        return this.innerHTML = '<span class="glyphicon glyphicon-chevron-down"></span>';
      } else {
        return this.innerHTML = '<span class="glyphicon glyphicon-chevron-up"></span>';
      }
    });
  });

}).call(this);
