import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;
import com.snapchat.android.model.chat.ChatMedia;

public final class na
{
  private static final String TAG = "ChatEventAnalytics";
  private static final na sInstance = new na(ScAnalyticsEventEngine.a());
  private final ScAnalyticsEventEngine mScAnalyticsEventEngine;
  
  @cf
  private na(ScAnalyticsEventEngine paramScAnalyticsEventEngine)
  {
    mScAnalyticsEventEngine = paramScAnalyticsEventEngine;
  }
  
  @cf
  private static hg a(@cgb akh paramakh)
  {
    boolean bool = true;
    hg localhg = new hg();
    publisherId = mPublisherName;
    editionId = mEditionId;
    dsnapId = mDSnapId;
    mediaType = e(paramakh);
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
        filterVisual = ho.valueOf(mFilterVisual);
        if (mFilterInfo != null) {}
        try
        {
          filterInfo = hm.valueOf(mFilterInfo);
          return localhg;
        }
        catch (IllegalArgumentException localIllegalArgumentException2)
        {
          Timber.f("ChatEventAnalytics", "Invalid filter info type " + mFilterInfo, new Object[0]);
        }
        bool = false;
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        for (;;)
        {
          Timber.f("ChatEventAnalytics", "Invalid filter visual type " + mFilterVisual, new Object[0]);
        }
      }
    }
    return localhg;
  }
  
  @cf
  private static Long a(@cgb DiscoverLinkStatusResult.LinkStatus paramLinkStatus)
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
  
  public static na a()
  {
    return sInstance;
  }
  
  public static void a(@cgb akb paramakb)
  {
    if ((paramakb instanceof akg))
    {
      ScAnalyticsEventEngine.a(new fx());
      return;
    }
    fy localfy = new fy();
    String str;
    if ((paramakb instanceof aki))
    {
      str = paramakb.al();
      if (!TextUtils.isEmpty(str)) {
        break label70;
      }
    }
    label70:
    for (long l = 0L;; l = str.length())
    {
      charCount = Long.valueOf(l);
      mediaType = e(paramakb);
      ScAnalyticsEventEngine.a(localfy);
      return;
    }
  }
  
  public static void a(@cgb akh paramakh, boolean paramBoolean, @cgc Double paramDouble1, DiscoverLinkStatusResult.LinkStatus paramLinkStatus, @cgc Double paramDouble2)
  {
    hg localhg = a(paramakh);
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
      if ((paramakh.V()) && (paramDouble1 != null) && (paramDouble2 != null)) {
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
      ScAnalyticsEventEngine.a(localhg);
      return;
      localLong = Long.valueOf(1L);
      break;
      localLong = Long.valueOf(0L);
      break;
    }
  }
  
  @cf
  private static gs b(@cgb akh paramakh)
  {
    boolean bool = true;
    gs localgs = new gs();
    publisherId = mPublisherName;
    editionId = mEditionId;
    adsnapId = mAdId;
    mediaType = e(paramakh);
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
        filterVisual = ho.valueOf(mFilterVisual);
        if (mFilterInfo != null) {}
        try
        {
          filterInfo = hm.valueOf(mFilterInfo);
          return localgs;
        }
        catch (IllegalArgumentException localIllegalArgumentException2)
        {
          Timber.f("ChatEventAnalytics", "Invalid filter info type " + mFilterInfo, new Object[0]);
        }
        bool = false;
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        for (;;)
        {
          Timber.f("ChatEventAnalytics", "Invalid filter visual type " + mFilterVisual, new Object[0]);
        }
      }
    }
    return localgs;
  }
  
  public static void b(@cgb akb paramakb)
  {
    if ((paramakb instanceof akg))
    {
      ScAnalyticsEventEngine.a(new gb());
      return;
    }
    ga localga = new ga();
    mediaType = e(paramakb);
    ackTimeSec = Double.valueOf((paramakb.z() - paramakb.W()) * 1.0D / 1000.0D);
    ScAnalyticsEventEngine.a(localga);
  }
  
  public static void b(@cgb akh paramakh, boolean paramBoolean, @cgc Double paramDouble1, DiscoverLinkStatusResult.LinkStatus paramLinkStatus, @cgc Double paramDouble2)
  {
    gs localgs = b(paramakh);
    timeViewed = paramDouble1;
    if (paramBoolean) {
      editionAvailable = a(paramLinkStatus);
    }
    snapTimeSec = paramDouble2;
    if ((paramakh.V()) && (paramDouble1 != null) && (paramDouble2 != null)) {
      if (Double.compare(paramDouble1.doubleValue(), paramDouble2.doubleValue()) < 0) {
        break label80;
      }
    }
    label80:
    for (paramBoolean = true;; paramBoolean = false)
    {
      fullView = Boolean.valueOf(paramBoolean);
      ScAnalyticsEventEngine.a(localgs);
      return;
    }
  }
  
  public static void c(@cgb akb paramakb)
  {
    fw localfw = new fw();
    mediaType = e(paramakb);
    ScAnalyticsEventEngine.a(localfw);
  }
  
  public static void d(@cgb akb paramakb)
  {
    fz localfz = new fz();
    mediaType = e(paramakb);
    ScAnalyticsEventEngine.a(localfz);
  }
  
  @cf
  @cgc
  private static hy e(@cgb akb paramakb)
  {
    if ((paramakb instanceof aki)) {
      return hy.TEXT;
    }
    if ((paramakb instanceof ChatMedia)) {
      paramakb = ((ChatMedia)paramakb).C();
    }
    switch (na.1.$SwitchMap$com$snapchat$android$model$chat$ChatMedia$MediaType[paramakb.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return hy.IMAGE;
    case 2: 
      return hy.VIDEO;
    }
    return hy.VIDEO_NO_SOUND;
  }
}

/* Location:
 * Qualified Name:     na
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */