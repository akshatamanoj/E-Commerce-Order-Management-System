@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Item Projection'

define view entity ZC_ORDER_ITEMD
  as projection on ZI_ORDER_ITEMD
{
    key order_id,
    key item_id,

        product_id,
        quantity,
        unit_price,
        net_amount,
        currency,
        item_status
}
