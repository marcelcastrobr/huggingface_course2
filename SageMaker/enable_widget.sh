#!/bin/bash

set -e

# OVERVIEW
# This script installs a single pip package in a single SageMaker conda environments.

sudo -u ec2-user -i <<'EOF'
# PARAMETERS
ENVIRONMENT=python3
source /home/ec2-user/anaconda3/bin/activate "$ENVIRONMENT"

pip install scipy scikit-learn ipywidgets matplotlib statsmodels==0.11.1 clustergrammer2
jupyter nbextension install --user --py widgetsnbextension
jupyter nbextension install --user --py clustergrammer2
jupyter nbextension enable --user --py widgetsnbextension
jupyter nbextension enable --user --py clustergrammer2

source /home/ec2-user/anaconda3/bin/deactivate
EOF
