package handler

import (
	"encoding/json"
)

type Message struct {
	Type	string			`json:"type"`
	Payload	json.RawMessage	`json:"payload"`
}

type Response struct {
	Type	string			`json:"type"`
	Payload	any				`json:"payload"`
	Success	bool			`json:"success"`
	Error	*string			`json:"error"`
}
