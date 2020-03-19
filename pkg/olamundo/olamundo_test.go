package olamundo

import (
	"testing"
	"github.com/stretchr/testify/assert"
)

func TestOlaMundo(t *testing.T) {
	assert.Equal(t, OlaMundo(), "Olá Mundo!")
}
