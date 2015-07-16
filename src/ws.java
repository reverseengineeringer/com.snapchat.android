import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Inject;

public final class ws
{
  @Inject
  protected xf a;
  @Inject
  protected CameraModel b;
  
  @Inject
  public ws()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@chc final wh paramwh, final wi paramwi, final wr paramwr)
  {
    if (a.a)
    {
      if (b.b())
      {
        paramwr.a(true);
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            paramwh.a(b.f, paramwi);
            paramwr.a(false);
          }
        }, 700L);
      }
      wy.b localb;
      do
      {
        return;
        localb = b.h;
      } while (localb == null);
      paramwr.b(true);
      localb.a(new xb(new Handler(Looper.getMainLooper()), localb, new wy.c()
      {
        public final void a()
        {
          paramwh.a(b.f, paramwi);
          paramwr.b(false);
        }
      }));
      return;
    }
    paramwh.a(b.f, paramwi);
  }
  
  public final void b(@chc wh paramwh, wi paramwi, wr paramwr)
  {
    if (a.a) {
      paramwr.a(false);
    }
    paramwh.a(b.f, paramwi);
  }
}

/* Location:
 * Qualified Name:     ws
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */