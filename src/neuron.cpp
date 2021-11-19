#include "neuron.h"
#include <iostream>

Neuron::Neuron() {
  std::cout << "Created neuron" << std::endl;
}

void Neuron::feed(float val) {
  value = val;
}
