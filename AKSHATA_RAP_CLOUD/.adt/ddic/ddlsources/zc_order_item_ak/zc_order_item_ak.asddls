@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection For Order Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_ORDER_ITEM_AK
  
  as projection on ZI_ORDER_ITEMS
{
  key OrderId,
    key ItemNo,
    ProductId,
    Quantity,
    @Semantics.amount.currencyCode: 'Currency'
    UnitPrice,
    @Semantics.amount.currencyCode: 'Currency'
    Amount,
    Currency,
    /* Associations */
    _Order :redirected to parent ZC_ORDER_HDRD_AK,
    _Product
}
