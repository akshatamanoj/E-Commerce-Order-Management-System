@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection For Order Header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@UI.headerInfo: {typeName: 'Order',
                 typeNamePlural: 'Orders',
                 title: { value: 'OrderId' }
                 }

define root view entity ZC_ORDER_HDRD_AK
  provider contract transactional_query
  as projection on ZI_ORDER_HDRS
{

      @UI.lineItem: [{ position: 10 }]
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZI_ORDER_ID_VH_ak', element: 'OrderId' }
      }]
  key OrderId,
      @UI.lineItem: [{ position: 20 }]
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZI_CUSTOMER_VH_AK', element: 'CustomerId' }
      }]
      CustomerId,
      @UI.lineItem: [{ position: 30 }]
      @Consumption.filter: { selectionType: #INTERVAL,
                             multipleSelections: false }
      OrderDate,
      @Semantics.amount.currencyCode: 'Currency'
      TotalAmount,
      Currency,

      @UI.lineItem: [{ position: 40 }]
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZI_ORDER_STATUS_VH_AK', element: 'OrderStatus' }
      }]
      OrderStatus,
      PaymentStatus,
      ShippingStatus,
      CreatedBy,
      CreatedAt,
      ChangedBy,
      ChangedAt,
      /* Associations */
      _Customer,
      _Items : redirected to composition child ZC_ORDER_ITEM_AK,
      _Payment,
      _Shipping
}
