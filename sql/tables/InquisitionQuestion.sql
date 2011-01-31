create table InquisitionQuestion (
	id serial,
	inquisition integer not null references Inquisition(id) on delete cascade,
	bodytext      text,
	question_type integer not null,
	displayorder  integer not null default 0,
	primary key (id)
);

create index InquisitionQuestion_inquisition_index on InquisitionQuestion(inquisition);
alter table InquisitionQuestion add correct_option integer not null references InquisitionQuestionOption(id) on delete set null;

