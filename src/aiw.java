import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.snapchat.android.model.GeofilterMarkup;
import com.snapchat.android.model.GeofilterMarkup.DataType;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class aiw
  implements aiy
{
  final aje a;
  final ait b;
  final ais c;
  private final Bus d;
  
  public aiw()
  {
    this(aje.a(), new ait(avf.MISCELLANEOUS_EXECUTOR), new ais(), bbo.a());
  }
  
  private aiw(@chc aje paramaje, @chc ait paramait, @chc ais paramais, @chc Bus paramBus)
  {
    a = paramaje;
    b = paramait;
    c = paramais;
    d = paramBus;
  }
  
  public final void a()
  {
    bhp.b(new Runnable()
    {
      public final void run()
      {
        b();
      }
    });
  }
  
  @cbr
  protected final void a(@chc ajr paramajr, boolean paramBoolean)
  {
    aiw.b localb = new aiw.b(paramajr, paramBoolean);
    a.a(paramajr, localb);
  }
  
  @cbr
  protected final void b()
  {
    bhp.b();
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext()) {
      a((ajr)localIterator.next(), true);
    }
  }
  
  final class a
    implements ait.b
  {
    private final ajr b;
    private final boolean c;
    
    a(@chc ajr paramajr, boolean paramBoolean)
    {
      b = paramajr;
      c = paramBoolean;
    }
    
    public final void a(@chc Bitmap paramBitmap)
    {
      ajr localajr = b;
      for (;;)
      {
        synchronized (mCompositeLock)
        {
          mCompositeBitmap = paramBitmap;
          localajr = b;
          ??? = b;
          cht localcht = cht.c();
          paramBitmap = localcht.a(b.D().a(a, 100));
          Iterator localIterator = ((ajr)???).c().iterator();
          if (localIterator.hasNext())
          {
            GeofilterMarkup localGeofilterMarkup = (GeofilterMarkup)localIterator.next();
            ??? = paramBitmap;
            if (displaySchedule.a(localcht))
            {
              ??? = paramBitmap;
              if (displaySchedule.end.c(paramBitmap)) {
                ??? = displaySchedule.end;
              }
            }
            if ((!displaySchedule.start.b(localcht)) || (!displaySchedule.start.c((cic)???))) {
              break label214;
            }
            paramBitmap = displaySchedule.start;
          }
        }
        synchronized (mCompositeLock)
        {
          mCompositeBitmapExpiryTime = paramBitmap;
          if (c) {
            aiw.a(aiw.this);
          }
          return;
        }
        label214:
        paramBitmap = (Bitmap)???;
      }
    }
  }
  
  final class b
    implements ajf.a
  {
    private final ajr b;
    private final boolean c;
    private int d = 5;
    
    b(@chc ajr paramajr, @chc boolean paramBoolean)
    {
      b = paramajr;
      c = paramBoolean;
    }
    
    public final void a()
    {
      Bitmap localBitmap = a.a(b.mImageUrl);
      b.mBitmap = localBitmap;
      Object localObject2 = aiw.this;
      Object localObject1 = b;
      ArrayList localArrayList = new ArrayList();
      cht localcht = cht.c();
      Iterator localIterator = ((ajr)localObject1).c().iterator();
      GeofilterMarkup localGeofilterMarkup;
      Object localObject3;
      String str;
      for (;;)
      {
        if (localIterator.hasNext())
        {
          localGeofilterMarkup = (GeofilterMarkup)localIterator.next();
          if (displaySchedule.a(localcht))
          {
            localObject3 = c;
            if (type == GeofilterMarkup.DataType.TEXT)
            {
              localObject1 = displayParameters.text;
              if (!TextUtils.isEmpty((CharSequence)localObject1)) {
                break label353;
              }
              localObject1 = a;
              str = source;
              localObject1 = (String)a.a(str);
            }
          }
        }
      }
      label272:
      label353:
      for (;;)
      {
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          localObject3 = a;
          str = displayParameters.font;
          localObject3 = (Typeface)b.a(str);
          if (localObject3 != null) {
            localObject1 = new aiu((String)localObject1, (Typeface)localObject3, localGeofilterMarkup);
          }
        }
        for (;;)
        {
          if (localObject1 == null) {
            break label272;
          }
          localArrayList.add(localObject1);
          break;
          if (type == GeofilterMarkup.DataType.IMAGE) {
            localObject1 = new aiq(a.a(source), localGeofilterMarkup);
          } else {
            localObject1 = null;
          }
        }
        break;
        if (localArrayList.size() > 0)
        {
          localObject1 = new aiw.a(aiw.this, b, c);
          localObject2 = b;
          new ait.a((ait)localObject2, localBitmap, (ait.b)localObject1, localArrayList).executeOnExecutor(a, new Void[0]);
        }
        while (!c) {
          return;
        }
        aiw.a(aiw.this);
        return;
      }
    }
    
    public final void b()
    {
      int i = d;
      d = (i - 1);
      if (i > 0) {
        a.a(b, this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     aiw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */