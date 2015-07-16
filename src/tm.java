import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.square.data.CashCustomer;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import java.util.List;

public class tm
{
  @SerializedName("blockers")
  @chd
  private tq mBlockers;
  @SerializedName("card_summary")
  @chd
  public tl mCardSummary;
  @SerializedName("customer")
  @chd
  public CashCustomer mCustomer;
  @SerializedName("number_of_payments")
  public int mNumberOfPayments = 0;
  @SerializedName("passcode_confirmation_enabled")
  public boolean mPasswordConfirmationEnabled;
  @SerializedName("payments")
  @chd
  private List<CashPayment> mPayments;
}

/* Location:
 * Qualified Name:     tm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */