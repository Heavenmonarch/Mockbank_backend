CREATE TABLE accounts (
                          id             BIGINT         NOT NULL AUTO_INCREMENT,

                          user_id        BIGINT         NOT NULL,

                          account_number CHAR(10)       NOT NULL,

                          balance        DECIMAL(19, 2) NOT NULL DEFAULT 0.00,

                          currency       CHAR(3)        NOT NULL DEFAULT 'NGN',

                          version        BIGINT         NOT NULL DEFAULT 0,

                          created_at     DATETIME(6)    NOT NULL,
                          updated_at     DATETIME(6)    NOT NULL,

                          PRIMARY KEY (id),

                          CONSTRAINT uk_accounts_account_number UNIQUE (account_number),

                          CONSTRAINT uk_accounts_user_id UNIQUE (user_id),

                          CONSTRAINT chk_accounts_balance_non_negative CHECK (balance >= 0),

                          CONSTRAINT fk_accounts_user
                              FOREIGN KEY (user_id) REFERENCES users (id)
                                  ON DELETE RESTRICT
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;