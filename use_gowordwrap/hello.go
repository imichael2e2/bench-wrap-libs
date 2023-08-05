
// package main

// import (
// 	"bufio"
// 	"fmt"
// 	"os"
// )



// func main() {
// 	// Create a bufio.Reader to read from stdin
// 	reader := bufio.NewReader(os.Stdin)

// 	// Initialize an empty string to store the lines
// 	var longString string

// 	// Read lines from stdin until an EOF (End of File) is encountered
// 	for {
// 		char, err := reader.ReadByte()

// 		// Check for EOF or any other error
// 		if err != nil {
// 			break
// 		}

// 		// Add the character to the longString
// 		longString += string(char)
		
// 	}


// 	wrapped := wordwrap.WrapString(longString, 80)
//      	fmt.Println(wrapped)
// 	// fmt.Println("You entered:")
// 	// fmt.Println(longString)
// }



package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

import "github.com/mitchellh/go-wordwrap"


const maxBufferSize = 2 * 1024 * 1024 // 2MB


func main() {
	fmt.Println("Enter lines of text. Press Ctrl+D (Unix/Linux) or Ctrl+Z (Windows) to stop.")

	// Create a bufio.Reader with custom buffer size
	// reader := bufio.NewReaderSize(os.Stdin, maxBufferSize)
	reader := bufio.NewReader(os.Stdin)

	// Initialize an empty string to store the lines
	var inputText string

	// Read lines from stdin until an EOF (End of File) is encountered
	for {
		line, _, err := reader.ReadLine()

		// Check for EOF or any other error
		if err != nil {
			break
		}

		// Add the line to the inputText string
		inputText += string(line) + "\n"
	}

	wrapped := wordwrap.WrapString(inputText, 80)
     	fmt.Println(wrapped)
	// fmt.Println("You entered:")
	// fmt.Println(inputText)
}

func mainx() {
	fmt.Println("Enter lines of text. Press Ctrl+D (Unix/Linux) or Ctrl+Z (Windows) to stop.")

	// Create a bufio.Reader with max buffer size
	reader := bufio.NewReaderSize(os.Stdin, maxBufferSize)

	// Create a Scanner to read from the custom bufio.Reader
	scanner := bufio.NewScanner(reader)

	// Initialize an empty string to store the lines
	var inputText strings.Builder

	// Read lines from stdin until an EOF (End of File) is encountered
	for scanner.Scan() {
		line := scanner.Text()
		inputText.WriteString(line)
		// inputText.WriteString("\n")
	}

	if err := scanner.Err(); err != nil {
		fmt.Println("Error reading input:", err)
		return
	}

	wrapped := wordwrap.WrapString(inputText.String(), 80)
     	fmt.Println(wrapped)
	// fmt.Println("You entered:")
	// fmt.Println(inputText.String())
}
