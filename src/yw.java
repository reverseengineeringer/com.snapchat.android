import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.app.feature.messaging.feed.model.FeedIconChangeType;
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
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class yw
{
  private static Map<String, Map<String, CashFeedItem>> c = new HashMap();
  @Inject
  protected qt a;
  @Inject
  protected nq b;
  
  @chc
  public static CashFeedItem a(@chc ChatConversation paramChatConversation, int paramInt, boolean paramBoolean)
  {
    Object localObject = new CashTransaction.a(mMyUsername, mTheirUsername, paramInt);
    mFromRain = paramBoolean;
    localObject = ((CashTransaction.a)localObject).a();
    mProvider = akr.ao();
    long l = paramChatConversation.b(System.currentTimeMillis());
    mCreatedTimestamp = l;
    mUpdatedTimestamp = l;
    paramChatConversation = new CashFeedItem((CashTransaction)localObject);
    mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
    return paramChatConversation;
  }
  
  private qt.a a(@chc final ChatConversation paramChatConversation, @chc final CashFeedItem paramCashFeedItem, @chc final List<CashFeedItem> paramList)
  {
    new qt.a()
    {
      public final void a()
      {
        paramCashFeedItem.d();
        AnalyticsEvents.l(paramCashFeedItemmCashTransaction.a());
        Object localObject = b;
        nq.a(paramCashFeedItem);
        if (paramList.isEmpty())
        {
          paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.SENT);
          bbo.a().a(new bca(paramChatConversationmId));
          return;
        }
        localObject = paramCashFeedItemmCashTransaction.mSecurityCode;
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          paramListget0mCashTransaction.mSecurityCode = ((String)localObject);
        }
        a(paramChatConversation, paramList);
      }
      
      public final void b()
      {
        paramCashFeedItem.d();
        paramCashFeedItemmSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
        paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.FAILED_TO_SEND);
        bbo.a().a(new bca(paramChatConversationmId));
      }
    };
  }
  
  public static void a(String paramString, List<CashFeedItem> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    Object localObject = (Map)c.get(paramString);
    if (localObject == null) {
      localObject = new HashMap();
    }
    for (;;)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        CashFeedItem localCashFeedItem = (CashFeedItem)paramList.next();
        ((Map)localObject).put(localCashFeedItem.d(), localCashFeedItem);
      }
      c.put(paramString, localObject);
      return;
    }
  }
  
  public final void a(@chc final CashFeedItem paramCashFeedItem, @chc final yw.a parama)
  {
    paramCashFeedItem.d();
    paramCashFeedItem.Z();
    mCashTransaction.a();
    a.a(paramCashFeedItem, new qt.a()
    {
      public final void a()
      {
        paramCashFeedItem.d();
        parama.a();
      }
      
      public final void b()
      {
        paramCashFeedItem.d();
        parama.b();
      }
    });
  }
  
  protected final void a(@chc final ChatConversation paramChatConversation, @chc final CashFeedItem paramCashFeedItem)
  {
    paramCashFeedItem.d();
    a.c(paramCashFeedItem, new qt.a()
    {
      public final void a()
      {
        paramCashFeedItem.d();
        paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.SENT);
        bbo.a().a(new bca(paramChatConversationmId));
        AnalyticsEvents.l(paramCashFeedItemmCashTransaction.a());
        nq localnq = b;
        nq.a(paramCashFeedItem);
      }
      
      public final void b()
      {
        paramCashFeedItem.d();
        paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.FAILED_TO_SEND);
        bbo.a().a(new bca(paramChatConversationmId));
      }
    });
    paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.SENDING);
    bbo.a().a(new bca(paramCashFeedItem.Y(), true));
  }
  
  public final void a(@chc final ChatConversation paramChatConversation, @chc final CashFeedItem paramCashFeedItem, @chc String paramString, @chc final yw.b paramb)
  {
    paramCashFeedItem.d();
    paramCashFeedItem.Z();
    mCashTransaction.a();
    if (TextUtils.isEmpty(paramString)) {}
    for (String str = paramString;; str = paramString.substring(0, Math.min(5, paramString.length())))
    {
      mCashTransaction.mMessage = paramString;
      if (mIsStub) {
        mIsStub = false;
      }
      a.b(paramCashFeedItem, new qt.a()
      {
        public final void a()
        {
          paramCashFeedItem.d();
          paramCashFeedItemmSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
          paramChatConversation.a(paramCashFeedItem);
          paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.SENDING);
          paramChatConversation.v();
          paramChatConversation.e(false);
          paramb.a();
          a(paramChatConversation, paramCashFeedItem);
        }
        
        public final void b()
        {
          paramCashFeedItem.d();
          paramb.b();
          paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.FAILED_TO_SEND);
          bbo.a().a(new bca(paramChatConversationmId));
        }
      });
      return;
    }
  }
  
  public final void a(@chc final ChatConversation paramChatConversation, @chc final CashFeedItem paramCashFeedItem, @chc final yw.b paramb)
  {
    if (!paramCashFeedItem.P()) {
      throw new RuntimeException("SendingCashManager fetchTransactionStatusAndResolveBlockers should only be called on failed CashFeedItems!");
    }
    paramCashFeedItem.o();
    paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.SENDING);
    if (!mCashTransaction.mIsInFlight)
    {
      paramCashFeedItem.d();
      a.d(paramCashFeedItem, new qt.a()
      {
        public final void a()
        {
          paramCashFeedItem.d();
          AnalyticsEvents.l(paramCashFeedItemmCashTransaction.a());
          nq localnq = b;
          nq.a(paramCashFeedItem);
          paramb.a();
          paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.SENDING);
          bbo.a().a(new bca(paramChatConversationmId));
        }
        
        public final void b()
        {
          paramCashFeedItem.d();
          paramb.b();
          paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.FAILED_TO_SEND);
          bbo.a().a(new bca(paramChatConversationmId));
        }
      });
      return;
    }
    paramCashFeedItem.d();
    a.c(paramCashFeedItem, new qt.a()
    {
      public final void a()
      {
        paramCashFeedItem.d();
        paramb.a();
        paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.SENDING);
        bbo.a().a(new bca(paramChatConversationmId));
      }
      
      public final void b()
      {
        paramCashFeedItem.d();
        paramb.b();
        paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.FAILED_TO_SEND);
        bbo.a().a(new bca(paramChatConversationmId));
      }
    });
    paramChatConversation.a(paramCashFeedItem, FeedIconChangeType.SENDING);
    bbo.a().a(new bca(paramCashFeedItem.Y(), paramCashFeedItem.d()));
  }
  
  public final void a(@chc ChatConversation paramChatConversation, @chc List<CashFeedItem> paramList)
  {
    CashFeedItem localCashFeedItem;
    if (!paramList.isEmpty())
    {
      localCashFeedItem = (CashFeedItem)paramList.remove(0);
      if (!localCashFeedItem.P()) {
        throw new RuntimeException("SendingCashManager retrySendCash should only be called on failed CashFeedItems!");
      }
      localCashFeedItem.o();
      if (!mCashTransaction.mIsInFlight)
      {
        localCashFeedItem.d();
        a.d(localCashFeedItem, a(paramChatConversation, localCashFeedItem, paramList));
      }
    }
    else
    {
      return;
    }
    localCashFeedItem.d();
    a.c(localCashFeedItem, a(paramChatConversation, localCashFeedItem, paramList));
  }
  
  public final void b(@chc final ChatConversation paramChatConversation, @chc final List<CashFeedItem> paramList)
  {
    a(mId, paramList);
    Object localObject = (Map)c.get(mId);
    if (localObject == null) {}
    do
    {
      return;
      paramList = new HashMap();
      localObject = ((Map)localObject).values().iterator();
      while (((Iterator)localObject).hasNext())
      {
        CashFeedItem localCashFeedItem = (CashFeedItem)((Iterator)localObject).next();
        if (!localCashFeedItem.i())
        {
          if (localCashFeedItem.h())
          {
            CashTransaction.TransactionStatus localTransactionStatus = mCashTransaction.mTransactionStatus;
            if (ayg.a(localCashFeedItem)) {
              if (localTransactionStatus == CashTransaction.TransactionStatus.EXPIRED) {
                AnalyticsEvents.r(mCashTransaction.a());
              }
            }
            for (;;)
            {
              paramList.put(localCashFeedItem.d(), localCashFeedItem);
              break;
              if (localTransactionStatus == CashTransaction.TransactionStatus.CANCELED)
              {
                AnalyticsEvents.s(mCashTransaction.a());
                continue;
                if (localTransactionStatus == CashTransaction.TransactionStatus.COMPLETED) {
                  AnalyticsEvents.p(mCashTransaction.a());
                } else if (localTransactionStatus == CashTransaction.TransactionStatus.RECIPIENT_CANCELED) {
                  AnalyticsEvents.q("USER_DETERMINED_INELIGIBLE");
                }
              }
            }
          }
        }
        else if (mCashTransaction.mFailToSendReleaseMessage) {
          paramList.put(localCashFeedItem.d(), localCashFeedItem);
        }
      }
    } while (paramList.isEmpty());
    paramList.size();
    new rf(paramList.keySet(), mId, new rf.a()
    {
      private void b()
      {
        Collection localCollection = paramList.values();
        Iterator localIterator = localCollection.iterator();
        while (localIterator.hasNext()) {
          nextmCashTransaction.mFailToSendReleaseMessage = true;
        }
        CashFeedItemTable.a(SnapchatApplication.b(), localCollection);
      }
      
      public final void a()
      {
        b();
      }
      
      public final void a(List<String> paramAnonymousList)
      {
        paramAnonymousList.size();
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = paramAnonymousList.iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localArrayList.add(paramList.remove(str));
        }
        yw.b(paramChatConversationmId, paramAnonymousList);
        CashFeedItemTable.a(SnapchatApplication.b(), localArrayList);
        b();
      }
    }).execute();
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
 * Qualified Name:     yw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */