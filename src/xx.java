import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class xx
{
  private static final String c = xx.class.getSimpleName();
  @Inject
  protected qh a;
  @Inject
  protected qd b;
  
  @Inject
  public xx()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  protected final void a()
  {
    Iterator localIterator = ym.b().iterator();
    while (localIterator.hasNext())
    {
      final CashFeedItem localCashFeedItem = (CashFeedItem)localIterator.next();
      Timber.b(c, "CASH-LOG: UPDATING pending received cash id[%s] sender[%s] amount[%s]", new Object[] { localCashFeedItem.d(), mSender, mCashTransaction.a() });
      b.f(localCashFeedItem, new qd.a()
      {
        public final void a()
        {
          ban.a().a(new baz(localCashFeedItem.X()));
        }
        
        public final void b()
        {
          ban.a().a(new baz(localCashFeedItem.X()));
        }
      });
    }
  }
  
  public final void a(@cgb final CashFeedItem paramCashFeedItem, @cgb final xx.a parama)
  {
    if ((mCashTransaction.mTransactionStatus != CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT) && (mCashTransaction.mTransactionStatus != CashTransaction.TransactionStatus.INITIATED)) {
      throw new RuntimeException("ReceivingCashManager resolveBlockers should only be called on INITIATED or WAITING_ON_RECIPIENT CashFeedItems!");
    }
    Timber.b(c, "CASH-LOG: ReceivingCashManager RESOLVE blockers id[%s] sender[%s] amount[%s]", new Object[] { paramCashFeedItem.d(), mSender, mCashTransaction.a() });
    mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.RECEIVING;
    ban.a().a(new baz(paramCashFeedItem.X(), paramCashFeedItem.d()));
    b.e(paramCashFeedItem, new qd.a()
    {
      public final void a()
      {
        Timber.b(xx.b(), "CASH-LOG: ReceivingCashManager SUCCESS RESOLVED blockers id[%s], sender[%s] amount[%s]", new Object[] { paramCashFeedItem.d(), paramCashFeedItemmSender, paramCashFeedItemmCashTransaction.a() });
        xx.this.a();
        ban.a().a(new baz(paramCashFeedItem.X(), paramCashFeedItem.d()));
        parama.a();
      }
      
      public final void b()
      {
        Timber.b(xx.b(), "CASH-LOG: ReceivingCashManager CANCELED RESOLVED blockers id[%s], sender[%s] amount[%s]", new Object[] { paramCashFeedItem.d(), paramCashFeedItemmSender, paramCashFeedItemmCashTransaction.a() });
        ban.a().a(new baz(paramCashFeedItem.X(), paramCashFeedItem.d()));
        parama.b();
      }
    });
  }
  
  public final void a(@cgb List<CashFeedItem> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      CashFeedItem localCashFeedItem = (CashFeedItem)paramList.next();
      if ((mSendReceiveStatus == StatefulChatFeedItem.SendReceiveStatus.RECEIVED) && (mCashTransaction.mTransactionStatus == CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT) && (a.b(mCashTransaction.mProvider)))
      {
        Timber.b(c, "CASH-LOG: DELETING pending received cash id[%s] sender[%s] amount[%s]", new Object[] { localCashFeedItem.d(), mSender, mCashTransaction.a() });
        qo localqo = a.a(mCashTransaction.mProvider);
        if (localqo != null) {
          localqo.a(localCashFeedItem);
        }
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     xx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */