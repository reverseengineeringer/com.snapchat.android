import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

public abstract class rl
  implements Comparable<rl>
{
  private static final String TAG = "Blocker";
  @chd
  public rl.a mListener;
  
  public void a()
  {
    getClass().getSimpleName();
    if (mListener != null) {
      mListener.a(this);
    }
  }
  
  public abstract void a(CashTransaction paramCashTransaction);
  
  public void a(@chd List<rl> paramList, boolean paramBoolean)
  {
    getClass().getSimpleName();
    if (mListener != null) {
      mListener.a(this, paramList, paramBoolean);
    }
  }
  
  public final void b()
  {
    getClass().getSimpleName();
    if (mListener != null) {
      mListener.b(this);
    }
  }
  
  public void b(@chd List<rl> paramList, boolean paramBoolean)
  {
    getClass().getSimpleName();
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
    public abstract void a(@chc rl paramrl);
    
    public abstract void a(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean);
    
    public abstract void b(@chc rl paramrl);
    
    public abstract void b(@chc rl paramrl, @chd List<rl> paramList, boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     rl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */