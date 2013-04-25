(function() {

  this.animation = function() {
    var arc, arcFinal, data, g, pie;
    pie = d3.layout.pie();
    arc = d3.svg.arc().outerRadius(200).innerRadius(130);
    arcFinal = d3.svg.arc().innerRadius(120).outerRadius(200);
    data = [2, 2];
    g = d3.select("body").append("svg").attr("width", 400).attr("height", 400).append("svg:g").attr("class", "arc").attr("transform", "translate(200,200)").selectAll("path").data(pie(data)).enter();
    return g.append("path").attr("d", arc).style("fill", "#ff0000").on('mouseover', function(d, i) {
      return d3.select(this).transition().duration(750).attr("d", arcFinal);
    }).on('mouseout', function(d, i) {
      return d3.select(this).transition().duration(750).attr("d", arc);
    });
  };

}).call(this);

// Generated by CoffeeScript 1.5.0-pre
