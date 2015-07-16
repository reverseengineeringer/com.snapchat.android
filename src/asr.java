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

public final class asr
  implements aqc.a
{
  protected final atj a;
  private final Context b;
  private final SwipeImageView c;
  private final aip d;
  private final aim e;
  private final xt f;
  private final apz g;
  private final BatteryInfoProvider h;
  private Mediabryo.SnapType i;
  private boolean j;
  private boolean k;
  private boolean l;
  
  private asr(Context paramContext, SwipeImageView paramSwipeImageView, aip paramaip, aim paramaim, atj paramatj, xt paramxt, apz paramapz)
  {
    b = paramContext;
    c = paramSwipeImageView;
    d = paramaip;
    e = paramaim;
    if (d.b() == null) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      a = paramatj;
      f = paramxt;
      g = paramapz;
      h = new BatteryInfoProvider(b);
      return;
    }
  }
  
  public asr(Context paramContext, SwipeImageView paramSwipeImageView, asv<asm> paramasv)
  {
    this(paramContext, paramSwipeImageView, aip.a(), new aim(), new atj(paramSwipeImageView, paramasv), xt.a(), apz.a());
  }
  
  @awj
  public final void a()
  {
    atj localatj = a;
    new ath().a(b, c);
    a.a.clear();
  }
  
  @awj
  public final void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2, @chc Mediabryo.SnapType paramSnapType)
  {
    bhp.a();
    a();
    i = ((Mediabryo.SnapType)co.a(paramSnapType));
    paramSnapType = new ate();
    a.a(new atg(paramSnapType));
    if (!akr.aa())
    {
      paramSnapType = new atd(new TurnOnFiltersView(b));
      a.a(new atg(paramSnapType, new asx()));
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
          bhp.a();
          paramSnapType = new aso("Instasnap", 3);
          a.a(new atg(paramSnapType));
          paramSnapType = new aso("Miss Etikate", 17);
          a.a(new atg(paramSnapType));
          paramSnapType = new aso("Greyscale", 0);
          a.a(new atg(paramSnapType));
        }
      }
      else if (paramBoolean2)
      {
        bhp.a();
        if (akr.aa())
        {
          paramSnapType = new arv(b, g);
          c = a.a(2130968750);
          c.setOnTouchListener(d);
          b.c(paramSnapType);
          paramSnapType.a(0.0F);
          paramSnapType = new atc(paramSnapType);
          a.a(new atg(paramSnapType, new asx()));
        }
        if (d.b() != null)
        {
          paramSnapType = new arw(b, g);
          paramSnapType.a();
          paramSnapType = new atf(paramSnapType);
          a.a(new atg(paramSnapType, new asx()));
        }
        paramSnapType = new aru(g);
        localObject2 = b;
        localObject1 = new Date();
        b = a.a(2130968634);
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
        localObject1 = new aru.a(m / 10, m % 10, i1 / 10, i1 % 10);
        localObject2 = (ImageView)b.findViewById(2131362142);
        if ((a != 0) || (c)) {
          break label1050;
        }
        ((ImageView)localObject2).setVisibility(8);
        label608:
        ((ImageView)b.findViewById(2131362143)).setImageResource(aru.a(b, false));
        ((ImageView)b.findViewById(2131362145)).setImageResource(aru.a(c, false));
        ((ImageView)b.findViewById(2131362146)).setImageResource(aru.a(d, false));
        paramSnapType = new asz(paramSnapType);
        a.a(new atg(paramSnapType, new asx()));
        if (h.a() != BatteryInfoProvider.BatteryLevel.NO_BATTERY_FILTER)
        {
          paramSnapType = new art(g);
          localObject1 = h.a();
          a = b.a(2130968586);
          localObject2 = (ImageView)a.findViewById(2131361910);
          switch (art.1.a[localObject1.ordinal()])
          {
          }
        }
      }
      for (paramInt = 2130837646;; paramInt = 2130837645)
      {
        ((ImageView)localObject2).setImageResource(paramInt);
        paramSnapType = new asy(paramSnapType);
        a.a(new atg(paramSnapType, new asx()));
        if (akr.aa())
        {
          paramSnapType = new atk(i);
          a.a(paramSnapType);
        }
        if (k) {
          break label1091;
        }
        a.a();
        c.a();
        break;
        bhp.a();
        if (!xt.b()) {
          break label211;
        }
        paramSnapType = new asn(FragmentShader.Filter.INSTASNAP);
        a.a(new atg(paramSnapType));
        paramSnapType = new asn(FragmentShader.Filter.MISS_ETIKATE);
        a.a(new atg(paramSnapType));
        paramSnapType = new asn(FragmentShader.Filter.GREYSCALE);
        a.a(new atg(paramSnapType));
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
        ((ImageView)localObject2).setImageResource(aru.a(a, true));
        break label608;
        throw new IllegalArgumentException("ERROR: battery filter should not be created");
      }
      label1091:
      l = true;
    }
  }
  
  public final void a(SwipeImageView paramSwipeImageView) {}
  
  @awj
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
  
  @awj
  public final void b()
  {
    Iterator localIterator = a.a.iterator();
    while (localIterator.hasNext()) {
      ((ati)localIterator.next()).a();
    }
    c.f = true;
    PhotoEffectTask.a();
  }
  
  @bpi
  @awj
  public final void onGeofilterLoadedEvent(bcq parambcq)
  {
    bhp.a();
    a.a(new atk(i));
    if (!k)
    {
      a.a();
      c.invalidate();
    }
  }
  
  @bpi
  @awj
  public final void onWeatherUpdatedEvent(bfu parambfu)
  {
    
    if ((j) && (d.b() != null))
    {
      j = false;
      parambfu = new arw(b, g);
      parambfu.a();
      parambfu = new atf(parambfu);
      a.a(new atg(parambfu, new asx()));
      a.a(new atk(i));
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
 * Qualified Name:     asr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */