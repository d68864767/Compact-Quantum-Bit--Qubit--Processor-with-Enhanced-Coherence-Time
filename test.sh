```bash
#!/bin/bash

# Test the VHDL files using a VHDL simulator (like GHDL)
echo "Testing VHDL files..."
ghdl -a qubit_design.vhd
ghdl -a cooling_system.vhd
ghdl -a architecture.vhd
ghdl -e Qubit
ghdl -e CoolingSystem
ghdl -e Architecture
ghdl -r Architecture --stop-time=100ns --vcd=architecture.vcd
echo "VHDL files tested successfully."

# Test the Python files
echo "Testing Python files..."
python3 -m unittest error_correction.py
python3 -m unittest quantum_simulations.py
python3 -m unittest cryptography.py
python3 -m unittest algorithm_testing.py
echo "Python files tested successfully."

# Test the main.py file
echo "Testing main.py..."
python3 main.py
echo "main.py tested successfully."

echo "All tests passed successfully."
```
