import android.content.Context;
import android.widget.ArrayAdapter;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.List;

public class aqb<T>
  extends ArrayAdapter<T>
{
  private final ban mExceptionReporter;
  
  public aqb(Context paramContext)
  {
    this(paramContext, new ban());
  }
  
  public aqb(Context paramContext, int paramInt, List<T> paramList)
  {
    this(paramContext, paramInt, paramList, new ban());
  }
  
  private aqb(Context paramContext, int paramInt, List<T> paramList, ban paramban)
  {
    super(paramContext, paramInt, paramList);
    mExceptionReporter = paramban;
  }
  
  private aqb(Context paramContext, ban paramban)
  {
    super(paramContext, 2130968766);
    mExceptionReporter = paramban;
  }
  
  public aqb(Context paramContext, T[] paramArrayOfT)
  {
    this(paramContext, paramArrayOfT, new ban());
  }
  
  private aqb(Context paramContext, T[] paramArrayOfT, ban paramban)
  {
    super(paramContext, 2130968595, paramArrayOfT);
    mExceptionReporter = paramban;
  }
  
  public void notifyDataSetChanged()
  {
    if (bhp.c())
    {
      super.notifyDataSetChanged();
      return;
    }
    oq localoq = new oq(getClass().getSimpleName());
    if (ReleaseManager.f()) {
      throw localoq;
    }
    mExceptionReporter.a(localoq);
    bhp.a(new Runnable()
    {
      public final void run()
      {
        aqb.a(aqb.this);
      }
    });
  }
}

/* Location:
 * Qualified Name:     aqb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */