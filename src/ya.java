import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import com.snapchat.android.model.CashTransaction.a;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class ya
{
  @Inject
  protected qd a;
  @Inject
  protected mz b;
  
  @cgb
  public static CashFeedItem a(@cgb ChatConversation paramChatConversation, int paramInt, boolean paramBoolean)
  {
    Object localObject = new CashTransaction.a(mMyUsername, mTheirUsername, paramInt);
    mFromRain = paramBoolean;
    localObject = ((CashTransaction.a)localObject).a();
    mProvider = ajx.ap();
    long l = paramChatConversation.b(System.currentTimeMillis());
    mCreatedTimestamp = l;
    mUpdatedTimestamp = l;
    paramChatConversation = new CashFeedItem((CashTransaction)localObject);
    mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
    return paramChatConversation;
  }
  
  private qd.a a(@cgb final ChatConversation paramChatConversation, @cgb final CashFeedItem paramCashFeedItem, @cgb final List<CashFeedItem> paramList)
  {
    new qd.a()
    {
      public final void a()
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RETRY SENT cash id[%s] successfully", new Object[] { paramCashFeedItem.d() });
        AnalyticsEvents.m(paramCashFeedItemmCashTransaction.a());
        mz.a(paramCashFeedItem);
        if (paramList.isEmpty())
        {
          ya.a(paramChatConversation);
          return;
        }
        String str = paramCashFeedItemmCashTransaction.mSecurityCode;
        if (!TextUtils.isEmpty(str)) {
          paramListget0mCashTransaction.mSecurityCode = str;
        }
        a(paramChatConversation, paramList);
      }
      
      public final void b()
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RETRY FAILED to SEND cash id[%s]", new Object[] { paramCashFeedItem.d() });
        paramCashFeedItemmSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
        ya.a(paramChatConversation);
      }
    };
  }
  
  public final void a(@cgb final CashFeedItem paramCashFeedItem, @cgb final ya.a parama)
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRM cash id[%s] recipient[%s] amount[%s]", new Object[] { paramCashFeedItem.d(), paramCashFeedItem.Y(), mCashTransaction.a() });
    a.a(paramCashFeedItem, new qd.a()
    {
      public final void a()
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRMED cash id[%s]", new Object[] { paramCashFeedItem.d() });
        parama.a();
      }
      
      public final void b()
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRM CANCELED id[%s]", new Object[] { paramCashFeedItem.d() });
        parama.b();
      }
    });
  }
  
  protected final void a(@cgb final ChatConversation paramChatConversation, @cgb final CashFeedItem paramCashFeedItem)
  {
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager INITIATING cash id[%s]", new Object[] { paramCashFeedItem.d() });
    a.c(paramCashFeedItem, new qd.a()
    {
      public final void a()
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager INITIATED cash id[%s] successfully", new Object[] { paramCashFeedItem.d() });
        ya.a(paramChatConversation);
        AnalyticsEvents.m(paramCashFeedItemmCashTransaction.a());
        mz.a(paramCashFeedItem);
      }
      
      public final void b()
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED to INITIATE cash id[%s]", new Object[] { paramCashFeedItem.d() });
        ya.a(paramChatConversation);
      }
    });
    ban.a().a(new baz(paramCashFeedItem.X(), true));
    ban.a().a(new ben());
  }
  
  public final void a(@cgb final ChatConversation paramChatConversation, @cgb final CashFeedItem paramCashFeedItem, @cgb String paramString, @cgb final ya.b paramb)
  {
    String str2 = paramCashFeedItem.d();
    String str3 = paramCashFeedItem.Y();
    String str4 = mCashTransaction.a();
    if (TextUtils.isEmpty(paramString)) {}
    for (String str1 = paramString;; str1 = paramString.substring(0, Math.min(5, paramString.length())))
    {
      Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SEND cash id[%s] recipient[%s] amount[%s] message[%s]", new Object[] { str2, str3, str4, str1 });
      mCashTransaction.mMessage = paramString;
      if (mIsStub) {
        mIsStub = false;
      }
      a.b(paramCashFeedItem, new qd.a()
      {
        public final void a()
        {
          Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager PRE-INITIATED cash id[%s]", new Object[] { paramCashFeedItem.d() });
          paramCashFeedItemmSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
          paramChatConversation.a(paramCashFeedItem);
          paramChatConversation.u();
          yn.a().a(paramChatConversation, false);
          paramChatConversation.e(false);
          paramb.a();
          a(paramChatConversation, paramCashFeedItem);
        }
        
        public final void b()
        {
          Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SEND CANCELED id[%s]", new Object[] { paramCashFeedItem.d() });
          paramb.b();
          ya.a(paramChatConversation);
        }
      });
      return;
    }
  }
  
  public final void a(@cgb final ChatConversation paramChatConversation, @cgb final CashFeedItem paramCashFeedItem, @cgb final ya.b paramb)
  {
    if (!paramCashFeedItem.O()) {
      throw new RuntimeException("SendingCashManager fetchTransactionStatusAndResolveBlockers should only be called on failed CashFeedItems!");
    }
    paramCashFeedItem.n();
    yn.a().a(paramChatConversation, false);
    if (!mCashTransaction.mIsInFlight)
    {
      Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers RETRIEVING sending cash transaction id[%s]", new Object[] { paramCashFeedItem.d() });
      a.d(paramCashFeedItem, new qd.a()
      {
        public final void a()
        {
          Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FETCHED transaction and resolved blockers id[%s]", new Object[] { paramCashFeedItem.d() });
          AnalyticsEvents.m(paramCashFeedItemmCashTransaction.a());
          mz.a(paramCashFeedItem);
          paramb.a();
          ya.a(paramChatConversation);
        }
        
        public final void b()
        {
          Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FAILED to fetch transaction and/or resolve blockers id[%s]", new Object[] { paramCashFeedItem.d() });
          paramb.b();
          ya.a(paramChatConversation);
        }
      });
      return;
    }
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers RE-INITIATING cash transaction id[%s]", new Object[] { paramCashFeedItem.d() });
    a.c(paramCashFeedItem, new qd.a()
    {
      public final void a()
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RE-INITIATED cash id[%s] successfully", new Object[] { paramCashFeedItem.d() });
        paramb.a();
        ya.a(paramChatConversation);
      }
      
      public final void b()
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED to RE-INITIATE cash id[%s]", new Object[] { paramCashFeedItem.d() });
        paramb.b();
        ya.a(paramChatConversation);
      }
    });
    ban.a().a(new baz(paramCashFeedItem.X(), paramCashFeedItem.d()));
    ban.a().a(new ben());
  }
  
  public final void a(@cgb ChatConversation paramChatConversation, @cgb List<CashFeedItem> paramList)
  {
    CashFeedItem localCashFeedItem;
    if (!paramList.isEmpty())
    {
      localCashFeedItem = (CashFeedItem)paramList.remove(0);
      if (!localCashFeedItem.O()) {
        throw new RuntimeException("SendingCashManager retrySendCash should only be called on failed CashFeedItems!");
      }
      localCashFeedItem.n();
      if (!mCashTransaction.mIsInFlight)
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager retrySendCash RETRIEVING cash transaction id[%s]", new Object[] { localCashFeedItem.d() });
        a.d(localCashFeedItem, a(paramChatConversation, localCashFeedItem, paramList));
      }
    }
    else
    {
      return;
    }
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager retrySendCash RE-INITIATING cash transaction id[%s]", new Object[] { localCashFeedItem.d() });
    a.c(localCashFeedItem, a(paramChatConversation, localCashFeedItem, paramList));
  }
  
  public final void b(@cgb ChatConversation paramChatConversation, @cgb List<CashFeedItem> paramList)
  {
    if (paramList.isEmpty()) {}
    final HashMap localHashMap;
    do
    {
      return;
      localHashMap = new HashMap();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        CashFeedItem localCashFeedItem = (CashFeedItem)paramList.next();
        if ((!localCashFeedItem.h()) && (localCashFeedItem.a(true)))
        {
          CashTransaction.TransactionStatus localTransactionStatus = mCashTransaction.mTransactionStatus;
          if (axi.a(localCashFeedItem)) {
            if (localTransactionStatus == CashTransaction.TransactionStatus.EXPIRED) {
              AnalyticsEvents.s(mCashTransaction.a());
            }
          }
          for (;;)
          {
            localHashMap.put(localCashFeedItem.d(), localCashFeedItem);
            break;
            if (localTransactionStatus == CashTransaction.TransactionStatus.CANCELED)
            {
              AnalyticsEvents.t(mCashTransaction.a());
              continue;
              if (localTransactionStatus == CashTransaction.TransactionStatus.COMPLETED) {
                AnalyticsEvents.q(mCashTransaction.a());
              } else if (localTransactionStatus == CashTransaction.TransactionStatus.RECIPIENT_CANCELED) {
                AnalyticsEvents.r("USER_DETERMINED_INELIGIBLE");
              }
            }
          }
        }
      }
    } while (localHashMap.isEmpty());
    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager mark as viewed %d items", new Object[] { Integer.valueOf(localHashMap.size()) });
    new qp(localHashMap.keySet(), mId, new qp.a()
    {
      private void b()
      {
        Collection localCollection = localHashMap.values();
        Iterator localIterator = localCollection.iterator();
        while (localIterator.hasNext()) {
          ((CashFeedItem)localIterator.next()).a(false);
        }
        CashFeedItemTable.a(SnapchatApplication.b(), localCollection);
      }
      
      public final void a()
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED marking all items as viewed", new Object[0]);
        b();
      }
      
      public final void a(List<String> paramAnonymousList)
      {
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SUCCESS marked as viewed %d items", new Object[] { Integer.valueOf(paramAnonymousList.size()) });
        ArrayList localArrayList = new ArrayList();
        paramAnonymousList = paramAnonymousList.iterator();
        while (paramAnonymousList.hasNext())
        {
          String str = (String)paramAnonymousList.next();
          localArrayList.add(localHashMap.remove(str));
        }
        CashFeedItemTable.a(SnapchatApplication.b(), localArrayList);
        b();
      }
    }).f();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     ya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */