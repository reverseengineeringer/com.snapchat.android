import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.fragments.verification.URLVerificationFragment;
import com.snapchat.android.fragments.verification.URLVerificationFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;

public final class ry
  extends qv
{
  private static final String TAG = "SQUrlBlocker";
  @cgb
  private final String mUrl;
  
  public ry(@cgb String paramString)
  {
    mUrl = paramString;
  }
  
  public final void a(@cgb CashTransaction paramCashTransaction)
  {
    Timber.b("SQUrlBlocker", "CASH-LOG: ATTEMPT resolve SQUrlBlocker", new Object[0]);
    paramCashTransaction = new URLVerificationFragment();
    paramCashTransaction.a(mUrl);
    URLVerificationFragment.a local1 = new URLVerificationFragment.a()
    {
      public final void a()
      {
        ry.a(ry.this);
      }
      
      public final void b()
      {
        ry.b(ry.this);
      }
    };
    e = false;
    d = false;
    a = local1;
    ban.a().a(new bdw(paramCashTransaction));
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_URL_BLOCKER;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
    } while (super.equals(paramObject));
    return false;
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
}

/* Location:
 * Qualified Name:     ry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */