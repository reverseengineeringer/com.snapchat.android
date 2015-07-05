import android.content.Context;
import android.widget.ArrayAdapter;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.List;

public class apf<T>
  extends ArrayAdapter<T>
{
  private final azo mExceptionReporter;
  
  public apf(Context paramContext)
  {
    this(paramContext, new azo());
  }
  
  public apf(Context paramContext, int paramInt, List<T> paramList)
  {
    this(paramContext, paramInt, paramList, new azo());
  }
  
  private apf(Context paramContext, int paramInt, List<T> paramList, azo paramazo)
  {
    super(paramContext, paramInt, paramList);
    mExceptionReporter = paramazo;
  }
  
  private apf(Context paramContext, azo paramazo)
  {
    super(paramContext, 2130968764);
    mExceptionReporter = paramazo;
  }
  
  public apf(Context paramContext, T[] paramArrayOfT)
  {
    this(paramContext, paramArrayOfT, new azo());
  }
  
  private apf(Context paramContext, T[] paramArrayOfT, azo paramazo)
  {
    super(paramContext, 2130968594, paramArrayOfT);
    mExceptionReporter = paramazo;
  }
  
  public void notifyDataSetChanged()
  {
    if (bgp.c())
    {
      super.notifyDataSetChanged();
      return;
    }
    nz localnz = new nz(getClass().getSimpleName());
    if (ReleaseManager.f()) {
      throw localnz;
    }
    mExceptionReporter.a(localnz);
    bgp.a(new Runnable()
    {
      public final void run()
      {
        apf.a(apf.this);
      }
    });
  }
}

/* Location:
 * Qualified Name:     apf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */