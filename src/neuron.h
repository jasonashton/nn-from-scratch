#pragma once

class Neuron {
public:
  Neuron();

  void feed(float val);

private:
  float value;
  float bias;
};
