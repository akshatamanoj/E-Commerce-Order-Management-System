@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'F4 Value Help for Order ID'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_ORDER_ID_VH_AK as select from zak_ec_order_hdr
{
    @UI.lineItem: [{ position: 10 }]
      key order_id     as OrderId,
 
      @UI.lineItem: [{ position: 20 }]
      order_date   as OrderDate,
 
      @UI.lineItem: [{ position: 30 }]
      @Semantics.amount.currencyCode: 'Currency'
      total_amount as TotalAmount,
      
      @UI.lineItem: [{ position: 40 }]
      currency as Currency
}
