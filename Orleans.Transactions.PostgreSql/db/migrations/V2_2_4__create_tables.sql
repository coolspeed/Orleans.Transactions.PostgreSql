CREATE TABLE transaction_metadata
(
  state_id              VARCHAR(255) NOT NULL,
  committed_sequence_id INT          NOT NULL,
  etag                  VARCHAR(255) NOT NULL,
  value                 TEXT         NOT NULL,
  PRIMARY KEY (state_id)
);

CREATE TABLE transactional_state
(
  state_id            VARCHAR(255)  NOT NULL,
  sequence_id         INT           NOT NULL,
  transaction_manager TEXT          NOT NULL,
  value               JSON,
  timestamp           TIMESTAMP     NOT NULL,
  transaction_id      VARCHAR(255)  NOT NULL,
  state_type          VARCHAR(255),
  PRIMARY KEY (state_id, sequence_id)
);
