// run.cpp
#include <iostream>
#include <fstream>

int main() {
    std::cout << "Program started successfully." << std::endl;

    // Try to open a non-existent file
    std::ifstream file("does_not_exist.txt");
    if (!file) {
        std::cerr << "Error: could not open the file!" << std::endl;
    }

    std::cout << "Program finished." << std::endl;
    return 0;
}
