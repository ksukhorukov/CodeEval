
package main

import "fmt"
import "log"
import "bufio"
import "os"
import "strings"
import "regexp"
import "sort"


func main() {

    //need to count frequences
    m := make([]int, 26, 26)
    
    file, err := os.Open(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }   
    defer file.Close()
    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
        data := scanner.Text()
        data = strings.ToLower(data)
        chars := strings.Split(data, "")
        var validChar = regexp.MustCompile(`^[a-zA-Z]$`)
        //count letters frequency
        for i := 0; i < len(chars); i++ {
            if validChar.MatchString(chars[i]) {
                idx := []byte(chars[i])[0] - 96
                if m[idx] == 0 {
                    m[idx] = 1
                } else {
                    m[idx] += 1
                }
            }
        }

        sort.Sort(sort.Reverse(sort.IntSlice(m)))
        fmt.Println(m)
        score := 0
        startValue := 26
        for i:=0; i < 26; i++ {
            score += startValue * m[i]
            startValue-- 
        }

        fmt.Println(score)
    }   
}