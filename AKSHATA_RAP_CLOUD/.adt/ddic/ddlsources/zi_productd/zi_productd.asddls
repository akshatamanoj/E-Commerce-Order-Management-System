@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Interface View'

define view entity ZI_PRODUCTD
  as select from zproduct_data
{
  key product_id,
      product_name,
      category,

      @Semantics.amount.currencyCode: 'currency'
      unit_price,

      currency,
      stock_qty,
      reorder_level
}
