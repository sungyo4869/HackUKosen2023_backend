package model

type UserScore struct{
	Score int
	UserName int
}

type Rankings struct{
	Scores []UserScore
}