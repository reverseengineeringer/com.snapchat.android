import com.snapchat.android.api2.cash.square.data.CashPayment;

public abstract class tb
  extends tg
  implements ui.b<CashPayment>
{
  private static final String TAG = "SquareCashPaymentTask";
  private final ta mCallback;
  
  protected tb(@chc ta paramta)
  {
    mCallback = paramta;
    registerCallback(CashPayment.class, this);
  }
}

/* Location:
 * Qualified Name:     tb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */