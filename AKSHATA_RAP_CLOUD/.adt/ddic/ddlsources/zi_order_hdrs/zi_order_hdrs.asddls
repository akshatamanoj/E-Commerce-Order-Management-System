@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_ORDER_HDRS
  as select from zak_ec_order_hdr

  association [1..1] to ZI_CUSTOMERSD  as _Customer 
  on $projection.CustomerId = _Customer.CustomerId

  composition [0..*] of ZI_ORDER_ITEMS as _Items

  association [0..*] to ZI_PAYMENTS    as _Payment  
  on $projection.OrderId = _Payment.OrderId

  association [0..*] to ZI_SHIPPINGS   as _Shipping 
  on $projection.OrderId = _Shipping.OrderId

{
  key order_id        as OrderId,
      customer_id     as CustomerId,
      order_date      as OrderDate,
      @Semantics.amount.currencyCode: 'Currency'
      total_amount    as TotalAmount,
      currency        as Currency,
      order_status    as OrderStatus,
      payment_status  as PaymentStatus,
      shipping_status as ShippingStatus,
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      changed_by      as ChangedBy,
      changed_at      as ChangedAt,

      _Customer,
      _Items,
      _Payment,
      _Shipping
      

}
