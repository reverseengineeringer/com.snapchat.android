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
public final class sn
  implements qo
{
  public static final String CLIENT_IDENTITY = "chartreuse";
  public static final String CLIENT_PARAM = "client";
  public static final String NAME = "SQUARE";
  private static final String TAG = "SquareProvider";
  @Inject
  protected qg mCashErrorReporter;
  
  @Inject
  public sn()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  @cgb
  public static CashTransaction.TransactionStatus a(@cgb CashPayment.State paramState, @cgc CashPayment.CancellationReason paramCancellationReason)
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
  
  @cgc
  public static List<qv> a(qv paramqv, int paramInt)
  {
    switch (paramInt)
    {
    }
    do
    {
      return null;
      return Arrays.asList(new qv[] { new rf(true) });
    } while (!(paramqv instanceof rn));
    return Arrays.asList(new qv[] { new rl() });
  }
  
  public static void a(CashPayment.CancellationReason paramCancellationReason)
  {
    if (paramCancellationReason != null)
    {
      switch (paramCancellationReason)
      {
      default: 
        AnalyticsEvents.n("OTHER");
        qg.a(2131493287, new Object[0]);
        return;
      case ???: 
        AnalyticsEvents.n("CARD_DECLINED");
        qg.a(2131493285, new Object[0]);
        return;
      case ???: 
        AnalyticsEvents.n("LIMIT_EXCEEDED");
        paramCancellationReason = ban.a();
        ShowDialogEvent.a locala = new ShowDialogEvent.a(ShowDialogEvent.DialogType.ONE_BUTTON);
        mTitleResId = 2131493283;
        mMessageResId = 2131493288;
        paramCancellationReason.a(locala.a());
        return;
      }
      AnalyticsEvents.n("SQUARE_CANCELED");
      qg.a(2131493291, new Object[0]);
      return;
    }
    AnalyticsEvents.n("UNKNOWN");
    qg.a(2131493287, new Object[0]);
  }
  
  public final void a()
  {
    ajx.ak();
    rf localrf = new rf();
    mListener = new qv.a()
    {
      public final void a(@cgb qv paramAnonymousqv) {}
      
      public final void a(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        if ((paramAnonymousList == null) || (paramAnonymousList.isEmpty())) {
          new sf(new sn.3(sn.this)).f();
        }
      }
      
      public final void b(@cgb qv paramAnonymousqv) {}
      
      public final void b(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean) {}
    };
    localrf.a(null);
  }
  
  public final void a(@cgb CashFeedItem paramCashFeedItem)
  {
    if (!ajx.f()) {
      throw new RuntimeException("Must have verified phone number before calling SquareProvider#getAccessToken!");
    }
    mBlockerPriorityQueue.clear();
    paramCashFeedItem.a(atv.a(new rf()));
    paramCashFeedItem.a(new qd.a()
    {
      public final void a()
      {
        new sb(val$cashTransaction).f();
      }
      
      public final void b() {}
    });
  }
  
  public final void a(final String paramString)
  {
    rf localrf = new rf();
    mListener = new qv.a()
    {
      public final void a(@cgb qv paramAnonymousqv) {}
      
      public final void a(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        paramAnonymousqv = new TransactionHistoryFragment(paramString);
        bfr.a();
        paramAnonymousqv.a(avb.a(Arrays.asList(new String[] { bfr.f(), "cash/history" }), "/"));
        ban.a().a(new bdw(paramAnonymousqv));
      }
      
      public final void b(@cgb qv paramAnonymousqv) {}
      
      public final void b(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493195));
      }
    };
    localrf.a(null);
  }
  
  public final Collection<qv> b()
  {
    return Arrays.asList(new qv[] { new qx(), new rh(), new rf() });
  }
  
  public final Collection<qv> c()
  {
    ArrayList localArrayList = new ArrayList();
    if (ajx.aw()) {
      localArrayList.add(new rp());
    }
    return localArrayList;
  }
  
  public final Collection<qv> d()
  {
    return Arrays.asList(new qv[] { new rn() });
  }
  
  public final Collection<qv> e()
  {
    return Arrays.asList(new qv[] { new rf(), new rt() });
  }
  
  public final Collection<qv> f()
  {
    return Arrays.asList(new qv[] { new qx(), new rf(), new rs() });
  }
  
  public final Collection<qv> g()
  {
    return Arrays.asList(new qv[] { new rx() });
  }
}

/* Location:
 * Qualified Name:     sn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */