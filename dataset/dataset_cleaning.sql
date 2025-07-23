-- data cleaning and processing

-- feedback table
alter table feedback_data 
modify column return_date DATE;

describe feedback_data;

-- sales table
alter table sales_data
modify column sales_date DATE;

describe sales_data;