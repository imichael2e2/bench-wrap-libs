package main

import (
	"bufio"
	"fmt"
	"os"
)

import "github.com/mitchellh/go-wordwrap"


func main() {
	// Create a scanner to read from stdin
	scanner := bufio.NewScanner(os.Stdin)

	// Initialize an empty string to store the lines
	var inputText string

	// Read lines from stdin until an EOF (End of File) is encountered
	for scanner.Scan() {
		line := scanner.Text()
		inputText += line + "\n"
	}

	if err := scanner.Err(); err != nil {
		fmt.Println("Error reading input:", err)
		return
	}

	wrapped := wordwrap.WrapString(inputText, 80)
     	fmt.Print(wrapped)
}
