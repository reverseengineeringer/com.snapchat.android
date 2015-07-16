import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.cash.CashPhoneVerificationFragment;
import com.snapchat.android.fragments.cash.CashPhoneVerificationFragment.a;
import com.snapchat.android.fragments.cash.IneligibleCashFragment;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;
import java.util.List;
import javax.inject.Inject;

public final class ro
  extends rl
{
  private static final String TAG = "PhoneNumberBlocker";
  @Inject
  protected yt mReceivingCashManager;
  
  public ro()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  private boolean e()
  {
    if (akr.ap() == ScCashResponsePayload.Status.NON_US_USER)
    {
      super.b(null, false);
      bbo.a().a(new bev(new IneligibleCashFragment()));
      mReceivingCashManager.a(zi.a());
      return true;
    }
    if (akr.f())
    {
      super.a(null, true);
      return true;
    }
    return false;
  }
  
  protected final void a()
  {
    super.a();
  }
  
  public final void a(@chd CashTransaction paramCashTransaction)
  {
    if (e()) {
      return;
    }
    paramCashTransaction = new CashPhoneVerificationFragment();
    CashPhoneVerificationFragment.a local1 = new CashPhoneVerificationFragment.a()
    {
      public final void a()
      {
        if (ro.a(ro.this))
        {
          AnalyticsEvents.O();
          return;
        }
        b(null, false);
      }
      
      public final void b()
      {
        AnalyticsEvents.P();
        ro.this.a();
      }
    };
    b = false;
    a = local1;
    bbo.a().a(new bev(paramCashTransaction));
  }
  
  protected final void a(@chd List<rl> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  protected final void b(@chd List<rl> paramList, boolean paramBoolean)
  {
    super.b(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.PHONE_NUMBER_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     ro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */