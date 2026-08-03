@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_ORDER_ITEMS
  as select from zak_ec_order_itm

  association to parent ZI_ORDER_HDRS as _Order
    on $projection.OrderId = _Order.OrderId

  association [1..1] to ZI_PRODUCTSD as _Product
    on $projection.ProductId = _Product.ProductId

{
  key order_id   as OrderId,
  key item_no    as ItemNo,
      product_id as ProductId,
      quantity   as Quantity,
      @Semantics.amount.currencyCode: 'Currency'
      unit_price as UnitPrice,
      @Semantics.amount.currencyCode: 'Currency'
      amount     as Amount,
      currency   as Currency,

      _Order,
      _Product
}
