import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.SnapchatApplication;
import com.squareup.otto.Bus;
import javax.inject.Inject;

@bxs
public final class bek
  extends Bus
{
  private static final String TAG = "SnapEventBus";
  @Inject
  protected ban mExceptionReporter;
  private Handler mHandler;
  
  public bek()
  {
    super(bpj.a);
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(final Object paramObject)
  {
    if (SnapchatApplication.a())
    {
      super.a(paramObject);
      return;
    }
    Looper localLooper = Looper.getMainLooper();
    if (Looper.myLooper() == localLooper)
    {
      super.a(paramObject);
      return;
    }
    if (mHandler == null) {
      mHandler = new Handler(localLooper);
    }
    mHandler.post(new Runnable()
    {
      public final void run()
      {
        bbo.a().a(paramObject);
      }
    });
  }
  
  public final void b(Object paramObject)
  {
    try
    {
      super.b(paramObject);
      return;
    }
    catch (IllegalArgumentException paramObject)
    {
      mExceptionReporter.a((Throwable)paramObject);
      new StringBuilder("Bus is being unregistered unnecessarily. ").append(paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     bek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */