import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CardStatus;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public final class sd
  extends rl
{
  private static final String TAG = "SQInitiatePaymentBlocker";
  @Inject
  protected yn mCashCardManager;
  @Inject
  protected qw mCashErrorReporter;
  @Inject
  protected td mSquareProvider;
  
  public sd()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@chc final CashTransaction paramCashTransaction)
  {
    if (mCashCardManager.a() == null)
    {
      paramCashTransaction = new ArrayList();
      paramCashTransaction.add(new rx());
      b(paramCashTransaction, true);
      return;
    }
    new ss(paramCashTransaction, mCashCardManager.a(), new ta()
    {
      public final void a(int paramAnonymousInt)
      {
        List localList = td.a(sd.this, paramAnonymousInt);
        if (localList != null)
        {
          sd.b(sd.this, localList);
          return;
        }
        AnalyticsEvents.a("SQUARE_INITIATE_PAYMENT_FAILED", paramAnonymousInt);
        qw.a(2131493290, new Object[0]);
        sd.c(sd.this);
      }
      
      public final void a(@chc CashPayment paramAnonymousCashPayment)
      {
        mState.name();
        Object localObject = td.a(mState, mCancellationReason);
        paramCashTransaction.a((CashTransaction.TransactionStatus)localObject);
        if (mState == CashPayment.State.CANCELED)
        {
          td.a(mCancellationReason);
          if (localObject == CashTransaction.TransactionStatus.SENDER_CANCELED)
          {
            sd.a(sd.this);
            return;
          }
          sd.b(sd.this);
          return;
        }
        tq localtq = mBlockers;
        if (localtq != null)
        {
          localObject = localtq.b();
          Iterator localIterator = ((List)localObject).iterator();
          do
          {
            paramAnonymousCashPayment = (CashPayment)localObject;
            if (!localIterator.hasNext()) {
              break;
            }
            paramAnonymousCashPayment = (rl)localIterator.next();
          } while (!(paramAnonymousCashPayment instanceof rz));
          paramAnonymousCashPayment = aut.a(paramAnonymousCashPayment);
          sd.a(sd.this, paramAnonymousCashPayment);
          return;
        }
        paramAnonymousCashPayment = null;
        if (paramAnonymousCashPayment != null)
        {
          localObject = paramAnonymousCashPayment.iterator();
          do
          {
            if (!((Iterator)localObject).hasNext()) {
              break;
            }
          } while (((rl)((Iterator)localObject).next()).d());
        }
        for (boolean bool = false;; bool = true)
        {
          sd.a(sd.this, paramAnonymousCashPayment, bool);
          if (localtq == null) {
            break;
          }
          paramAnonymousCashPayment = mCardBlocker;
          if ((paramAnonymousCashPayment == null) || (mCardStatus != CardStatus.EXPIRED)) {
            break;
          }
          AnalyticsEvents.m("CARD_EXPIRED");
          qw.a(2131493286, new Object[0]);
          return;
        }
      }
    }).execute();
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_INITIATE_PAYMENT_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     sd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */