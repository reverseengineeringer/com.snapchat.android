import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

final class rs$1
  implements sk
{
  rs$1(rs paramrs, CashTransaction paramCashTransaction) {}
  
  public final void a(int paramInt)
  {
    List localList = sn.a(this$0, paramInt);
    if (localList != null)
    {
      this$0.b(localList, true);
      return;
    }
    this$0.b(null, false);
  }
  
  public final void a(@cgb CashPayment paramCashPayment)
  {
    val$transaction.a(sn.a(mState, mCancellationReason));
    Object localObject = null;
    ta localta = mBlockers;
    paramCashPayment = (CashPayment)localObject;
    if (localta != null) {
      paramCashPayment = localta.b();
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
 * Qualified Name:     rs.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */