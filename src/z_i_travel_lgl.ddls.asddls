@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Root Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_TRAVEL_LGL
  provider contract transactional_interface
  as projection on Z_R_TRAVEL_LGL
{
  key TravelUUid,
      TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _Agency,
      _Currency,
      _Customer,
      _OverallStatus
}
