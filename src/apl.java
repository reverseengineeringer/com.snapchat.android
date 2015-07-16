import android.text.TextUtils;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;

public final class apl
{
  private static final apl c = new apl();
  public final ama a;
  public apl.a b;
  private final ScAnalyticsEventEngine d;
  private final EasyMetric.EasyMetricFactory e;
  private final auk f;
  private final bhk g;
  
  private apl()
  {
    this(ScAnalyticsEventEngine.a(), new auk(), new EasyMetric.EasyMetricFactory(), new bhk(), ama.a());
  }
  
  private apl(ScAnalyticsEventEngine paramScAnalyticsEventEngine, auk paramauk, EasyMetric.EasyMetricFactory paramEasyMetricFactory, bhk parambhk, ama paramama)
  {
    d = paramScAnalyticsEventEngine;
    f = paramauk;
    e = paramEasyMetricFactory;
    g = parambhk;
    a = paramama;
    b = null;
  }
  
  public static double a(double paramDouble)
  {
    return Math.round(paramDouble * 10.0D) / 10.0D;
  }
  
  public static apl a()
  {
    return c;
  }
  
  public static ih a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return ih.IMAGE;
    case 1: 
      return ih.VIDEO;
    }
    return ih.VIDEO_NO_SOUND;
  }
  
  public static boolean a(@chc akl paramakl)
  {
    return a(auk.a(mUsername, akp.g()));
  }
  
  private static boolean a(@chd Friend paramFriend)
  {
    return (paramFriend != null) && (mIsLocalStory);
  }
  
  public static boolean a(@chc String paramString)
  {
    return a(auk.a(paramString, akp.g()));
  }
  
  public static long b(boolean paramBoolean)
  {
    if (paramBoolean) {
      return 0L;
    }
    return 1L;
  }
  
  public static void b(@chc akl paramakl)
  {
    md localmd = new md();
    storyType = c(paramakl);
    posterId = mUsername;
    storySnapId = paramakl.d();
    if (a(paramakl)) {
      geoFence = "LOCAL";
    }
    storySnapId = paramakl.d();
    snapTime = Double.valueOf(paramakl.G());
    ScAnalyticsEventEngine.a(localmd);
  }
  
  public static mj c(@chc akl paramakl)
  {
    if (mIsShared) {
      return mj.OUR;
    }
    if (TextUtils.equals(mStoryId, "my_story_ads79sdf")) {
      return mj.MY;
    }
    if (paramakl.aC()) {
      return mj.BRAND;
    }
    return mj.USER;
  }
  
  public final void a(long paramLong)
  {
    if (b == null) {
      b = new apl.a();
    }
    b.i = paramLong;
  }
  
  public final void a(@chc String paramString, @chc fz paramfz)
  {
    lx locallx = new lx();
    posterId = paramString;
    additionalInfo = paramfz;
    viewLocation = b.c;
    storyType = mj.OUR;
    if (a(paramString)) {
      geoFence = "LOCAL";
    }
    ScAnalyticsEventEngine.a(locallx);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (b == null) {
      b = new apl.a();
    }
    apl.a locala = b;
    if (paramBoolean) {}
    for (long l = 0L;; l = 1L)
    {
      c = Long.valueOf(l);
      return;
    }
  }
  
  public static final class a
  {
    public boolean a = false;
    public Long b = Long.valueOf(0L);
    public Long c = Long.valueOf(0L);
    public double d = 0.0D;
    public hu e;
    public mj f = null;
    public String g = null;
    public boolean h = false;
    public long i = -1L;
  }
}

/* Location:
 * Qualified Name:     apl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */