/***CREATING ALL TABLES*/
CREATE TABLE INVOICELINES (
  InvoiceLinesId   INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  FirstName    VARCHAR(40)                    NULL,
  LastName     VARCHAR(40)                    NULL,
  Phone        VARCHAR(20)                    NULL,
  Address      VARCHAR(100)                   NULL,
  City         VARCHAR(30)                    NULL,
  FullName     VARCHAR(100)                   NULL,
  Email        VARCHAR(100)                   NULL,
  Pin          VARCHAR(100)                   NULL,
  CreationDate DATETIME                       NULL,
  InvoiceLinesCode VARCHAR(10) UNIQUE             NOT NULL
)
  ENGINE = INNODB;

/* INSERT DATA */
INSERT INTO INVOICELINES (FirstName, LastName, Phone, Address, City, FullName, Email, Pin, CreationDate, InvoiceLinesCode)
VALUES ('SYSADMIN', 'SYSADMIN', 945214775, 'Av. Alfonso Ugarte', 'Lima', 'SYSADMIN SYSADMIN', 'sysadmin@gmail.com',
        1, '2011-12-18 13:17:17', 'SYSADMIN');

DROP PROCEDURE IF EXISTS sp_GetInvoiceLines;
DELIMITER //
CREATE PROCEDURE sp_GetInvoiceLines()
  BEGIN
    SELECT * FROM INVOICELINES;
  END //
DELIMITER ;
/**Drop StoreProcedure**/
CALL sp_GetInvoiceLines();


