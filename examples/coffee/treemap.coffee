@treemap = ->
  width = 200
  height = 200
  d_data = {name: "skills",children: [{name: "Ruby", skill_level: 70}, {name: "Javascript", skill_level: 90}, {name: "R", skill_level: 20}, {name: "Objective-C", skill_level: 60}, {name: "Python", skill_level: 60}] }
  div = d3.select("body").append("div").attr("id","treemap")
  color = d3.scale.category20c()
  treemap = d3.layout.treemap()
  .size([width, height])
  .sticky(true)
  .padding(10)
  .value((d) -> d.skill_level )

  node = div.datum(d_data).selectAll(".node")
  .data(treemap.nodes)
  .enter().append("div")
  .attr("class", "node")
  .style("background", (d) -> if d.children then null else color(d.name))
  .style("left", (d) -> d.x + "px")
  .style("top", (d) -> d.y + "px")
  .style("width", (d) -> Math.max(0, d.dx - 1) + "px")
  .style("height", (d) -> Math.max(0, d.dy - 1) + "px")
  .text((d) -> if d.children then null else d.name)
