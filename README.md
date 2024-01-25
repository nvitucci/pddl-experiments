# PDDL experiments

This repository collects some experiments I have recently done with PDDL.

## PDDL files

The `pddl` directory contains several folders, each with a domain and a problem file:

- `simple` is compliant with PDDL 1.2 / STRIPS.
- `numeric` contains simple numeric functions and metrics (PDDL 2.1 and above).
- `temporal` contains durative actions and a numeric function (PDDL 2.1 and above).

## Tested planners

Each problem can be solved with an appropriate planner:

- `simple` can be solved with [Pyperplan](https://github.com/aibasel/pyperplan):
  1. Install Python >= 3.6.
  2. Install Pyperplan with `pip install pyperplan` (tested version: 2.1).
  3. Run `pyperplan pddl/simple/domain.pddl pddl/simple/problem.pddl`.
- `numeric` can be solved with [ENHSP](https://sites.google.com/view/enhsp):
  1. Install a Java runtime.
  2. Download the ENHSP-2020 JAR file from https://drive.google.com/file/d/1GfVLQNEgeeNnNeI6HkrCtAUrrSzdSW8g/view?usp=sharing (tested version: JAR file with SHA-256 checksum `5b9c62acba31bd01e4e80214f9c7e5e004938c16d0f16eb999092de2403d9488`).
  3. Run `java -jar /path/to/enhsp-20.jar -o pddl/numeric/domain.pddl -f pddl/numeric/problem.pddl -planner opt-blind`.
     - NOTE: It is important to select a configuration (a value for the `-planner` option) that guarantees optimality in order to obtain the best plan according to the metric.
- `temporal` can be solved with [LPG-td](https://lpg.unibs.it/lpg/) (**Linux only**):
  1. Download the LPG-td compressed archive from https://lpg.unibs.it/lpg/lpgtd-1_4-linux.tar.gz (tested version: .tar.gz file with SHA-256 checksum `0c5792a9af205e6c720f75218d5fffcf75be712f02a80d2469e88c2155c7dfbb`) and extract the `lpg-td` binary.
  2. Run `/path/to/lpg-td -o pddl/temporal/domain.pddl -f pddl/temporal/problem.pddl -quality`.

ENHSP can solve `simple` too. LPG-td can solve `simple` and `numeric` too.

## Alternative planners

More planners are available via [`planutils`](https://github.com/AI-Planning/planutils):

1. Install Docker.
2. Run the container attaching this directory as a volume, for example: `docker run -it --privileged -v $(pwd)/pddl-experiments/pddl:/root/pddl aiplanning/planutils:latest bash`.
3. From within the container, activate `planutils` environment with `planutils activate`.
4. Run `planutils list` to get a list of the available planners.
5. Run a planner, for example `optic` - the system will ask to install it first.
