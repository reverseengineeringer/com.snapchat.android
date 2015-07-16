import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public final class bqi
{
  private static final AtomicInteger d = new AtomicInteger();
  final bqh.a a;
  public boolean b;
  boolean c;
  private final bqe e;
  private boolean f = true;
  private int g;
  private int h;
  private int i;
  private int j;
  private Drawable k;
  private Drawable l;
  private Object m;
  
  bqi()
  {
    e = null;
    a = new bqh.a(null, null);
  }
  
  bqi(bqe parambqe, Uri paramUri)
  {
    if (p) {
      throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }
    e = parambqe;
    a = new bqh.a(paramUri, m);
  }
  
  private bqh a(long paramLong)
  {
    int n = d.getAndIncrement();
    Object localObject = a;
    if ((g) && (f)) {
      throw new IllegalStateException("Center crop and center inside can not be used together.");
    }
    if ((f) && (d == 0) && (e == 0)) {
      throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
    }
    if ((g) && (d == 0) && (e == 0)) {
      throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
    }
    if (o == 0) {
      o = bqe.e.b;
    }
    localObject = new bqh(a, b, c, m, d, e, f, g, h, i, j, k, l, n, o, (byte)0);
    a = n;
    b = paramLong;
    boolean bool = e.o;
    if (bool) {
      bqp.a("Main", "created", ((bqh)localObject).b(), ((bqh)localObject).toString());
    }
    bqe localbqe = e;
    bqh localbqh = c.a((bqh)localObject);
    if (localbqh == null) {
      throw new IllegalStateException("Request transformer " + c.getClass().getCanonicalName() + " returned null for " + localObject);
    }
    if (localbqh != localObject)
    {
      a = n;
      b = paramLong;
      if (bool) {
        bqp.a("Main", "changed", localbqh.a(), "into " + localbqh);
      }
    }
    return localbqh;
  }
  
  private Drawable b()
  {
    if (g != 0) {
      return e.f.getResources().getDrawable(g);
    }
    return k;
  }
  
  public final void a()
  {
    long l1 = System.nanoTime();
    if (c) {
      throw new IllegalStateException("Fit cannot be used with fetch.");
    }
    String str;
    if (a.a())
    {
      int n;
      if (a.o != 0) {
        n = 1;
      }
      while (n == 0)
      {
        localObject = a;
        n = bqe.e.a;
        if (n == 0)
        {
          throw new IllegalArgumentException("Priority invalid.");
          n = 0;
        }
        else
        {
          if (o != 0) {
            throw new IllegalStateException("Priority already set.");
          }
          o = n;
        }
      }
      localObject = a(l1);
      str = bqp.a((bqh)localObject, new StringBuilder());
      if (e.a(str) == null) {
        break label174;
      }
      if (e.o) {
        bqp.a("Main", "completed", ((bqh)localObject).b(), "from " + bqe.d.a);
      }
    }
    return;
    label174:
    Object localObject = new bpu(e, (bqh)localObject, i, j, m, str);
    e.b((bpk)localObject);
  }
  
  public final void a(ImageView paramImageView, bpo parambpo)
  {
    long l1 = System.nanoTime();
    bqp.a();
    if (paramImageView == null) {
      throw new IllegalArgumentException("Target must not be null.");
    }
    if (!a.a())
    {
      e.a(paramImageView);
      if (f) {
        bqf.a(paramImageView, b());
      }
    }
    Object localObject;
    String str;
    do
    {
      return;
      if (c)
      {
        localObject = a;
        if ((d != 0) || (e != 0)) {}
        for (int n = 1; n != 0; n = 0) {
          throw new IllegalStateException("Fit cannot be used with resize.");
        }
        n = paramImageView.getWidth();
        int i1 = paramImageView.getHeight();
        if ((n == 0) || (i1 == 0))
        {
          if (f) {
            bqf.a(paramImageView, b());
          }
          localObject = e;
          parambpo = new bpr(this, paramImageView, parambpo);
          k.put(paramImageView, parambpo);
          return;
        }
        a.a(n, i1);
      }
      localObject = a(l1);
      str = bqp.a((bqh)localObject);
      if (!bqa.a(i)) {
        break;
      }
      Bitmap localBitmap = e.a(str);
      if (localBitmap == null) {
        break;
      }
      e.a(paramImageView);
      bqf.a(paramImageView, e.f, localBitmap, bqe.d.a, b, e.n);
    } while (!e.o);
    bqp.a("Main", "completed", ((bqh)localObject).b(), "from " + bqe.d.a);
    return;
    if (f) {
      bqf.a(paramImageView, b());
    }
    paramImageView = new bpw(e, paramImageView, (bqh)localObject, i, j, h, l, str, m, parambpo, b);
    e.a(paramImageView);
  }
}

/* Location:
 * Qualified Name:     bqi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */