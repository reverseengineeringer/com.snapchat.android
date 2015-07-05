import com.snapchat.android.api2.cash.square.data.CashPayment;

public abstract class sl
  extends sq
  implements ts.b<CashPayment>
{
  private static final String TAG = "SquareCashPaymentTask";
  private final sk mCallback;
  
  protected sl(@cgb sk paramsk)
  {
    mCallback = paramsk;
    a(CashPayment.class, this);
  }
}

/* Location:
 * Qualified Name:     sl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */