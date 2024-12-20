USE amazon;

ALTER TABLE amazon_data RENAME amazon_purchases;
ALTER TABLE amazon_customers RENAME survey;

SELECT COUNT(*) FROM amazon.amazon_purchases;
SELECT COUNT(*) FROM amazon.survey;

SELECT * FROM amazon.amazon_purchases;
SELECT * FROM amazon.survey;

DESCRIBE amazon_purchases;
DESCRIBE survey;

-- Dataset is large, need to temporarily increase timeout and packet size limits
SET GLOBAL max_allowed_packet = 512 * 1024 * 1024;  -- Set to 512MB
SET SESSION wait_timeout = 28800;
SET SESSION interactive_timeout = 28800;

-- the 'Survey ResponseID' column is in both the amazon-purchases.csv and survey.csv tables.
-- INNER join the tables 
CREATE TABLE combined_data AS
SELECT 
    p.`Survey ResponseID` AS purchase_Survey_ResponseID,  -- Rename the column from amazon_purchases
    s.`Survey ResponseID` AS survey_Survey_ResponseID,    -- Rename the column from survey
    p.`Order Date` AS OrderDate,                          -- Purchase columns with selected aliases
    p.`Purchase Price Per Unit` AS PurchasePricePerUnit,
    p.`Quantity`,
    p.`Shipping Address State` AS ShippingAddressState,
    p.`Title`,
    p.`ASIN/ISBN (Product Code)` AS ProductCode,
    p.`Category`,
    s.`Q-demos-age` AS Age,                               -- Survey columns with selected aliases
    s.`Q-demos-hispanic` AS Hispanic,
    s.`Q-demos-race` AS Race,
    s.`Q-demos-education` AS Education,
    s.`Q-demos-income` AS Income,
    s.`Q-demos-gender` AS Gender,
    s.`Q-sexual-orientation` AS SexualOrientation,
    s.`Q-demos-state` AS State,
    s.`Q-amazon-use-howmany` AS AmazonUseHowMany,
    s.`Q-amazon-use-hh-size` AS HouseholdSize,
    s.`Q-amazon-use-how-oft` AS AmazonUseFrequency,
    s.`Q-substance-use-cigarettes` AS SubstanceUseCigarettes,
    s.`Q-substance-use-marijuana` AS SubstanceUseMarijuana,
    s.`Q-substance-use-alcohol` AS SubstanceUseAlcohol,
    s.`Q-personal-diabetes` AS PersonalDiabetes,
    s.`Q-personal-wheelchair` AS PersonalWheelchair,
    s.`Q-life-changes` AS LifeChanges,
    s.`Q-sell-YOUR-data` AS SellYourData,
    s.`Q-sell-consumer-data` AS SellConsumerData,
    s.`Q-small-biz-use` AS SmallBizUse,
    s.`Q-census-use` AS CensusUse,
    s.`Q-research-society` AS ResearchSociety
FROM amazon_purchases p
INNER JOIN survey s
ON p.`Survey ResponseID` = s.`Survey ResponseID`;