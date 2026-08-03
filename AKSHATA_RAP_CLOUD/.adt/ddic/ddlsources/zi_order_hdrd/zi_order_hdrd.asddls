@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Header Root View'

define root view entity ZI_ORDER_HDRD
  as select from zorder_hdrs

  association [1..1] to ZI_CUSTOMERD as _Customer
    on $projection.customer_id = _Customer.customer_id

  association [0..*] to ZI_ORDER_ITEMD as _Items
    on $projection.order_id = _Items.order_id

{
  key order_id,

      order_no,
      customer_id,
      order_date,
      overall_status,
      shipping_status,

      @Semantics.amount.currencyCode: 'currency'
      total_amount,

      currency,

      _Customer,
      _Items
}
