import android.text.TextUtils;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;
import com.snapchat.android.model.chat.ChatMedia;

public final class nr
{
  private static final String TAG = "ChatEventAnalytics";
  private static final nr sInstance = new nr(ScAnalyticsEventEngine.a());
  private final ScAnalyticsEventEngine mScAnalyticsEventEngine;
  
  @cf
  private nr(ScAnalyticsEventEngine paramScAnalyticsEventEngine)
  {
    mScAnalyticsEventEngine = paramScAnalyticsEventEngine;
  }
  
  @cf
  private static hp a(@chc alc paramalc)
  {
    boolean bool = true;
    hp localhp = new hp();
    publisherId = mPublisherName;
    editionId = mEditionId;
    dsnapId = mDSnapId;
    mediaType = e(paramalc);
    if (mCaption != -1) {
      caption = Long.valueOf(mCaption);
    }
    if (mDrawing == 1) {}
    for (;;)
    {
      drawing = Boolean.valueOf(bool);
      if (mFilterVisual != null) {}
      try
      {
        filterVisual = hx.valueOf(mFilterVisual);
        if (mFilterInfo != null) {}
        try
        {
          filterInfo = hv.valueOf(mFilterInfo);
          return localhp;
        }
        catch (IllegalArgumentException localIllegalArgumentException2)
        {
          new StringBuilder("Invalid filter info type ").append(mFilterInfo);
        }
        bool = false;
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        for (;;)
        {
          new StringBuilder("Invalid filter visual type ").append(mFilterVisual);
        }
      }
    }
    return localhp;
  }
  
  @cf
  private static Long a(@chc DiscoverLinkStatusResult.LinkStatus paramLinkStatus)
  {
    switch (paramLinkStatus)
    {
    default: 
      return null;
    case ???: 
      return Long.valueOf(1L);
    }
    return Long.valueOf(0L);
  }
  
  public static nr a()
  {
    return sInstance;
  }
  
  public static void a(@chc akw paramakw)
  {
    if ((paramakw instanceof alb))
    {
      ScAnalyticsEventEngine.a(new gg());
      return;
    }
    gh localgh = new gh();
    String str;
    if ((paramakw instanceof ald))
    {
      str = paramakw.aj();
      if (!TextUtils.isEmpty(str)) {
        break label70;
      }
    }
    label70:
    for (long l = 0L;; l = str.length())
    {
      charCount = Long.valueOf(l);
      mediaType = e(paramakw);
      ScAnalyticsEventEngine.a(localgh);
      return;
    }
  }
  
  public static void a(@chc alc paramalc, boolean paramBoolean, @chd Double paramDouble1, DiscoverLinkStatusResult.LinkStatus paramLinkStatus, @chd Double paramDouble2)
  {
    hp localhp = a(paramalc);
    timeViewed = paramDouble1;
    if (paramBoolean) {}
    Long localLong;
    switch (paramLinkStatus)
    {
    default: 
      localLong = null;
      snapAvailable = localLong;
      editionAvailable = a(paramLinkStatus);
      snapTimeSec = paramDouble2;
      if ((paramalc.X()) && (paramDouble1 != null) && (paramDouble2 != null)) {
        if (Double.compare(paramDouble1.doubleValue(), paramDouble2.doubleValue()) < 0) {
          break label144;
        }
      }
      break;
    }
    label144:
    for (paramBoolean = true;; paramBoolean = false)
    {
      fullView = Boolean.valueOf(paramBoolean);
      ScAnalyticsEventEngine.a(localhp);
      return;
      localLong = Long.valueOf(1L);
      break;
      localLong = Long.valueOf(0L);
      break;
    }
  }
  
  @cf
  private static hb b(@chc alc paramalc)
  {
    boolean bool = true;
    hb localhb = new hb();
    publisherId = mPublisherName;
    editionId = mEditionId;
    adsnapId = mAdId;
    mediaType = e(paramalc);
    if (mCaption != -1) {
      caption = Long.valueOf(mCaption);
    }
    if (mDrawing == 1) {}
    for (;;)
    {
      drawing = Boolean.valueOf(bool);
      if (mFilterVisual != null) {}
      try
      {
        filterVisual = hx.valueOf(mFilterVisual);
        if (mFilterInfo != null) {}
        try
        {
          filterInfo = hv.valueOf(mFilterInfo);
          return localhb;
        }
        catch (IllegalArgumentException localIllegalArgumentException2)
        {
          new StringBuilder("Invalid filter info type ").append(mFilterInfo);
        }
        bool = false;
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        for (;;)
        {
          new StringBuilder("Invalid filter visual type ").append(mFilterVisual);
        }
      }
    }
    return localhb;
  }
  
  public static void b(@chc akw paramakw)
  {
    if ((paramakw instanceof alb))
    {
      ScAnalyticsEventEngine.a(new gk());
      return;
    }
    gj localgj = new gj();
    mediaType = e(paramakw);
    ackTimeSec = Double.valueOf((paramakw.A() - paramakw.U()) * 1.0D / 1000.0D);
    ScAnalyticsEventEngine.a(localgj);
  }
  
  public static void b(@chc alc paramalc, boolean paramBoolean, @chd Double paramDouble1, DiscoverLinkStatusResult.LinkStatus paramLinkStatus, @chd Double paramDouble2)
  {
    hb localhb = b(paramalc);
    timeViewed = paramDouble1;
    if (paramBoolean) {
      editionAvailable = a(paramLinkStatus);
    }
    snapTimeSec = paramDouble2;
    if ((paramalc.X()) && (paramDouble1 != null) && (paramDouble2 != null)) {
      if (Double.compare(paramDouble1.doubleValue(), paramDouble2.doubleValue()) < 0) {
        break label80;
      }
    }
    label80:
    for (paramBoolean = true;; paramBoolean = false)
    {
      fullView = Boolean.valueOf(paramBoolean);
      ScAnalyticsEventEngine.a(localhb);
      return;
    }
  }
  
  public static void c(@chc akw paramakw)
  {
    gf localgf = new gf();
    mediaType = e(paramakw);
    ScAnalyticsEventEngine.a(localgf);
  }
  
  public static void d(@chc akw paramakw)
  {
    gi localgi = new gi();
    mediaType = e(paramakw);
    ScAnalyticsEventEngine.a(localgi);
  }
  
  @cf
  @chd
  private static ih e(@chc akw paramakw)
  {
    if ((paramakw instanceof ald)) {
      return ih.TEXT;
    }
    if ((paramakw instanceof ChatMedia)) {
      paramakw = ((ChatMedia)paramakw).D();
    }
    switch (nr.1.$SwitchMap$com$snapchat$android$model$chat$ChatMedia$MediaType[paramakw.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return ih.IMAGE;
    case 2: 
      return ih.VIDEO;
    }
    return ih.VIDEO_NO_SOUND;
  }
}

/* Location:
 * Qualified Name:     nr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */