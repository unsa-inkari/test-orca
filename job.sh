#!/bin/bash
#SBATCH --job-name          test-orca
#SBATCH --time              720:00:00
#SBATCH --nodes             1
#SBATCH --ntasks-per-node   24
#SBATCH --mem-per-cpu       50MB
#SBATCH --error             output-%j.error
#SBATCH --output            output-%j.output

# Eliminando los modulos anteriormnente cargados
module purge

# Cargando los modulos necesarios
module load orca/4.2.1

/opt/orca/orca-4.2.1/orca test.inp > results.out
