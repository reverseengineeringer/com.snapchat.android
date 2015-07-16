import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.fragments.cash.TransactionHistoryFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.eventbus.ShowDialogEvent.a;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.PriorityQueue;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class td
  implements re
{
  public static final String CLIENT_IDENTITY = "chartreuse";
  public static final String CLIENT_PARAM = "client";
  public static final String NAME = "SQUARE";
  private static final String TAG = "SquareProvider";
  @Inject
  protected qw mCashErrorReporter;
  
  @Inject
  public td()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  @chc
  public static CashTransaction.TransactionStatus a(@chc CashPayment.State paramState, @chd CashPayment.CancellationReason paramCancellationReason)
  {
    if (paramState == CashPayment.State.WAITING_ON_RECIPIENT) {
      return CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT;
    }
    if (paramState == CashPayment.State.CANCELED)
    {
      if (paramCancellationReason == CashPayment.CancellationReason.EXPIRED_WAITING_ON_RECIPIENT) {
        return CashTransaction.TransactionStatus.EXPIRED;
      }
      if (paramCancellationReason == CashPayment.CancellationReason.RECIPIENT_CANCELED) {
        return CashTransaction.TransactionStatus.RECIPIENT_CANCELED;
      }
      if (paramCancellationReason == CashPayment.CancellationReason.SQUARE_CANCELED) {
        return CashTransaction.TransactionStatus.CANCELED;
      }
      return CashTransaction.TransactionStatus.SENDER_CANCELED;
    }
    if (paramState == CashPayment.State.COMPLETED) {
      return CashTransaction.TransactionStatus.COMPLETED;
    }
    return CashTransaction.TransactionStatus.INITIATED;
  }
  
  @chd
  public static List<rl> a(rl paramrl, int paramInt)
  {
    switch (paramInt)
    {
    }
    do
    {
      return null;
      return Arrays.asList(new rl[] { new rv(true) });
    } while (!(paramrl instanceof sd));
    return Arrays.asList(new rl[] { new sb() });
  }
  
  public static void a(CashPayment.CancellationReason paramCancellationReason)
  {
    if (paramCancellationReason != null)
    {
      switch (paramCancellationReason)
      {
      default: 
        AnalyticsEvents.m("OTHER");
        qw.a(2131493287, new Object[0]);
        return;
      case ???: 
        AnalyticsEvents.m("CARD_DECLINED");
        qw.a(2131493285, new Object[0]);
        return;
      case ???: 
        AnalyticsEvents.m("LIMIT_EXCEEDED");
        paramCancellationReason = bbo.a();
        ShowDialogEvent.a locala = new ShowDialogEvent.a(ShowDialogEvent.DialogType.ONE_BUTTON);
        mTitleResId = 2131493283;
        mMessageResId = 2131493288;
        paramCancellationReason.a(locala.a());
        return;
      }
      AnalyticsEvents.m("SQUARE_CANCELED");
      qw.a(2131493291, new Object[0]);
      return;
    }
    AnalyticsEvents.m("UNKNOWN");
    qw.a(2131493287, new Object[0]);
  }
  
  public final void a()
  {
    akr.aj();
    rv localrv = new rv();
    mListener = new rl.a()
    {
      public final void a(@chc rl paramAnonymousrl) {}
      
      public final void a(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        if ((paramAnonymousList == null) || (paramAnonymousList.isEmpty())) {
          new sv(new td.3(td.this)).execute();
        }
      }
      
      public final void b(@chc rl paramAnonymousrl) {}
      
      public final void b(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean) {}
    };
    localrv.a(null);
  }
  
  public final void a(@chc CashFeedItem paramCashFeedItem)
  {
    if (!akr.f()) {
      throw new RuntimeException("Must have verified phone number before calling SquareProvider#getAccessToken!");
    }
    mBlockerPriorityQueue.clear();
    paramCashFeedItem.a(aut.a(new rv()));
    paramCashFeedItem.a(new qt.a()
    {
      public final void a()
      {
        new sr(val$cashTransaction).execute();
      }
      
      public final void b() {}
    });
  }
  
  public final void a(final String paramString)
  {
    rv localrv = new rv();
    mListener = new rl.a()
    {
      public final void a(@chc rl paramAnonymousrl) {}
      
      public final void a(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        paramAnonymousrl = new TransactionHistoryFragment(paramString);
        bgr.a();
        paramAnonymousrl.a(avz.a(Arrays.asList(new String[] { bgr.f(), "cash/history" }), "/"));
        bbo.a().a(new bev(paramAnonymousrl));
      }
      
      public final void b(@chc rl paramAnonymousrl) {}
      
      public final void b(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493195));
      }
    };
    localrv.a(null);
  }
  
  public final Collection<rl> b()
  {
    return Arrays.asList(new rl[] { new rn(), new rx(), new rv() });
  }
  
  public final Collection<rl> c()
  {
    ArrayList localArrayList = new ArrayList();
    if (akr.av()) {
      localArrayList.add(new sf());
    }
    return localArrayList;
  }
  
  public final Collection<rl> d()
  {
    return Arrays.asList(new rl[] { new sd() });
  }
  
  public final Collection<rl> e()
  {
    return Arrays.asList(new rl[] { new rv(), new sj() });
  }
  
  public final Collection<rl> f()
  {
    return Arrays.asList(new rl[] { new rn(), new rv(), new si() });
  }
  
  public final Collection<rl> g()
  {
    return Arrays.asList(new rl[] { new sn() });
  }
}

/* Location:
 * Qualified Name:     td
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */