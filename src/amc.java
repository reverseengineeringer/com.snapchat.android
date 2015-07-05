import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent.RefreshError;
import com.snapchat.android.util.profileimages.ProfileImageUtils.ProfileImageSize;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.inject.Provider;

public class amc
  extends amd
  implements ajv.b, ts.b<bgx>
{
  protected biw a;
  protected final ajx b;
  protected final String c;
  protected final aol d;
  protected final boolean e;
  protected final boolean f;
  final UUID g;
  private final Provider<ajv> k;
  private final ov l;
  private final awp m;
  private final Pair<Integer, Integer> n;
  private final int o;
  
  public amc(Intent paramIntent)
  {
    this(paramIntent, ajv.UNSAFE_USER_PROVIDER, ov.a(), awq.PROFILE_IMAGE_CACHE, ajx.a(), aol.a());
  }
  
  @cf
  amc(Intent paramIntent, @cgb Provider<ajv> paramProvider, @cgb ov paramov, @cgb awp paramawp, @cgb ajx paramajx, @cgb aol paramaol)
  {
    super(paramIntent);
    k = paramProvider;
    l = paramov;
    m = paramawp;
    b = paramajx;
    d = paramaol;
    e = paramIntent.getBooleanExtra("FromNotification", false);
    f = paramIntent.getBooleanExtra("CalledOnLoginOrOnResume", false);
    n = ym.c(ajx.l());
    g = UUID.randomUUID();
    o = aol.b(i);
    a(bgx.class, this);
    c = h();
  }
  
  public void D_()
  {
    if ((a != null) && (biw.a.NOT_EQUAL == a.e()))
    {
      if (TextUtils.equals(c, ajx.aB())) {
        ajx.l(a.b());
      }
    }
    else {
      return;
    }
    d.a(false, false);
  }
  
  public final void a(Context paramContext)
  {
    h = ((ajv)k.get());
    if ((h == null) || (!h.mInitialized) || (!ajx.m())) {
      return;
    }
    super.a(paramContext);
  }
  
  @caq
  protected final void a(bgx parambgx)
  {
    
    if ((!ajx.m()) || (parambgx == null)) {
      return;
    }
    Object localObject1;
    if (parambgx.e())
    {
      localObject1 = parambgx.d().S();
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!TextUtils.equals(ajx.bf(), (CharSequence)localObject1)))
      {
        m.c("snaptag");
        ajx.p((String)localObject1);
        aol.a().c(ajv.y(), (String)localObject1);
      }
    }
    if (ajx.C()) {
      d.a(ajv.y(), ProfileImageUtils.ProfileImageSize.MEDIUM.toString(), ajx.l());
    }
    a = parambgx.a();
    if ((a != null) && (biw.a.EQUAL == a.e())) {}
    for (boolean bool = true;; bool = false)
    {
      label186:
      Object localObject2;
      String str1;
      if (bool)
      {
        if (parambgx.c()) {
          h.a(parambgx.b());
        }
        ajq.a().h();
        h.u();
        Timber.b("AllUpdatesOperation", "No updates from server.", new Object[0]);
        localObject1 = new ajv.a(false, false, false, false);
        localObject2 = ym.c(ajx.l());
        Timber.c("AllUpdatesOperation", "onSuccess - # of unviewed chats=" + first + " # of unviewed snaps=" + second + " isPrunedResponse=" + bool, new Object[0]);
        AnalyticsEvents.a(e, ((Integer)first).intValue() - ((Integer)n.first).intValue(), ((Integer)second).intValue() - ((Integer)n.second).intValue(), ((Integer)first).intValue(), ((Integer)second).intValue());
        ban.a().a(new SnapMessageFeedRefreshedEvent(g, SnapMessageFeedRefreshedEvent.RefreshError.NONE));
        ban.a().a(new bcw());
        ban.a().a(new beo(true));
        ban.a().a(new beh(g, true, f, (ajv.a)localObject1));
        if (!ajx.aG())
        {
          localObject1 = ajv.y();
          parambgx = parambgx.d();
          if ((localObject1 != null) && (parambgx != null))
          {
            localObject2 = parambgx.P();
            str1 = parambgx.Q();
            if ((localObject2 != null) && (str1 != null)) {
              break label598;
            }
            Timber.f("AllUpdatesOperation", "Third party demographics tracking url or app ID was null.", new Object[0]);
          }
        }
      }
      label598:
      label624:
      label678:
      label801:
      for (;;)
      {
        h.a(this);
        ajx.p(false);
        if ((h.mSnapsToBeUpdatedOnServer == null) || (h.mSnapsToBeUpdatedOnServer.isEmpty())) {
          break;
        }
        aol.a().d();
        parambgx = new ArrayList(h.mSnapsToBeUpdatedOnServer.values()).iterator();
        while (parambgx.hasNext()) {
          ((aje)parambgx.next()).w();
        }
        break;
        if (a != null) {
          Timber.b("AllUpdatesOperation", "Response checksum compare results: " + a.f(), new Object[0]);
        }
        localObject1 = b(parambgx);
        break label186;
        localObject1 = new atd((Context)localObject1);
        bgp.b();
        String str2;
        if (ate.a(mContext))
        {
          parambgx = "TAB";
          str2 = ((atd)localObject1).a();
          if (str2 != null) {
            break label678;
          }
          Timber.b("DemographicsTrackingUtils", "Device id was null, not sending request to third party demographics tracking service.", new Object[0]);
        }
        for (parambgx = null;; parambgx = (bgx)localObject1)
        {
          if (parambgx == null) {
            break label801;
          }
          new pm((String)localObject2, parambgx).i();
          break;
          parambgx = "PHN";
          break label624;
          localObject1 = new HashMap();
          ((Map)localObject1).put("c8", "devgrp," + parambgx);
          ((Map)localObject1).put("c9", "devid," + str2);
          ((Map)localObject1).put("c10", "plt," + "MBL");
          ((Map)localObject1).put("c13", "asid," + str1);
        }
      }
    }
  }
  
  protected ajv.a b(bgx parambgx)
  {
    return h.a(parambgx, f);
  }
  
  public Object b()
  {
    return a(new amc.a().a(c).a(Integer.valueOf(l.mResolution.b())).b(Integer.valueOf(l.mResolution.a())).c(Integer.valueOf(l.mMaxVideoHeight)).d(Integer.valueOf(l.mMaxVideoWidth)).b(oz.a().a(e())));
  }
  
  protected String e()
  {
    return "/loq/all_updates";
  }
  
  protected String h()
  {
    return ajx.aB();
  }
  
  @tn
  public final class a
    extends bgw
  {
    public a() {}
  }
}

/* Location:
 * Qualified Name:     amc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */