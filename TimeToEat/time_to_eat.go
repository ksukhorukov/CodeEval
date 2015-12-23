
package main

import "fmt"
import "log"
import "bufio"
import "os"
import "strings"
import "strconv"
import "sort"

func timeToInt(time string) (int) {
    result := strings.Replace(time, ":", "", -1)
    n, err := strconv.Atoi(result)
    if err != nil {
      log.Fatal(err)
    }
    return n
}

func intToTime(time int) (string) {
    number := strconv.Itoa(time)
    var formated string
    var result string

    //time should consists of 6 digits
    if len(number) != 6 {
        padding := 6 - len(number)
        for i := 0; i < padding; i++ {
          formated += "0" 
        }
        formated += number
    } else {
        formated = number
    }
    digits := strings.Split(formated, "")
    //each pair of two digits should be devided by ':'
    for i:= 0; i < 6; i++ {
        if ((i % 2) == 0) {
            result += ":"
        } 
        result += digits[i]
    }

    return result[1:]
    
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
        stamps := strings.Split(data, " ")
        var ints = make([]int, len(stamps))
        //transform time into integers
        for idx := 0; idx < len(stamps); idx++ {
            ints[idx] = timeToInt(stamps[idx])
        }
        //sort an array with integers
        sort.Ints(ints)
        //transform an array of ints to time format
        var result = make([]string, len(stamps))
        for i := (len(ints)-1); i >= 0; i-- {
            result[i] = intToTime(ints[i])
            fmt.Print(result[i], " ")
        }
        fmt.Println()
    }   
}