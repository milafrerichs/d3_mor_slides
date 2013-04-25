data = [{name: "Monster", count:1},{name: "Rails", count:2}, {name: "Test", count:1}]
@basic = ->
  table = d3.select("body").append("table")
  tbody = table.append("tbody")

  tr = tbody.selectAll("tr")
  .data(data)
  .enter()
  .append("tr")

  tr.append("td")
  .text((d)-> d.name)
  tr.append("td")
  .text((d) -> d.count)
