package main

import "fmt"
import "log"
import "bufio"
import "os"
import "strings"
import "strconv"

func remove(str []string, idx int) ([]string) {
    counter := 0
    var result []string
    for counter < len(str) {
        if idx != counter {
          result = append(result, str[counter])
        }
        counter++
    }
    return result
}

func main() {
    file, err := os.Open(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }   
    defer file.Close()
    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
        input := scanner.Text()
        data := strings.Split(input, "|")
        left := strings.Trim(data[0], " ")
        right := strings.Trim(data[1], " ")
        names := strings.Split(left, " ")
        m, err := strconv.Atoi(right)
        if err != nil {
          log.Fatal(err)
        }
        //fmt.Println(n, m)
        counter := 0
        idx := 0
        for len(names) != 1 {
            //fmt.Println("Len of names:", len(names))
            if idx >= len(names) {
                idx = 0
            }
            if counter-1 == m { 
              names = remove(names, idx)
              counter = 0
              idx = 0
            }
            counter++
            idx++
        }
        fmt.Println(names[0])
    }   
}