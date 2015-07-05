import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.model.CameraModel;
import javax.inject.Inject;

public final class vw
{
  @Inject
  protected wj a;
  @Inject
  protected CameraModel b;
  
  @Inject
  public vw()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@cgb final vl paramvl, final vm paramvm, final vv paramvv)
  {
    if (a.a)
    {
      if (b.b())
      {
        paramvv.a(true);
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            paramvl.a(b.f, paramvm);
            paramvv.a(false);
          }
        }, 700L);
      }
      wc.b localb;
      do
      {
        return;
        localb = b.h;
      } while (localb == null);
      paramvv.b(true);
      localb.a(new wf(new Handler(Looper.getMainLooper()), localb, new wc.c()
      {
        public final void a()
        {
          paramvl.a(b.f, paramvm);
          paramvv.b(false);
        }
      }));
      return;
    }
    paramvl.a(b.f, paramvm);
  }
  
  public final void b(@cgb vl paramvl, vm paramvm, vv paramvv)
  {
    if (a.a) {
      paramvv.a(false);
    }
    paramvl.a(b.f, paramvm);
  }
}

/* Location:
 * Qualified Name:     vw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */