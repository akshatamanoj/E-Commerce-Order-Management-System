@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_CUSTOMERSD
  as select from zak_ec_customer  
  
  association [0..*] to ZI_ORDER_HDRS as _Orders
    on $projection.CustomerId = _Orders.CustomerId
 

{
    
  key customer_id as CustomerId,
      first_name  as FirstName,
      last_name   as LastName,
      email       as Email,
      phone       as Phone,
      street      as Street,
      city        as City,
      state       as State,
      country     as Country,
      postal_code as PostalCode,
      created_by  as CreatedBy,
      created_at  as CreatedAt,
      changed_by  as ChangedBy,
      changed_at  as ChangedAt,
      _Orders
     
}
