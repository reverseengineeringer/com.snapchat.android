import android.content.Context;
import android.text.format.DateFormat;
import android.view.View;
import android.widget.ImageView;
import com.snapchat.android.location.geofilter.BatteryInfoProvider;
import com.snapchat.android.location.geofilter.BatteryInfoProvider.BatteryLevel;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.smartfilters.TurnOnFiltersView;
import com.snapchat.android.util.PhotoEffectTask;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;

public final class ars
  implements apg.a
{
  protected final ask a;
  private final Context b;
  private final SwipeImageView c;
  private final aht d;
  private final ahq e;
  private final wy f;
  private final apd g;
  private final BatteryInfoProvider h;
  private Mediabryo.SnapType i;
  private boolean j;
  private boolean k;
  private boolean l;
  
  private ars(Context paramContext, SwipeImageView paramSwipeImageView, aht paramaht, ahq paramahq, ask paramask, wy paramwy, apd paramapd)
  {
    b = paramContext;
    c = paramSwipeImageView;
    d = paramaht;
    e = paramahq;
    if (d.b() == null) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      a = paramask;
      f = paramwy;
      g = paramapd;
      h = new BatteryInfoProvider(b);
      return;
    }
  }
  
  public ars(Context paramContext, SwipeImageView paramSwipeImageView, arw<arn> paramarw)
  {
    this(paramContext, paramSwipeImageView, aht.a(), new ahq(), new ask(paramSwipeImageView, paramarw), wy.a(), apd.a());
  }
  
  @avl
  public final void a()
  {
    ask localask = a;
    new asi().a(b, c);
    a.a.clear();
  }
  
  @avl
  public final void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2, @cgb Mediabryo.SnapType paramSnapType)
  {
    bgp.a();
    a();
    i = ((Mediabryo.SnapType)ck.a(paramSnapType));
    paramSnapType = new asf();
    a.a(new ash(paramSnapType));
    if (!ajx.ab())
    {
      paramSnapType = new ase(new TurnOnFiltersView(b));
      a.a(new ash(paramSnapType, new ary()));
      if (!k) {
        a.a();
      }
    }
    for (;;)
    {
      c.invalidate();
      return;
      label211:
      Object localObject2;
      Object localObject1;
      if (paramBoolean1)
      {
        if (paramInt == 0)
        {
          bgp.a();
          paramSnapType = new arp("Instasnap", 3);
          a.a(new ash(paramSnapType));
          paramSnapType = new arp("Miss Etikate", 17);
          a.a(new ash(paramSnapType));
          paramSnapType = new arp("Greyscale", 0);
          a.a(new ash(paramSnapType));
        }
      }
      else if (paramBoolean2)
      {
        bgp.a();
        if (ajx.ab())
        {
          paramSnapType = new aqw(b, g);
          c = a.a(2130968748);
          c.setOnTouchListener(d);
          b.c(paramSnapType);
          paramSnapType.a(0.0F);
          paramSnapType = new asd(paramSnapType);
          a.a(new ash(paramSnapType, new ary()));
        }
        if (d.b() != null)
        {
          paramSnapType = new aqx(b, g);
          paramSnapType.a();
          paramSnapType = new asg(paramSnapType);
          a.a(new ash(paramSnapType, new ary()));
        }
        paramSnapType = new aqv(g);
        localObject2 = b;
        localObject1 = new Date();
        b = a.a(2130968633);
        c = DateFormat.is24HourFormat((Context)localObject2);
        localObject2 = GregorianCalendar.getInstance();
        ((Calendar)localObject2).setTime((Date)localObject1);
        localObject1 = (ImageView)b.findViewById(2131362147);
        if (!c) {
          break label1012;
        }
        ((ImageView)localObject1).setVisibility(8);
        paramBoolean1 = c;
        int n = ((Calendar)localObject2).get(11);
        int i1 = ((Calendar)localObject2).get(12);
        int m = n;
        if (!paramBoolean1)
        {
          paramInt = n;
          if (n > 12) {
            paramInt = n - 12;
          }
          m = paramInt;
          if (paramInt == 0) {
            m = 12;
          }
        }
        localObject1 = new aqv.a(m / 10, m % 10, i1 / 10, i1 % 10);
        localObject2 = (ImageView)b.findViewById(2131362142);
        if ((a != 0) || (c)) {
          break label1050;
        }
        ((ImageView)localObject2).setVisibility(8);
        label608:
        ((ImageView)b.findViewById(2131362143)).setImageResource(aqv.a(b, false));
        ((ImageView)b.findViewById(2131362145)).setImageResource(aqv.a(c, false));
        ((ImageView)b.findViewById(2131362146)).setImageResource(aqv.a(d, false));
        paramSnapType = new asa(paramSnapType);
        a.a(new ash(paramSnapType, new ary()));
        if (h.a() != BatteryInfoProvider.BatteryLevel.NO_BATTERY_FILTER)
        {
          paramSnapType = new aqu(g);
          localObject1 = h.a();
          a = b.a(2130968585);
          localObject2 = (ImageView)a.findViewById(2131361910);
          switch (aqu.1.a[localObject1.ordinal()])
          {
          }
        }
      }
      for (paramInt = 2130837646;; paramInt = 2130837645)
      {
        ((ImageView)localObject2).setImageResource(paramInt);
        paramSnapType = new arz(paramSnapType);
        a.a(new ash(paramSnapType, new ary()));
        if (ajx.ab())
        {
          paramSnapType = new asl(i);
          a.a(paramSnapType);
        }
        if (k) {
          break label1091;
        }
        a.a();
        c.a();
        break;
        bgp.a();
        if (!wy.b()) {
          break label211;
        }
        paramSnapType = new aro(FragmentShader.Filter.INSTASNAP);
        a.a(new ash(paramSnapType));
        paramSnapType = new aro(FragmentShader.Filter.MISS_ETIKATE);
        a.a(new ash(paramSnapType));
        paramSnapType = new aro(FragmentShader.Filter.GREYSCALE);
        a.a(new ash(paramSnapType));
        break label211;
        label1012:
        ((ImageView)localObject1).setVisibility(0);
        if (((Calendar)localObject2).get(11) > 11) {}
        for (paramInt = 2130837724;; paramInt = 2130837722)
        {
          ((ImageView)localObject1).setImageResource(paramInt);
          break;
        }
        label1050:
        ((ImageView)localObject2).setVisibility(0);
        ((ImageView)localObject2).setImageResource(aqv.a(a, true));
        break label608;
        throw new IllegalArgumentException("ERROR: battery filter should not be created");
      }
      label1091:
      l = true;
    }
  }
  
  public final void a(SwipeImageView paramSwipeImageView) {}
  
  @avl
  public final void a(SwipeImageView paramSwipeImageView, boolean paramBoolean)
  {
    k = false;
    a.a();
    if (l)
    {
      c.a();
      l = false;
    }
    c.invalidate();
  }
  
  @avl
  public final void b()
  {
    Iterator localIterator = a.a.iterator();
    while (localIterator.hasNext()) {
      ((asj)localIterator.next()).a();
    }
    c.f = true;
    PhotoEffectTask.a();
  }
  
  @boh
  @avl
  public final void onGeofilterLoadedEvent(bbq parambbq)
  {
    bgp.a();
    a.a(new asl(i));
    if (!k)
    {
      a.a();
      c.invalidate();
    }
  }
  
  @boh
  @avl
  public final void onWeatherUpdatedEvent(bev parambev)
  {
    
    if ((j) && (d.b() != null))
    {
      j = false;
      parambev = new aqx(b, g);
      parambev.a();
      parambev = new asg(parambev);
      a.a(new ash(parambev, new ary()));
      a.a(new asl(i));
      if (!k)
      {
        a.a();
        c.invalidate();
      }
    }
  }
  
  public final void q()
  {
    k = true;
  }
}

/* Location:
 * Qualified Name:     ars
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */