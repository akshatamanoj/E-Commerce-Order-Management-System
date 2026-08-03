@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Payment'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_PAYMENTS
  as select from zak_ec_payment

  association [1..1] to ZI_ORDER_HDRS as _Order
    on $projection.OrderId = _Order.OrderId

{
  key payment_id     as PaymentId,
      order_id       as OrderId,
      payment_method as PaymentMethod,
      payment_status as PaymentStatus,
      @Semantics.amount.currencyCode: 'Currency'
      amount         as Amount,
      currency       as Currency,

      _Order
}
