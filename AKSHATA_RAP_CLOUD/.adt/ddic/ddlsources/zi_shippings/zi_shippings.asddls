@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Shipping'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_SHIPPINGS
  as select from zak_ec_shipping

  association [1..1] to ZI_ORDER_HDRS as _Order
    on $projection.OrderId = _Order.OrderId

{
  key shipment_id     as ShipmentId,
      order_id        as OrderId,
      courier_name    as CourierName,
      tracking_number as TrackingNumber,
      shipped_date    as ShippedDate,
      delivery_date   as DeliveryDate,
      shipping_status as ShippingStatus,

      _Order
}
