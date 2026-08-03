@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Interface View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CUSTOMERD as select from zcustomer_data
{
     key customer_id,
      customer_name,
      email,
      phone,
      city,
      country
}
