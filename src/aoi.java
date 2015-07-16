import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;
import com.snapchat.android.util.debug.ReleaseManager;

public final class aoi
  implements SnapMediaRenderer
{
  private static String a = "ImageSnapRenderer";
  private final LayoutInflater b;
  private final awq c;
  private final bht d;
  private final awn e;
  private View f;
  private ImageView g;
  private aka h;
  private awt i;
  private SnapMediaRenderer.a j;
  
  public aoi(@chc Context paramContext)
  {
    this((LayoutInflater)paramContext.getSystemService("layout_inflater"), new awq(), new bht(), new awn(paramContext));
  }
  
  private aoi(LayoutInflater paramLayoutInflater, awq paramawq, bht parambht, awn paramawn)
  {
    b = paramLayoutInflater;
    c = paramawq;
    d = parambht;
    e = paramawn;
  }
  
  public final void a()
  {
    aka localaka = h;
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
          SnapMediaRenderer.a locala = aoi.b(aoi.this);
          if (locala != null) {
            locala.a();
          }
        }
      });
    }
  }
  
  public final void a(@chc final aka paramaka, boolean paramBoolean, @chc final SnapMediaRenderer.a parama)
  {
    h = paramaka;
    j = parama;
    Object localObject = h.J();
    if (localObject == null)
    {
      paramaka = h;
      parama.a(SnapMediaRenderer.ErrorCode.MEDIA_UNAVAILABLE_LOCALLY);
      return;
    }
    localObject = new awv.a().a(mKey, mCache, mKey, mAlgorithm);
    mImageView = g;
    mRequireExactDimensions = false;
    localObject = ((awv.a)localObject).a();
    i = new awt(new aww()
    {
      public final void a(awm paramAnonymousawm, awv paramAnonymousawv)
      {
        aoi.a(aoi.this);
        paramAnonymousawm = mBitmap;
        if (paramAnonymousawm == null)
        {
          parama.a(SnapMediaRenderer.ErrorCode.MEDIA_UNAVAILABLE_LOCALLY);
          return;
        }
        paramAnonymousawv = mImageView;
        if (paramAnonymousawv != null) {
          paramAnonymousawv.setImageBitmap(paramAnonymousawm);
        }
        int i = (int)paramaka.G();
        parama.a(i * 1000, paramAnonymousawm.getWidth(), paramAnonymousawm.getHeight());
      }
    });
    e.b((awv)localObject, new aww[] { i });
  }
  
  public final void a(@chc ViewGroup paramViewGroup)
  {
    f = b.inflate(2130968735, paramViewGroup, false);
    g = ((ImageView)f.findViewById(2131362699));
    d.mView = g;
    paramViewGroup.addView(f);
  }
  
  public final void a(boolean paramBoolean) {}
  
  public final void b()
  {
    ??? = h;
    h = null;
    j = null;
    if (i != null)
    {
      awt localawt = i;
      synchronized (mMutex)
      {
        mIsCanceled = true;
        return;
      }
    }
  }
  
  public final void c()
  {
    aka localaka = h;
    g.setVisibility(0);
  }
  
  public final void d()
  {
    aka localaka = h;
    g.setVisibility(8);
    c.a(g, false);
  }
}

/* Location:
 * Qualified Name:     aoi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */