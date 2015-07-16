import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class si$1
  implements ta
{
  si$1(si paramsi, CashTransaction paramCashTransaction) {}
  
  public final void a(int paramInt)
  {
    List localList = td.a(this$0, paramInt);
    if (localList != null)
    {
      this$0.b(localList, true);
      return;
    }
    this$0.b(null, false);
  }
  
  public final void a(@chc CashPayment paramCashPayment)
  {
    val$transaction.a(td.a(mState, mCancellationReason));
    Object localObject = null;
    tq localtq = mBlockers;
    paramCashPayment = (CashPayment)localObject;
    if (localtq != null) {
      paramCashPayment = localtq.b();
    }
    if ((paramCashPayment != null) && (!paramCashPayment.isEmpty()))
    {
      this$0.a(paramCashPayment, true);
      return;
    }
    this$0.a();
  }
}

/* Location:
 * Qualified Name:     si.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */