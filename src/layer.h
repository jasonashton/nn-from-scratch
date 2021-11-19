#pragma once

#include <vector>
#include <memory>

#include "neuron.h"

class Layer {
public:
  Layer(int num_neurons);

  void feed(std::vector<float> vals);
private:
  std::vector<std::unique_ptr<Neuron>> neurons;
};
