CREATE TABLE users (
                       id            BIGINT       NOT NULL AUTO_INCREMENT,

                       email         VARCHAR(255) NOT NULL,

                       password_hash VARCHAR(255) NOT NULL,

                       created_at    DATETIME(6)  NOT NULL,
                       updated_at    DATETIME(6)  NOT NULL,

                       PRIMARY KEY (id),

                       CONSTRAINT uk_users_email UNIQUE (email)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;