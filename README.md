# Dijkstra's Shortest Path

## Introduction
This project implements Dijkstra's shortest path algorithm in OCaml. It is a work in progress and aims to provide a simple and efficient implementation of this algorithm.

## Why?
I wanted to introduce myself to basic graph theory concepts. Additionally, understanding Dijkstra's algorithm serves as a foundation for implementing more advanced algorithms like A*, which is an extension of Dijkstra's algorithm.

## Features
- Implementation of Dijkstra's algorithm.
- Support for weighted graphs.
- Utilizes OCaml for efficient and expressive programming.
- Utilizes Nix Flakes as the package manager for dependency management.

## Installation
To build and run the project, ensure you have Nix Flakes installed on your system. Then, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/hnrbs/dijkstras-shortest-path.git
    ```
2. Navigate to the project directory:
    ```bash
    cd dijkstras-shortest-path
    ```
3. Build the project using Nix Flakes:
    ```bash
    nix develop '.#'
    ```
4. Run the project:
    ```bash
    dune exec src/main.exe
    ```

## Usage
Once the project is built and running, you can use it to find the shortest path in a graph by providing the appropriate input.

Example usage:
```ocaml
TODO: write an example of how to use it. (I told you it's still a WIP)
```

## Contributions
Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).
