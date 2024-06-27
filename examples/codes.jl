# # QEC Codes
# We provide a number of quantum error correction codes. 
using TensorQEC

# ## Toric Code
# The Toric code is a 2D topological code. We can define a Toric code instance  by `ToricCode(m, n)`, where `m` and `n` are the number of rows and columns of the Toric code.
tc = ToricCode(2, 3)
# Here is a schematic diagram of 2*3 Toric code:
# ![](../images/toric.svg)

# The Toric code has two types of stabilizers: X stabilizers and Z stabilizers. X stabilizers are plaquettes of the lattice, and Z stabilizers are vertices of the lattice. We can get the stabilizers of the toric code by
st = stabilizers(tc)

# Note the order of pauli strings is following the little-endian convention, i.e. the first qubit is the least significant qubit. For example, the Pauli string XYZ means $X_3Y_2Z_1$.

# ## Surface Code
# The surface code is a 2D topological code. Similarly to Toric code, we can define a surface code instance by `SurfaceCode(m, n)` and get the stabilizers of the surface code by `stabilizers(sc)`.
sc = SurfaceCode(3, 3)
st = stabilizers(sc)
# Here is a schematic diagram of 3*3 surface code:
# ![](../images/surface.svg)

# ## Others 
# We also includes Shor code, Steane code and [[8,3,2]] code. The usage is similar to the above examples.

# Shor Code:
shor = ShorCode()
st = stabilizers(shor)

# Steane Code:

# ![](../images/steane.svg)
steane = SteaneCode()
st = stabilizers(steane)

# [[8,3,2]] Code:

# ![](../images/code832.svg)
code832 = Code832()
st = stabilizers(code832)