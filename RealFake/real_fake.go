package main

import "fmt"
import "log"
import "bufio"
import "os"
import "strings"
import "strconv"

func realFake(digits []string)  {
    var data [16]int
    idx := 0
    summ := 0
    for idx < len(digits) {
        n, err := strconv.Atoi(digits[idx])
        if err != nil {
          log.Fatal(err)
        }
        if (((idx+1) % 3) == 0) || (idx == 0)  {
            summ += n * 2
        }
        data[idx] = n
        idx++
    }
    idx = 0
    for idx < len(digits) {
        if !((((idx+1) % 3) == 0) || (idx == 0))  {
            summ += data[idx]
        } 
        idx++
    }

    if summ % 10 == 0 {
        fmt.Println("Real")
    } else {
        fmt.Println("Fake")
    }

}

func main() {
    file, err := os.Open(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }   
    defer file.Close()
    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
        data := scanner.Text()
        splited := strings.Split(data, " ")
        joined := strings.Join(splited, "")
        digits := strings.Split(joined, "")
        //fmt.Println(digits)
        realFake(digits)
    }   
}