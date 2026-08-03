@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_PRODUCTSD
  as select from zak_ec_product
  
  association [0..*] to ZI_ORDER_ITEMS as _OrderItems

    on $projection.ProductId = _OrderItems.ProductId

{
  key product_id     as ProductId,
      product_name   as ProductName,
      category       as Category,
      description    as Description,
      @Semantics.amount.currencyCode: 'Currency'
      unit_price     as UnitPrice,
      currency       as Currency,
      stock_quantity as StockQuantity,
      created_by     as CreatedBy,
      created_at     as CreatedAt,
      changed_by     as ChangedBy,
      changed_at     as ChangedAt,
      _OrderItems

}
