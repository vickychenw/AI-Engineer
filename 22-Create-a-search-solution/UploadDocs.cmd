@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=2cc17197-d83e-4c0f-9b67-9bae2ab52e45
set azure_storage_account=ai102form2677419970
set azure_storage_key=NmG5WL/FWU81S42OqBuhhK7ExaPwN0l2M8WPfOaokp/7wd0RjIgU+TXNoLQivNU8lHfl0bCT6/bNBhlBEF2MAw==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
