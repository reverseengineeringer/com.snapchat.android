import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
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

public final class qy
  extends qv
{
  private static final String TAG = "PhoneNumberBlocker";
  @Inject
  protected xx mReceivingCashManager;
  
  public qy()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  private boolean e()
  {
    if (ajx.aq() == ScCashResponsePayload.Status.NON_US_USER)
    {
      super.b(null, false);
      ban.a().a(new bdw(new IneligibleCashFragment()));
      mReceivingCashManager.a(ym.b());
      return true;
    }
    if (ajx.f())
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
  
  public final void a(@cgc CashTransaction paramCashTransaction)
  {
    if (e()) {
      return;
    }
    paramCashTransaction = new CashPhoneVerificationFragment();
    CashPhoneVerificationFragment.a local1 = new CashPhoneVerificationFragment.a()
    {
      public final void a()
      {
        Timber.b("PhoneNumberBlocker", "CASH-LOG: PhoneNumberBlocker VERIFICATION COMPLETE", new Object[0]);
        if (qy.a(qy.this))
        {
          AnalyticsEvents.O();
          return;
        }
        b(null, false);
      }
      
      public final void b()
      {
        AnalyticsEvents.P();
        qy.this.a();
      }
    };
    b = false;
    a = local1;
    ban.a().a(new bdw(paramCashTransaction));
  }
  
  protected final void a(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  protected final void b(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.b(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.PHONE_NUMBER_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     qy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */