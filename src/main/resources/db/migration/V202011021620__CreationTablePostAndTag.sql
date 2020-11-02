CREATE TABLE post (
	id BIGINT NOT NULL,
	content varchar(1000) NOT NULL,
	description varchar(250) NOT NULL,
	title varchar(100) NOT NULL,
  	Constraint post_pk PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE tag (
	id BIGINT NOT NULL,
	name varchar(100) NOT NULL,
  	Constraint tag_pk PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE post_tags (
	post_id BIGINT NOT NULL,
	tag_id BIGINT NOT NULL,
	CONSTRAINT post_tags_post_fk FOREIGN KEY (post_id) REFERENCES helpdesk_test.post(id),
	CONSTRAINT post_tags_tag_fk FOREIGN KEY (tag_id) REFERENCES helpdesk_test.tag(id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;