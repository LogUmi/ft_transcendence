package queries

import (
	// "github.com/gin-gonic/gin"
	"gorm.io/gorm"
)

type Queries struct {
	QueriesDB *gorm.DB
}

func NewRepository(db *gorm.DB) *Queries {
	return &Queries{QueriesDB: db}
}

func (r *Queries) CreateNewRecord(tableToRecord any) error {
	return r.QueriesDB.Create(tableToRecord).Error
}

func (r *Queries) SaveRecord(tableToUpdate any) error {
	return r.QueriesDB.Save(tableToUpdate).Error
}
