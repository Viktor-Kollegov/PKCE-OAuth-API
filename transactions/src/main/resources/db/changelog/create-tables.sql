CREATE TABLE account (
                         id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
                         user_id VARCHAR(255) NOT NULL,
                         currency VARCHAR(10) NOT NULL
);

CREATE TABLE transaction (
                             id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
                             account_id BIGINT NOT NULL,
                             amount DECIMAL(19,2) NOT NULL,
                             timestamp TIMESTAMP NOT NULL
);

ALTER TABLE transaction
    ADD CONSTRAINT fk_transaction_account
        FOREIGN KEY (account_id) REFERENCES account(id);
