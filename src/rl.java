import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class rl
  extends qv
{
  @Inject
  protected xr mCashCardManager;
  
  public rl()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@cgc CashTransaction paramCashTransaction)
  {
    mCashCardManager.b();
    super.a(null, false);
  }
  
  protected final void a(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_CONFLICT_BLOCKER;
  }
  
  public final boolean d()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     rl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */