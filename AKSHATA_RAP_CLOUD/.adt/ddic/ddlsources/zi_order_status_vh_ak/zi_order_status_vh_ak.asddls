@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Order Status'
@Metadata.ignorePropagatedAnnotations: true
 
define view entity ZI_ORDER_STATUS_VH_AK
  as select from I_Language
{
  @ObjectModel.text.element: ['StatusText']
  key cast( 'CREATED' as abap.char(20) ) as OrderStatus,
  cast( 'Created' as abap.char(20) )     as StatusText
}
where Language = 'E'
 
union all
 
select from I_Language
{
  key cast( 'CONFIRMED' as abap.char(20) ) as OrderStatus,
  cast( 'Confirmed' as abap.char(20) )     as StatusText
}
where Language = 'E'
 
union all
 
select from I_Language
{
  key cast( 'ACCEPTED' as abap.char(20) ) as OrderStatus,
  cast( 'Accepted' as abap.char(20) )     as StatusText
}
where Language = 'E'
 
union all
 
select from I_Language
{
  key cast( 'CANCELLED' as abap.char(20) ) as OrderStatus,
  cast( 'Cancelled' as abap.char(20) )     as StatusText
}
where Language = 'E'
 
union all
 
select from I_Language
{
  key cast( 'SHIPPED' as abap.char(20) ) as OrderStatus,
  cast( 'Shipped' as abap.char(20) )     as StatusText
}
where Language = 'E'
 
union all
 
select from I_Language
{
  key cast( 'DELIVERED' as abap.char(20) ) as OrderStatus,
  cast( 'Delivered' as abap.char(20) )     as StatusText
}
where Language = 'E';
 
 
 
