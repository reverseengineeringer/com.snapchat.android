import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.CashUtils.CurrencyCode;

@ud
final class rk$a
  extends qc
{
  @SerializedName("amount")
  final int amount = rk.b(this$0);
  @SerializedName("currency_code")
  final String currencyCode = rk.c(this$0).name();
  @SerializedName("rain")
  final boolean isRain = rk.e(this$0);
  @SerializedName("message")
  final String message = rk.d(this$0);
  @SerializedName("recipient")
  final String recipient = rk.a(this$0);
  
  rk$a(rk paramrk) {}
}

/* Location:
 * Qualified Name:     rk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */