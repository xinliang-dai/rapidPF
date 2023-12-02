<!--[![Documentation Build](https://github.com/KIT-IAI/rapidPF/workflows/github-pages/badge.svg)](https://github.com/KIT-IAI/rapidPF/actions?query=workflow%3Agithub-pages)-->
[![documentation](https://img.shields.io/badge/docs-stable-blue)](https://xinliang-dai.github.io/rapidPF/)


# Code Repository for Distributed AC Power Flow Optimization

## Abstract

This repository hosts the codes for an advanced toolbox designed for solving distributed power flow problems. It is based on the research presented in three pivotal papers [[1](https://www.researchgate.net/publication/372342135_Hypergraph-Based_Fast_Distributed_AC_Power_Flow_Optimization)][[2](https://www.sciencedirect.com/science/article/pii/S2405896322006401)][[3](https://www.sciencedirect.com/science/article/pii/S2352467721000424)]. The toolbox is an evolution of the platform introduced in [[1](https://www.researchgate.net/publication/372342135_Hypergraph-Based_Fast_Distributed_AC_Power_Flow_Optimization)], which provided a framework for rapid prototyping using the Gauss-Newton Augmented Lagrangian Alternating Direction Inexact Newton (GN-ALADIN) method. Enhancements in this toolbox include improved scalability of the Gauss-Newton ALADIN method [[2](https://www.sciencedirect.com/science/article/pii/S2405896322006401)] and advanced problem reformulation capabilities using a hypergraph-based communication structure (introduced in [[3](https://www.sciencedirect.com/science/article/pii/S2352467721000424)]).


## Key Features

- **Integration with MATPOWER**: Users can combine multiple MATPOWER casefiles into a single, unified casefile for analysis.
- **Distributed Reformulation**: Formulation of AC power flow problems as distributed optimization problems, enabling efficient handling of large-scale systems.
- **Gauss-Newon ALADIN**: Implementation of the Hypergraph Distributed Sequential Quadratic Programming (HDSQP) method for solving complex power flow problems.
- **HDSQP Approach**:  Ability to reformulate problems with a communication structure corresponding to a hypergraph and use Hypergraph Distributed Sequential Quadratic Programming (HDSQP) method for solving complex power flow problems.

## Getting Started

#### Prerequisites
- Ensure that you have MATLAB with MATPOWER toolbox.
- Install IPOPT and CasADi following their respective installation guides (option).

#### Installation
Provide step-by-step instructions on how to set up the project environment:
```bash
# Clone the repository
git clone https://github.com/xinliang-dai/rapidPF.git

# Navigate to the project directory
cd 00_use-case/

```
## Usage
- **Merging MATPOWER Casefiles:**
Use the provided utility scripts to merge multiple casefiles.
- **Formulating Problems:**
Follow the examples in the documentation to formulate your distributed power flow problems.
- **Solving Problems:**
Utilize the Gauss-Newton ALADIN and HDSQP provided methods to solve the formulated problems.
- **Documentation**
For detailed usage instructions, theoretical background, and examples, please refer to the online documentation available at [Toolbox Documentation](https://xinliang-dai.github.io/rapidPF/)


## Citation

##### Hypergraph-Based Distributed Sequential Quadratic Programming (HDSQP)
[1] [Hypergraph-Based Fast Distributed AC Power Flow Optimization](https://www.researchgate.net/publication/372342135_Hypergraph-Based_Fast_Distributed_AC_Power_Flow_Optimization), *62nd IEEE Conference on Decision and Control CDC, 2023*
```bash
@inproceedings{dai2023hybrid,
    title={Hypergraph-Based Fast Distributed {AC} Power Flow Optimization},
    author={Dai, Xinliang and Lian, Yingzhao and Jiang, Yuning and Jones, Colin N and Hagenmeyer, Veit},
    booktitle={62rd Proc. IEEE Conf. Decis. Control (CDC)},
    year={2023},
}
```
##### Large-scale Gauss-Newton based ALADIN
[2] [Rapid Scalable Distributed Power Flow with Open-Source Implementation](https://www.sciencedirect.com/science/article/pii/S2405896322006401), *9th IFAC Conference on Networked Systems NECSYS, 2022* 
```bash
@inproceedings{dai2022rapid,
    title = {Rapid Scalable Distributed Power Flow with Open-Source Implementation},
    volume = {55},
    number = {13},
    pages = {145-150},
    year = {2022},
    note = {9th IFAC Conference on Networked Systems NECSYS 2022},
    issn = {2405-8963},
    author={Dai, Xinliang and Cai, Yichen and Jiang, Yuning and Hagenmeyer, Veit},
}
```
##### Rapid prototyping for distributed power flow problems (rapidPF) + Gauss-Newton based ALADIN

[3] [Distributed power flow and distributed optimization—Formulation, solution, and open source implementation](https://www.sciencedirect.com/science/article/pii/S2352467721000424), *Sustainable Energy, Grids and Networks, 2021*
```bash
@article{muhlpfordt2021distributed,
    title={Distributed power flow and distributed optimization—Formulation, solution, and open source implementation},
    author={M{\"u}hlpfordt, Tillmann and Dai, Xinliang and Engelmann, Alexander and Hagenmeyer, Veit},
    journal={Sustain. Energy, Grids Netw.},
    volume={26},
    pages={100471},
    year={2021},
    publisher={Elsevier}
}
```
