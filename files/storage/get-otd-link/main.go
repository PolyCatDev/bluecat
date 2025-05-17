package main

import (
	"fmt"
	"strings"

	"github.com/gocolly/colly"
)

var pkg string

func main() {
	collector := colly.NewCollector(colly.AllowedDomains("opentabletdriver.net"))

	collector.OnHTML("a[href]", func(h *colly.HTMLElement) {
		href := h.Attr("href")
		if strings.HasSuffix(href, ".rpm") {
			pkg = href
		}
	})

	collector.Visit("https://opentabletdriver.net/Wiki/Install/Linux")

	fmt.Println(pkg)
}
