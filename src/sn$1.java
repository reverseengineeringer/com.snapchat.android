import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;
import java.util.List;

final class sn$1
  implements ta
{
  sn$1(sn paramsn, CashTransaction paramCashTransaction) {}
  
  public final void a(int paramInt)
  {
    String str = val$transaction.mTransactionId;
    this$0.a(null, false);
  }
  
  public final void a(@chc CashPayment paramCashPayment)
  {
    List localList = null;
    tq localtq = mBlockers;
    if (localtq != null) {
      localList = localtq.b();
    }
    val$transaction.a(td.a(mState, mCancellationReason));
    this$0.a(localList, false);
    bbo.a().a(new bca(val$transaction.mConversationId, val$transaction.mTransactionId));
  }
}

/* Location:
 * Qualified Name:     sn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */