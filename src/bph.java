import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public final class bph
{
  private static final AtomicInteger d = new AtomicInteger();
  final bpg.a a;
  public boolean b;
  boolean c;
  private final bpd e;
  private boolean f = true;
  private int g;
  private int h;
  private int i;
  private int j;
  private Drawable k;
  private Drawable l;
  private Object m;
  
  bph()
  {
    e = null;
    a = new bpg.a(null, null);
  }
  
  bph(bpd parambpd, Uri paramUri)
  {
    if (p) {
      throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }
    e = parambpd;
    a = new bpg.a(paramUri, m);
  }
  
  private bpg a(long paramLong)
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
      o = bpd.e.b;
    }
    localObject = new bpg(a, b, c, m, d, e, f, g, h, i, j, k, l, n, o, (byte)0);
    a = n;
    b = paramLong;
    boolean bool = e.o;
    if (bool) {
      bpo.a("Main", "created", ((bpg)localObject).b(), ((bpg)localObject).toString());
    }
    bpd localbpd = e;
    bpg localbpg = c.a((bpg)localObject);
    if (localbpg == null) {
      throw new IllegalStateException("Request transformer " + c.getClass().getCanonicalName() + " returned null for " + localObject);
    }
    if (localbpg != localObject)
    {
      a = n;
      b = paramLong;
      if (bool) {
        bpo.a("Main", "changed", localbpg.a(), "into " + localbpg);
      }
    }
    return localbpg;
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
        n = bpd.e.a;
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
      str = bpo.a((bpg)localObject, new StringBuilder());
      if (e.a(str) == null) {
        break label174;
      }
      if (e.o) {
        bpo.a("Main", "completed", ((bpg)localObject).b(), "from " + bpd.d.a);
      }
    }
    return;
    label174:
    Object localObject = new bot(e, (bpg)localObject, i, j, m, str);
    e.b((boj)localObject);
  }
  
  public final void a(ImageView paramImageView, bon parambon)
  {
    long l1 = System.nanoTime();
    bpo.a();
    if (paramImageView == null) {
      throw new IllegalArgumentException("Target must not be null.");
    }
    if (!a.a())
    {
      e.a(paramImageView);
      if (f) {
        bpe.a(paramImageView, b());
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
            bpe.a(paramImageView, b());
          }
          localObject = e;
          parambon = new boq(this, paramImageView, parambon);
          k.put(paramImageView, parambon);
          return;
        }
        a.a(n, i1);
      }
      localObject = a(l1);
      str = bpo.a((bpg)localObject);
      if (!boz.a(i)) {
        break;
      }
      Bitmap localBitmap = e.a(str);
      if (localBitmap == null) {
        break;
      }
      e.a(paramImageView);
      bpe.a(paramImageView, e.f, localBitmap, bpd.d.a, b, e.n);
    } while (!e.o);
    bpo.a("Main", "completed", ((bpg)localObject).b(), "from " + bpd.d.a);
    return;
    if (f) {
      bpe.a(paramImageView, b());
    }
    paramImageView = new bov(e, paramImageView, (bpg)localObject, i, j, h, l, str, m, parambon, b);
    e.a(paramImageView);
  }
}

/* Location:
 * Qualified Name:     bph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */