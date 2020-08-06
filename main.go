package main

import (
	"io/ioutil"
	"log"
	"strings"
	"time"
	"unsafe"

	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
)

func main() {
	tick := time.Tick(10 * time.Hour)
	for {
		select {
		case <-tick:
			task()
		}
	}
}

func task() {
	db, err := gorm.Open("mysql", "root:Zbj123@tcp(49.233.180.123:3306)/gin-vue?charset=utf8&parseTime=True&loc=Local")
	defer db.Close()
	db.LogMode(true) //打印SQL语句
	file, err := ioutil.ReadFile("recovery.sql")
	if err != nil {
		log.Println("[Setting] config error: ", err)
	}
	lstSQL := strings.Split(B2S(file), ";")
	for _, sql := range lstSQL {
		db.Exec(sql)
	}
}

//B2S []byte -> string
func B2S(b []byte) string {
	return *(*string)(unsafe.Pointer(&b))
}
