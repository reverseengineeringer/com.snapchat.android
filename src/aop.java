import android.text.TextUtils;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;

public final class aop
{
  private static final aop c = new aop();
  public final ale a;
  public aop.a b = null;
  private final ScAnalyticsEventEngine d;
  private final EasyMetric.EasyMetricFactory e;
  private final atm f;
  private final bgk g;
  
  private aop()
  {
    this(ScAnalyticsEventEngine.a(), new atm(), new EasyMetric.EasyMetricFactory(), new bgk(), ale.a());
  }
  
  private aop(ScAnalyticsEventEngine paramScAnalyticsEventEngine, atm paramatm, EasyMetric.EasyMetricFactory paramEasyMetricFactory, bgk parambgk, ale paramale)
  {
    d = paramScAnalyticsEventEngine;
    f = paramatm;
    e = paramEasyMetricFactory;
    g = parambgk;
    a = paramale;
  }
  
  public static double a(double paramDouble)
  {
    return Math.round(paramDouble * 10.0D) / 10.0D;
  }
  
  public static long a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return 0L;
    }
    return 1L;
  }
  
  public static aop a()
  {
    return c;
  }
  
  public static hy a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return hy.IMAGE;
    case 1: 
      return hy.VIDEO;
    }
    return hy.VIDEO_NO_SOUND;
  }
  
  public static boolean a(@cgb ajr paramajr)
  {
    return a(atm.a(mUsername, ajv.g()));
  }
  
  private static boolean a(@cgc Friend paramFriend)
  {
    return (paramFriend != null) && (mIsLocalStory);
  }
  
  public static boolean a(@cgb String paramString)
  {
    return a(atm.a(paramString, ajv.g()));
  }
  
  public static void b(@cgb ajr paramajr)
  {
    ll localll = new ll();
    storyType = c(paramajr);
    posterId = mUsername;
    storySnapId = paramajr.d();
    if (paramajr.aw()) {
      sponsor = paramajr.ax();
    }
    if (a(paramajr)) {
      geoFence = "LOCAL";
    }
    storySnapId = paramajr.d();
    snapTime = Double.valueOf(paramajr.F());
    ScAnalyticsEventEngine.a(localll);
  }
  
  public static lr c(@cgb ajr paramajr)
  {
    if (mIsShared) {
      return lr.OUR;
    }
    if (TextUtils.equals(mStoryId, "my_story_ads79sdf")) {
      return lr.MY;
    }
    if (paramajr.aH()) {
      return lr.BRAND;
    }
    return lr.USER;
  }
  
  public final void a(@cgb String paramString, @cgb fq paramfq)
  {
    lf locallf = new lf();
    posterId = paramString;
    additionalInfo = paramfq;
    viewLocation = b.c;
    storyType = lr.OUR;
    if (a(paramString)) {
      geoFence = "LOCAL";
    }
    ScAnalyticsEventEngine.a(locallf);
  }
  
  public static final class a
  {
    public boolean a = false;
    public Long b = Long.valueOf(0L);
    public Long c = Long.valueOf(0L);
    public double d = 0.0D;
    public hl e;
    public lr f = null;
    public String g = null;
    public boolean h = false;
  }
}

/* Location:
 * Qualified Name:     aop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */