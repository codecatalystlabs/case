package handlers

import (
	"case/internal/models"
	"case/internal/security"
	"database/sql"
	"errors"
	"fmt"
	"log/slog"
	"strconv"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/session"
)

func HandlerEmployeeForm(c *fiber.Ctx, db *sql.DB, sl *slog.Logger, store *session.Store, config Config) error {

	userID, userName := GetUser(c, sl, store)
	role := security.GetRoles(userID, "admin")

	CtxG = c
	dbG = db

	//id := c.Params("i") // Retrieve the "id" parameter
	id, err := strconv.Atoi(c.Params("i"))
	if err != nil {
		fmt.Println(err.Error())
	}
	//uzer := models.User{}
	var employee models.Employee

	employee.Facility.Valid = true
	employee.Facility.Int64 = 0

	data := NewTemplateData(c, store)

	if id > 0 {
		u, er := models.EmployeeByEmployeeID(c.Context(), db, id)

		if er == nil {
			employee = *u
		}

	} else {
		id = 0
	}
	fmt.Println("Creating")

	data.User = userName
	data.Role = role
	data.Optionz = Get_Client_Optionz()
	data.Form = employee

	return GenerateHTML(c, data, "form_employee")
}
func HandlerEmployeeSubmit(c *fiber.Ctx, db *sql.DB, sl *slog.Logger, store *session.Store, config Config) error {
	return nil
}
func HandlerEmployeeList(c *fiber.Ctx, db *sql.DB, sl *slog.Logger, store *session.Store, config Config) error {
	fmt.Println("starting employee list")

	userID, userName := GetUser(c, sl, store)
	role := security.GetRoles(userID, "admin")

	data := NewTemplateData(c, store)
	data.User = userName
	data.Role = role

	fmt.Println("loading employee list page")
	//
	mysql := `SELECT ` +
		`employee_id, employee_fname, employee_lname, employee_sex, employee_email, employee_phone, employee_cadre, facility ` +
		`FROM public.employee `

	var args []interface{}

	// Execute query
	rows, err := db.QueryContext(c.Context(), mysql, args...)
	if err != nil {
		fmt.Println(err.Error())
	}
	defer rows.Close()

	// Slice to hold clients
	var employees []models.Employee

	// Iterate through rows
	for rows.Next() {
		var e models.Employee

		if err := rows.Scan(
			&e.EmployeeID, &e.EmployeeFname, &e.EmployeeLname, &e.EmployeeSex, &e.EmployeeEmail, &e.EmployeePhone, &e.EmployeeCadre, &e.Facility,
		); err != nil {
			fmt.Println(err.Error())
		}

		employees = append(employees, e)
	}

	if err != nil {
		if errors.Is(err, models.ErrNoRecord) {
			fmt.Println("error loading user list: ", err.Error())
		} else {
			fmt.Println("error loading user list: ", err.Error())
		}
	}

	data.Form = employees

	//
	return GenerateHTML(c, data, "list_employee")
}
