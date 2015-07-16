import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.CashUtils.CurrencyCode;

public final class tp
{
  @SerializedName("amount")
  private final int mAmount;
  @SerializedName("currency_code")
  @chc
  private final String mCurrencyCode = CashUtils.CurrencyCode.USD.name();
  
  public tp(int paramInt)
  {
    mAmount = paramInt;
  }
}

/* Location:
 * Qualified Name:     tp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */