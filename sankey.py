import plotly.graph_objects as go

from boltons.setutils import IndexedSet

class Sankey:
  def __init__(self):
    self.labels = IndexedSet()
    self.source_nodes = []
    self.target_nodes = []
    self.edge_values = []
    self.colours = []

  def add_edge(self, source_label, target_label, edge_value):
    self.labels.add(source_label)
    self.labels.add(target_label)
    source_index = self.labels.index(source_label)
    target_index = self.labels.index(target_label)

    self.source_nodes.append(source_index)
    self.target_nodes.append(target_index)
    self.edge_values.append(edge_value)

  def set_colours(self, colours):
    colour_list = ['pink'] * len(self.labels)
    for key, value in colours.items():
      colour_list[self.labels.index(key)] = value
    self.colours = colour_list

  def validate(self):
    # For each non-starting and non-terminating node, ensure that the input in is equal to the input out
    label_range = range(len(self.labels))
    start_nodes = set(label_range)
    end_nodes = set(label_range)

    sums = [0] * len(self.labels)
    for i in label_range:
      value = self.edge_values[i]
      source = self.source_nodes[i]
      target = self.target_nodes[i]

      sums[source] -= value
      if source in end_nodes:
        end_nodes.remove(source)

      sums[self.target_nodes[target]] += value
      if target in start_nodes:
        start_nodes.remove(target)

    for i in label_range:
      if sums[i] != 0.00 and not (i in start_nodes or i in end_nodes):
        print(f'{self.labels[i]} is unbalanced: {sums[i]}')


  def render(self, title):
    labels_list = []
    for label in self.labels:
      labels_list.append(label)

    figure = go.Figure(data = [go.Sankey(
    node = dict(
      pad = 15,
      thickness = 20,
      line = dict(color = "black", width = 0.5),
      label = labels_list,
      color = self.colours
    ),
    link = dict(
      source = self.source_nodes,
      target = self.target_nodes,
      value = self.edge_values
    )
    )])

    figure.update_layout(
      title_text=title,
      font_size=12,
      width=1500,
      height=1000,
    )
    figure.show()
