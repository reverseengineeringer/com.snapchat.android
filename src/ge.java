import java.util.HashMap;
import java.util.Map;

public final class ge
  extends ml
{
  public Double cashAmount;
  public String cashCurrency;
  private final String eventName = "CASH_PAYMENT_SENT";
  
  public final Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", "CASH_PAYMENT_SENT");
    if (cashAmount != null) {
      localHashMap.put("cash_amount", cashAmount);
    }
    if (cashCurrency != null) {
      localHashMap.put("cash_currency", cashCurrency);
    }
    localHashMap.putAll(super.a());
    return localHashMap;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      if (!super.equals(paramObject)) {
        return false;
      }
      paramObject = (ge)paramObject;
      if (cashAmount != null)
      {
        if (cashAmount.equals(cashAmount)) {}
      }
      else {
        while (cashAmount != null) {
          return false;
        }
      }
      if (cashCurrency == null) {
        break;
      }
    } while (cashCurrency.equals(cashCurrency));
    for (;;)
    {
      return false;
      if (cashCurrency == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    if (cashAmount != null) {}
    for (int i = cashAmount.hashCode();; i = 0)
    {
      if (cashCurrency != null) {
        j = cashCurrency.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
}

/* Location:
 * Qualified Name:     ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */