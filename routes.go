package main

import (
	"github.com/labstack/echo/v4"
)

func setupRoutes(e *echo.Echo) {
	e.GET("/", func(c echo.Context) error {
		return c.JSON(200, "Shipment service running successfully!")
	})
}
