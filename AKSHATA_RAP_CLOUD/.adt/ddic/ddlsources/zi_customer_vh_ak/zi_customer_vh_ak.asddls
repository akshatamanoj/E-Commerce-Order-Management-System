@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'F4 Value Help for customer'
@Metadata.ignorePropagatedAnnotations: true
//@ObjectModel.resultSet.sizeCategory: #XS // Changes dropdown behavior if needed
@Search.searchable: true // Enables search bar inside the F4 dialog

define view entity ZI_CUSTOMER_VH_AK
  as select from zak_ec_customer
{
      @UI.lineItem: [{ position: 10, importance: #HIGH }]
      @ObjectModel.text.element: ['CustomerName']
  key customer_id as CustomerId,
 
      @UI.lineItem: [{ position: 20, importance: #HIGH }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      concat_with_space(first_name, last_name, 1) as CustomerName,
 
      @UI.lineItem: [{ position: 30, importance: #MEDIUM }]
      city        as City,
      
      @UI.lineItem: [{ position: 40, importance: #LOW }]
      country     as Country
}
