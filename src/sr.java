import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.model.CashTransaction;

public final class sr
  extends tg
  implements ui.b<CashPayment>
{
  private static final String TAG = "DeleteCashPaymentTask";
  private final CashTransaction mCashTransaction;
  
  public sr(@chc CashTransaction paramCashTransaction)
  {
    registerCallback(CashPayment.class, this);
    mCashTransaction = paramCashTransaction;
  }
  
  public final String a()
  {
    return "cash/payments/" + mCashTransaction.mTransactionId;
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.DELETE;
  }
  
  public final Object getRequestPayload()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     sr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */