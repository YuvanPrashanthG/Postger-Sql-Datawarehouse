/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

drop table if exists bronz_layer.crm_cust_info;
create table bronz_layer.crm_cust_info(
	cst_id int,
	cst_key varchar(50),
	cst_firstname varchar(50),
	cst_lastname varchar(50),
	cst_marital_status varchar(50),
	cut_gndr varchar(50),
	cst_create_date date
);
drop table if exists bronz_layer.crm_prd_info;
create table bronz_layer.crm_prd_info(
	prd_id int,
	prd_key varchar(50),
	prd_nm varchar(50),
	prd_cost int,
	prd_line varchar(50),
	prd_start_dt date,
	prd_end_dt date
);
drop table if exists bronz_layer.crm_salse_details;
create table bronz_layer.crm_salse_details(
	sls_ord_num varchar(50),
	sls_prd_key varchar(50),
	sls_cust_id int,
	sls_order_dt int,
	sls_ship_dt int,
	sls_due_dt int,
	sls_sales int,
	sls_quantity int,
	sls_price int
);
drop table if exists bronz_layer.erp_cust_az12;
create table bronz_layer.erp_cust_az12(
	cid varchar(50),
	bdate date,
	gen varchar(50)
);
drop table if exists bronz_layer.erp_loc_a101;
create table bronz_layer.erp_loc_a101(
	cid varchar(50),
	cntry varchar(50)
);
drop table if exists bronz_layer.erp_px_cat_g1v2;
create table bronz_layer.erp_px_cat_g1v2(
	id varchar(50),
	cat varchar(50),
	subcat varchar(50),
	maintenance varchar(50)
);
