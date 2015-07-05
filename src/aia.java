import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.GeofilterMarkup;
import com.snapchat.android.model.GeofilterMarkup.DataType;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class aia
  implements aic
{
  final aii a;
  final ahx b;
  final ahw c;
  private final Bus d;
  
  public aia()
  {
    this(aii.a(), new ahx(auh.MISCELLANEOUS_EXECUTOR), new ahw(), ban.a());
  }
  
  private aia(@cgb aii paramaii, @cgb ahx paramahx, @cgb ahw paramahw, @cgb Bus paramBus)
  {
    a = paramaii;
    b = paramahx;
    c = paramahw;
    d = paramBus;
  }
  
  public final void a()
  {
    bgp.b(new Runnable()
    {
      public final void run()
      {
        b();
      }
    });
  }
  
  @caq
  protected final void a(@cgb aiv paramaiv, boolean paramBoolean)
  {
    aia.b localb = new aia.b(paramaiv, paramBoolean);
    a.a(paramaiv, localb);
  }
  
  @caq
  protected final void b()
  {
    bgp.b();
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext()) {
      a((aiv)localIterator.next(), true);
    }
  }
  
  final class a
    implements ahx.b
  {
    private final aiv b;
    private final boolean c;
    
    a(@cgb aiv paramaiv, boolean paramBoolean)
    {
      b = paramaiv;
      c = paramBoolean;
    }
    
    public final void a(@cgb Bitmap paramBitmap)
    {
      aiv localaiv = b;
      for (;;)
      {
        synchronized (mCompositeLock)
        {
          mCompositeBitmap = paramBitmap;
          localaiv = b;
          ??? = b;
          cgs localcgs = cgs.c();
          paramBitmap = localcgs.a(b.D().a(a, 100));
          Iterator localIterator = ((aiv)???).c().iterator();
          if (localIterator.hasNext())
          {
            GeofilterMarkup localGeofilterMarkup = (GeofilterMarkup)localIterator.next();
            ??? = paramBitmap;
            if (displaySchedule.a(localcgs))
            {
              ??? = paramBitmap;
              if (displaySchedule.end.c(paramBitmap)) {
                ??? = displaySchedule.end;
              }
            }
            if ((!displaySchedule.start.b(localcgs)) || (!displaySchedule.start.c((chb)???))) {
              break label214;
            }
            paramBitmap = displaySchedule.start;
          }
        }
        synchronized (mCompositeLock)
        {
          mCompositeBitmapExpiryTime = paramBitmap;
          if (c) {
            aia.a(aia.this);
          }
          return;
        }
        label214:
        paramBitmap = (Bitmap)???;
      }
    }
  }
  
  final class b
    implements aij.a
  {
    private final aiv b;
    private final boolean c;
    private int d = 5;
    
    b(@cgb aiv paramaiv, @cgb boolean paramBoolean)
    {
      b = paramaiv;
      c = paramBoolean;
    }
    
    public final void a()
    {
      Timber.c("ResourcesReadyCallback", "Resources ready, creating bitmap.", new Object[0]);
      Bitmap localBitmap = a.a(b.mImageUrl);
      b.mBitmap = localBitmap;
      Object localObject2 = aia.this;
      Object localObject1 = b;
      ArrayList localArrayList = new ArrayList();
      cgs localcgs = cgs.c();
      Iterator localIterator = ((aiv)localObject1).c().iterator();
      GeofilterMarkup localGeofilterMarkup;
      Object localObject3;
      String str;
      for (;;)
      {
        if (localIterator.hasNext())
        {
          localGeofilterMarkup = (GeofilterMarkup)localIterator.next();
          if (displaySchedule.a(localcgs))
          {
            localObject3 = c;
            if (type == GeofilterMarkup.DataType.TEXT)
            {
              localObject1 = displayParameters.text;
              if (!TextUtils.isEmpty((CharSequence)localObject1)) {
                break label364;
              }
              localObject1 = a;
              str = source;
              localObject1 = (String)a.a(str);
            }
          }
        }
      }
      label283:
      label364:
      for (;;)
      {
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          localObject3 = a;
          str = displayParameters.font;
          localObject3 = (Typeface)b.a(str);
          if (localObject3 != null) {
            localObject1 = new ahy((String)localObject1, (Typeface)localObject3, localGeofilterMarkup);
          }
        }
        for (;;)
        {
          if (localObject1 == null) {
            break label283;
          }
          localArrayList.add(localObject1);
          break;
          if (type == GeofilterMarkup.DataType.IMAGE) {
            localObject1 = new ahu(a.a(source), localGeofilterMarkup);
          } else {
            localObject1 = null;
          }
        }
        break;
        if (localArrayList.size() > 0)
        {
          localObject1 = new aia.a(aia.this, b, c);
          localObject2 = b;
          new ahx.a((ahx)localObject2, localBitmap, (ahx.b)localObject1, localArrayList).executeOnExecutor(a, new Void[0]);
        }
        while (!c) {
          return;
        }
        aia.a(aia.this);
        return;
      }
    }
    
    public final void b()
    {
      int i = d;
      d = (i - 1);
      if (i > 0)
      {
        a.a(b, this);
        return;
      }
      Timber.c("ResourcesReadyCallback", "Could not prepare geofilter. Max attempts reached", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     aia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */