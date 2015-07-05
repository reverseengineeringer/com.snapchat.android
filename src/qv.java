import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

public abstract class qv
  implements Comparable<qv>
{
  private static final String TAG = "Blocker";
  @cgc
  public qv.a mListener;
  
  public void a()
  {
    Timber.b("Blocker", "CASH-LOG: %s DISMISSED", new Object[] { getClass().getSimpleName() });
    if (mListener != null) {
      mListener.a(this);
    }
  }
  
  public abstract void a(CashTransaction paramCashTransaction);
  
  public void a(@cgc List<qv> paramList, boolean paramBoolean)
  {
    Timber.b("Blocker", "CASH-LOG: %s RESOLVED newBlockers[%s] shouldContinueResolution[%s]", new Object[] { getClass().getSimpleName(), paramList, String.valueOf(paramBoolean) });
    if (mListener != null) {
      mListener.a(this, paramList, paramBoolean);
    }
  }
  
  public final void b()
  {
    Timber.b("Blocker", "CASH-LOG: %s HARD FAILED", new Object[] { getClass().getSimpleName() });
    if (mListener != null) {
      mListener.b(this);
    }
  }
  
  public void b(@cgc List<qv> paramList, boolean paramBoolean)
  {
    Timber.b("Blocker", "CASH-LOG: %s FAILED additionalBlockers[%s] shouldContinueResolution[%s]", new Object[] { getClass().getSimpleName(), paramList, String.valueOf(paramBoolean) });
    if (mListener != null) {
      mListener.b(this, paramList, paramBoolean);
    }
  }
  
  public abstract BlockerOrder c();
  
  public boolean d()
  {
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || ((paramObject != null) && (getClass() == paramObject.getClass()));
  }
  
  public int hashCode()
  {
    return getClass().getCanonicalName().hashCode();
  }
  
  public static abstract interface a
  {
    public abstract void a(@cgb qv paramqv);
    
    public abstract void a(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean);
    
    public abstract void b(@cgb qv paramqv);
    
    public abstract void b(@cgb qv paramqv, @cgc List<qv> paramList, boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     qv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */