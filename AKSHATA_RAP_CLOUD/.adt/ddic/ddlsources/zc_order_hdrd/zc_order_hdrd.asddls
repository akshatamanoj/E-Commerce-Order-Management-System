@EndUserText.label: 'Order Header Projection'

define root view entity ZC_ORDER_HDRD
  provider contract transactional_query
  as projection on ZI_ORDER_HDRD
{
  key order_id,

      order_no,
      customer_id,
      order_date,
      overall_status,
      shipping_status,
      total_amount,
      currency,

      _Customer,
      _Items
}
