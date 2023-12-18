package model

type UserScore struct {
	UserName string
	Score int
}

type Ranking struct{
	Ranking []UserScore
}