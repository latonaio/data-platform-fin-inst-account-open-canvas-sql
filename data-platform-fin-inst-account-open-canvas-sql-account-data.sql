CREATE TABLE `data_platform_fin_inst_account_open_canvas_account_data`
(
  `FinInstCountry`            varchar(3) NOT NULL, 
  `FinInstCode`               varchar(10) NOT NULL,
  `FinInstBranchCode`         varchar(10) NOT NULL,
  `FinInstFullCode`           varchar(15) NOT NULL,
  `InternalFinInstCustomerID` int(12) NOT NULL,
  `InternalFinInstAccountID`  int(12) NOT NULL,
  `ValidityEndDate`           date NOT NULL,
  `ValidityStartDate`         date NOT NULL,
  `contact_name`              varchar(48) NOT NULL,
  `branch_name`               varchar(15) NOT NULL,
  `branch_code`               varchar(10) NOT NULL,
  `account_type`              varchar(20) NOT NULL,
  `account_number`            varchar(15) NOT NULL,
  `account_id`                varchar(20) NOT NULL,
  `Count`                     int(3) NOT NULL,
  `base_date`                 date NOT NULL,
  `base_time`                 time NOT NULL,

  PRIMARY KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`, `ValidityEndDate`, `ValidityStartDate`),

  CONSTRAINT `DataPlatformFinInstAccountOpenCanvasAccountDataFinInstAccount_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`) REFERENCES `data_platform_fin_inst_acccount_item_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
