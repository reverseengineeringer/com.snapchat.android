import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.square.data.CardStatus;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.Iterator;
import java.util.List;

final class sd$1
  implements ta
{
  sd$1(sd paramsd, CashTransaction paramCashTransaction) {}
  
  public final void a(int paramInt)
  {
    List localList = td.a(this$0, paramInt);
    if (localList != null)
    {
      sd.b(this$0, localList);
      return;
    }
    AnalyticsEvents.a("SQUARE_INITIATE_PAYMENT_FAILED", paramInt);
    qw.a(2131493290, new Object[0]);
    sd.c(this$0);
  }
  
  public final void a(@chc CashPayment paramCashPayment)
  {
    mState.name();
    Object localObject = td.a(mState, mCancellationReason);
    val$transaction.a((CashTransaction.TransactionStatus)localObject);
    if (mState == CashPayment.State.CANCELED)
    {
      td.a(mCancellationReason);
      if (localObject == CashTransaction.TransactionStatus.SENDER_CANCELED)
      {
        sd.a(this$0);
        return;
      }
      sd.b(this$0);
      return;
    }
    tq localtq = mBlockers;
    if (localtq != null)
    {
      localObject = localtq.b();
      Iterator localIterator = ((List)localObject).iterator();
      do
      {
        paramCashPayment = (CashPayment)localObject;
        if (!localIterator.hasNext()) {
          break;
        }
        paramCashPayment = (rl)localIterator.next();
      } while (!(paramCashPayment instanceof rz));
      paramCashPayment = aut.a(paramCashPayment);
      sd.a(this$0, paramCashPayment);
      return;
    }
    paramCashPayment = null;
    if (paramCashPayment != null)
    {
      localObject = paramCashPayment.iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
      } while (((rl)((Iterator)localObject).next()).d());
    }
    for (boolean bool = false;; bool = true)
    {
      sd.a(this$0, paramCashPayment, bool);
      if (localtq == null) {
        break;
      }
      paramCashPayment = mCardBlocker;
      if ((paramCashPayment == null) || (mCardStatus != CardStatus.EXPIRED)) {
        break;
      }
      AnalyticsEvents.m("CARD_EXPIRED");
      qw.a(2131493286, new Object[0]);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     sd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */