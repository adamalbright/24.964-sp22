#!/bin/bash
INPUT_FILE="voicing/SimpleVoicing.tsv"
CONSTRAINTS_FILE="voicing/SimpleVoicing.constraints.tsv"
NUMBER_OF_LEARNING_TRIALS=5000
NUMBER_OF_TESTING_TRIALS=1000
INITIAL_MARKEDNESS_VALUE=10
INITIAL_FAITHFULNESS_VALUE=0
INITIAL_POS_FAITHFULNESS_VALUE=5
INITIAL_PLASTICITY=.1
PLASTICITY_DECREMENT=0
EVALUATION_NOISE=2

perl GLA-Noisy.pl $INPUT_FILE $CONSTRAINTS_FILE $NUMBER_OF_LEARNING_TRIALS $NUMBER_OF_TESTING_TRIALS $INITIAL_MARKEDNESS_VALUE $INITIAL_FAITHFULNESS_VALUE $INITIAL_POS_FAITHFULNESS_VALUE  $INITIAL_PLASTICITY $PLASTICITY_DECREMENT $EVALUATION_NOISE