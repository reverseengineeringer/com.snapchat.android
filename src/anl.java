import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;
import com.snapchat.android.util.debug.ReleaseManager;

public final class anl
  implements SnapMediaRenderer
{
  private static String a = "ImageSnapRenderer";
  private final LayoutInflater b;
  private final avs c;
  private final bgt d;
  private final avp e;
  private View f;
  private ImageView g;
  private aje h;
  private avv i;
  private SnapMediaRenderer.a j;
  
  public anl(@cgb Context paramContext)
  {
    this((LayoutInflater)paramContext.getSystemService("layout_inflater"), new avs(), new bgt(), new avp(paramContext));
  }
  
  private anl(LayoutInflater paramLayoutInflater, avs paramavs, bgt parambgt, avp paramavp)
  {
    b = paramLayoutInflater;
    c = paramavs;
    d = parambgt;
    e = paramavp;
  }
  
  public final void a()
  {
    Timber.c(a, "SNAP-VIEW: Start %s", new Object[] { h });
    if (h == null)
    {
      if (ReleaseManager.f()) {
        throw new RuntimeException("Start called for null snap");
      }
    }
    else
    {
      f.bringToFront();
      d.c();
      g.setVisibility(0);
      g.post(new Runnable()
      {
        public final void run()
        {
          SnapMediaRenderer.a locala = anl.b(anl.this);
          if (locala != null) {
            locala.a();
          }
        }
      });
    }
  }
  
  public final void a(@cgb final aje paramaje, boolean paramBoolean, @cgb final SnapMediaRenderer.a parama)
  {
    Timber.c(a, "SNAP-VIEW: Prepare %s", new Object[] { paramaje });
    h = paramaje;
    j = parama;
    Object localObject = h.I();
    if (localObject == null)
    {
      Timber.e(a, "Snap media not available for %s", new Object[] { h });
      parama.a(SnapMediaRenderer.ErrorCode.MEDIA_UNAVAILABLE_LOCALLY);
      return;
    }
    localObject = new avx.a().a(mKey, mCache, mKey, mAlgorithm);
    mImageView = g;
    mRequireExactDimensions = false;
    localObject = ((avx.a)localObject).a();
    i = new avv(new avy()
    {
      public final void a(avo paramAnonymousavo, avx paramAnonymousavx)
      {
        Timber.c(anl.e(), "SNAP-VIEW: onBitmap loaded for %s", new Object[] { anl.a(anl.this) });
        paramAnonymousavo = mBitmap;
        if (paramAnonymousavo == null)
        {
          parama.a(SnapMediaRenderer.ErrorCode.MEDIA_UNAVAILABLE_LOCALLY);
          return;
        }
        paramAnonymousavx = mImageView;
        if (paramAnonymousavx != null) {
          paramAnonymousavx.setImageBitmap(paramAnonymousavo);
        }
        int i = (int)paramaje.F();
        parama.a(i * 1000, paramAnonymousavo.getWidth(), paramAnonymousavo.getHeight());
      }
    });
    e.b((avx)localObject, new avy[] { i });
  }
  
  public final void a(@cgb ViewGroup paramViewGroup)
  {
    f = b.inflate(2130968733, paramViewGroup, false);
    g = ((ImageView)f.findViewById(2131362700));
    d.mView = g;
    paramViewGroup.addView(f);
  }
  
  public final void a(boolean paramBoolean) {}
  
  public final void b()
  {
    Timber.c(a, "SNAP-VIEW: Stop %s", new Object[] { h });
    h = null;
    j = null;
    if (i != null)
    {
      avv localavv = i;
      synchronized (mMutex)
      {
        mIsCanceled = true;
        return;
      }
    }
  }
  
  public final void c()
  {
    Timber.c(a, "SNAP-VIEW: Show %s", new Object[] { h });
    g.setVisibility(0);
  }
  
  public final void d()
  {
    Timber.c(a, "SNAP-VIEW: Hide %s", new Object[] { h });
    g.setVisibility(8);
    c.a(g, false);
  }
}

/* Location:
 * Qualified Name:     anl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */