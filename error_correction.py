```python
import numpy as np
from scipy.linalg import expm

# Define Pauli matrices
sigma_x = np.array([[0, 1], [1, 0]])
sigma_y = np.array([[0, -1j], [1j, 0]])
sigma_z = np.array([[1, 0], [0, -1]])

# Define error channels
def bit_flip_error(qubit_state, error_prob):
    """Applies a bit flip error to the qubit state with a certain probability."""
    if np.random.rand() < error_prob:
        return np.dot(sigma_x, qubit_state)
    else:
        return qubit_state

def phase_flip_error(qubit_state, error_prob):
    """Applies a phase flip error to the qubit state with a certain probability."""
    if np.random.rand() < error_prob:
        return np.dot(sigma_z, qubit_state)
    else:
        return qubit_state

# Define error correction
def error_correction(qubit_state, error_prob):
    """Applies error correction to the qubit state."""
    # Apply bit flip error correction
    corrected_state = bit_flip_error(qubit_state, error_prob)
    # Apply phase flip error correction
    corrected_state = phase_flip_error(corrected_state, error_prob)
    return corrected_state

# Test error correction
if __name__ == "__main__":
    # Initialize qubit state
    qubit_state = np.array([1, 0])
    # Define error probability
    error_prob = 0.1
    # Apply error correction
    corrected_state = error_correction(qubit_state, error_prob)
    print("Initial state:", qubit_state)
    print("Corrected state:", corrected_state)
```
