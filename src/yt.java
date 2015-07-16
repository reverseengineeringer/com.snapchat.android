import com.snapchat.android.SnapchatApplication;
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
public class yt
{
  private static final String c = yt.class.getSimpleName();
  @Inject
  protected qx a;
  @Inject
  protected qt b;
  
  @Inject
  public yt()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  protected final void a()
  {
    Iterator localIterator = zi.a().iterator();
    while (localIterator.hasNext())
    {
      final CashFeedItem localCashFeedItem = (CashFeedItem)localIterator.next();
      localCashFeedItem.d();
      String str = mSender;
      mCashTransaction.a();
      b.f(localCashFeedItem, new qt.a()
      {
        public final void a()
        {
          bbo.a().a(new bca(localCashFeedItem.Y()));
        }
        
        public final void b()
        {
          bbo.a().a(new bca(localCashFeedItem.Y()));
        }
      });
    }
  }
  
  public final void a(@chc final CashFeedItem paramCashFeedItem, @chc final yt.a parama)
  {
    if ((mCashTransaction.mTransactionStatus != CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT) && (mCashTransaction.mTransactionStatus != CashTransaction.TransactionStatus.INITIATED)) {
      throw new RuntimeException("ReceivingCashManager resolveBlockers should only be called on INITIATED or WAITING_ON_RECIPIENT CashFeedItems!");
    }
    paramCashFeedItem.d();
    String str = mSender;
    mCashTransaction.a();
    mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.RECEIVING;
    bbo.a().a(new bca(paramCashFeedItem.Y(), paramCashFeedItem.d()));
    b.e(paramCashFeedItem, new qt.a()
    {
      public final void a()
      {
        yt.b();
        paramCashFeedItem.d();
        String str = paramCashFeedItemmSender;
        paramCashFeedItemmCashTransaction.a();
        yt.this.a();
        bbo.a().a(new bca(paramCashFeedItem.Y(), paramCashFeedItem.d()));
        parama.a();
      }
      
      public final void b()
      {
        yt.b();
        paramCashFeedItem.d();
        String str = paramCashFeedItemmSender;
        paramCashFeedItemmCashTransaction.a();
        bbo.a().a(new bca(paramCashFeedItem.Y(), paramCashFeedItem.d()));
        parama.b();
      }
    });
  }
  
  @awj
  public final void a(@chc List<CashFeedItem> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      CashFeedItem localCashFeedItem = (CashFeedItem)paramList.next();
      if ((mSendReceiveStatus == StatefulChatFeedItem.SendReceiveStatus.RECEIVED) && (mCashTransaction.mTransactionStatus == CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT) && (a.b(mCashTransaction.mProvider)))
      {
        localCashFeedItem.d();
        Object localObject = mSender;
        mCashTransaction.a();
        localObject = a.a(mCashTransaction.mProvider);
        if (localObject != null) {
          ((re)localObject).a(localCashFeedItem);
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
 * Qualified Name:     yt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */