@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Root Interface'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity Z_C_TRAVEL_LGL
  provider contract transactional_query
  as projection on Z_R_TRAVEL_LGL

{
  key TravelUUid,
      TravelID,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @ObjectModel.text.element: [ 'AgencyName']
      AgencyID,
      _Agency.Name       as AgencyName,


      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @ObjectModel.text.element: [ 'CustomerName']
      CustomerID,
      _Customer.LastName as CustomerName,

      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,
      
      @ObjectModel.text.element: [ 'OverallStatusText']
      OverallStatus,
      _OverallStatus._Text.Text as OverallStatusText : localized,

      //Local ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,


      //total ETag
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _Agency,
      _Currency,
      _Customer,
      _OverallStatus
}
