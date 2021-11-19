#include <iostream>

#include "layer.h"

Layer::Layer(int num_neurons) {
  for ( int i = 0; i < num_neurons; ++i ) {
    neurons.push_back(std::make_unique<Neuron>());
  }
}

void Layer::feed(std::vector<float> vals) {
  if (vals.size() != neurons.size()) {
    std::cerr << "Mismatched feed & neuron lengths!";
    exit(EXIT_FAILURE);
  }
  for (int i = 0; i < vals.size(); ++i) {
    neurons.at(i)->feed(vals.at(i));
  }
}
