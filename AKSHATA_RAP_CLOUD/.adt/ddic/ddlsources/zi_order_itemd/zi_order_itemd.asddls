@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Item Interface View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_ORDER_ITEMD
  as select from zorder_itm

  association to parent ZI_ORDER_HDRD as _Header
    on $projection.order_id = _Header.order_id

{
  key order_id,
  key item_id,

      product_id,
      quantity,

      @Semantics.amount.currencyCode: 'currency'
      unit_price,

      @Semantics.amount.currencyCode: 'currency'
      net_amount,

      currency,
      item_status,

      _Header
}
