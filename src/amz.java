import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent.RefreshError;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import com.snapchat.android.util.profileimages.ProfileImageUtils.ProfileImageSize;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.inject.Provider;

public class amz
  extends ana
  implements akp.b, ui.b<bhx>
{
  protected bjx a;
  protected final akr b;
  protected final String c;
  protected final aph d;
  protected final boolean e;
  protected final boolean f;
  final UUID g;
  private final Provider<akp> k;
  private final pm l;
  private final axn m;
  private final ProfileImageUtils n;
  private final Pair<Integer, Integer> o;
  private final int p;
  
  public amz(Intent paramIntent)
  {
    this(paramIntent, akp.UNSAFE_USER_PROVIDER, pm.a(), axo.PROFILE_IMAGE_CACHE, ProfileImageUtils.a(), akr.a(), aph.a());
  }
  
  @cf
  amz(Intent paramIntent, @chc Provider<akp> paramProvider, @chc pm parampm, @chc axn paramaxn, @chc ProfileImageUtils paramProfileImageUtils, @chc akr paramakr, @chc aph paramaph)
  {
    super(paramIntent);
    k = paramProvider;
    l = parampm;
    m = paramaxn;
    n = paramProfileImageUtils;
    b = paramakr;
    d = paramaph;
    e = paramIntent.getBooleanExtra("FromNotification", false);
    f = paramIntent.getBooleanExtra("CalledOnLoginOrOnResume", false);
    o = zi.c(akr.l());
    g = UUID.randomUUID();
    p = aph.b(i);
    registerCallback(bhx.class, this);
    c = c();
  }
  
  public void D_()
  {
    if ((a != null) && (bjx.a.NOT_EQUAL == a.e()))
    {
      if (TextUtils.equals(c, akr.aA())) {
        akr.l(a.b());
      }
    }
    else {
      return;
    }
    d.a(false, false);
  }
  
  public final void a(Context paramContext)
  {
    h = ((akp)k.get());
    if ((h == null) || (!h.mInitialized) || (!akr.m())) {
      return;
    }
    super.a(paramContext);
  }
  
  @cbr
  protected final void a(bhx parambhx)
  {
    
    if ((!akr.m()) || (parambhx == null)) {
      return;
    }
    Object localObject1;
    if (parambhx.e())
    {
      if (avb.a(parambhx.d().T()))
      {
        ProfileImageUtils.a(System.currentTimeMillis(), m);
        akr.e(false);
      }
      localObject1 = parambhx.d().S();
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!TextUtils.equals(akr.bc(), (CharSequence)localObject1)))
      {
        m.c("snaptag");
        akr.p((String)localObject1);
        aph.a().c(akp.y(), (String)localObject1);
      }
    }
    if ((akr.C()) && (!ProfileImageUtils.a(m))) {
      d.a(akp.y(), ProfileImageUtils.ProfileImageSize.MEDIUM.toString(), akr.l());
    }
    a = parambhx.a();
    if ((a != null) && (bjx.a.EQUAL == a.e())) {}
    for (boolean bool = true;; bool = false)
    {
      label210:
      Object localObject2;
      String str1;
      if (bool)
      {
        if (parambhx.c()) {
          h.a(parambhx.b());
        }
        akk.a().h();
        h.u();
        localObject1 = new akp.a(false, false, false, false);
        localObject2 = zi.c(akr.l());
        new StringBuilder("onSuccess - # of unviewed chats=").append(first).append(" # of unviewed snaps=").append(second).append(" isPrunedResponse=").append(bool);
        AnalyticsEvents.a(e, ((Integer)first).intValue() - ((Integer)o.first).intValue(), ((Integer)second).intValue() - ((Integer)o.second).intValue(), ((Integer)first).intValue(), ((Integer)second).intValue());
        bbo.a().a(new SnapMessageFeedRefreshedEvent(g, SnapMessageFeedRefreshedEvent.RefreshError.NONE));
        bbo.a().a(new bdw());
        bbo.a().a(new bfn(true));
        bbo.a().a(new bfg(g, true, f, (akp.a)localObject1));
        if (!akr.aF())
        {
          localObject1 = akp.y();
          parambhx = parambhx.d();
          if ((localObject1 != null) && (parambhx != null))
          {
            localObject2 = parambhx.P();
            str1 = parambhx.Q();
            if ((localObject2 != null) && (str1 != null)) {
              break label585;
            }
          }
        }
      }
      label585:
      label611:
      label652:
      label775:
      for (;;)
      {
        h.a(this);
        akr.o(false);
        if ((h.mSnapsToBeUpdatedOnServer == null) || (h.mSnapsToBeUpdatedOnServer.isEmpty())) {
          break;
        }
        aph.a().d();
        parambhx = new ArrayList(h.mSnapsToBeUpdatedOnServer.values()).iterator();
        while (parambhx.hasNext()) {
          ((aka)parambhx.next()).x();
        }
        break;
        if (a != null) {
          new StringBuilder("Response checksum compare results: ").append(a.f());
        }
        localObject1 = b(parambhx);
        break label210;
        localObject1 = new auc((Context)localObject1);
        bhp.b();
        String str2;
        if (aud.a(mContext))
        {
          parambhx = "TAB";
          str2 = ((auc)localObject1).a();
          if (str2 != null) {
            break label652;
          }
        }
        for (parambhx = null;; parambhx = (bhx)localObject1)
        {
          if (parambhx == null) {
            break label775;
          }
          new qd((String)localObject2, parambhx).executeSynchronously();
          break;
          parambhx = "PHN";
          break label611;
          localObject1 = new HashMap();
          ((Map)localObject1).put("c8", "devgrp," + parambhx);
          ((Map)localObject1).put("c9", "devid," + str2);
          ((Map)localObject1).put("c10", "plt," + "MBL");
          ((Map)localObject1).put("c13", "asid," + str1);
        }
      }
    }
  }
  
  protected akp.a b(bhx parambhx)
  {
    return h.a(parambhx, f);
  }
  
  protected String c()
  {
    return akr.aA();
  }
  
  public Object getRequestPayload()
  {
    return buildAuthPayload(new amz.a().a(c).a(Integer.valueOf(l.mResolution.b())).b(Integer.valueOf(l.mResolution.a())).c(Integer.valueOf(l.mMaxVideoHeight)).d(Integer.valueOf(l.mMaxVideoWidth)).b(pq.a().a(l_())));
  }
  
  protected String l_()
  {
    return "/loq/all_updates";
  }
  
  @ud
  public final class a
    extends bhw
  {
    public a() {}
  }
}

/* Location:
 * Qualified Name:     amz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */