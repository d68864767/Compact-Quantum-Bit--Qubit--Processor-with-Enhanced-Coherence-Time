```bash
#!/bin/bash

# Deploy the VHDL files using a VHDL simulator (like GHDL)
echo "Deploying VHDL files..."
ghdl -a qubit_design.vhd
ghdl -a cooling_system.vhd
ghdl -a architecture.vhd
ghdl -e Qubit
ghdl -e CoolingSystem
ghdl -e Architecture
echo "VHDL files deployed successfully."

# Deploy the Python files
echo "Deploying Python files..."
python3 error_correction.py
python3 quantum_simulations.py
python3 cryptography.py
python3 algorithm_testing.py
echo "Python files deployed successfully."

# Deploy the main.py file
echo "Deploying main.py..."
python3 main.py
echo "main.py deployed successfully."

echo "All files deployed successfully."
```
