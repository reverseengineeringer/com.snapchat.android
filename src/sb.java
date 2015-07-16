import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import java.util.List;
import javax.inject.Inject;

public final class sb
  extends rl
{
  @Inject
  protected yn mCashCardManager;
  
  public sb()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@chd CashTransaction paramCashTransaction)
  {
    mCashCardManager.b();
    super.a(null, false);
  }
  
  protected final void a(@chd List<rl> paramList, boolean paramBoolean)
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
 * Qualified Name:     sb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */