create table InquisitionQuestionOption (
	id serial,
	question integer not null references InquisitionQuestion(id) on delete cascade,
	title varchar(255),
	displayorder integer not null default 0,
	primary key(id)
);

create index InquisitionQuestionOption_question_index on
	InquisitionQuestionOption(question);
