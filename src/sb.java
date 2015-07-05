import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.model.CashTransaction;

public final class sb
  extends sq
  implements ts.b<CashPayment>
{
  private static final String TAG = "DeleteCashPaymentTask";
  private final CashTransaction mCashTransaction;
  
  public sb(@cgb CashTransaction paramCashTransaction)
  {
    a(CashPayment.class, this);
    mCashTransaction = paramCashTransaction;
  }
  
  public final Object b()
  {
    return null;
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.DELETE;
  }
  
  public final String e()
  {
    return "cash/payments/" + mCashTransaction.mTransactionId;
  }
}

/* Location:
 * Qualified Name:     sb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */