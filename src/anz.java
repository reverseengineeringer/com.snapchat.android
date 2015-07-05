import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryGroup;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class anz
  extends anv
{
  private final np e;
  private final aop f;
  private final att g;
  private final String h;
  private final boolean i;
  private final double j;
  private final String k;
  private final String l;
  private final String m;
  private final lr n;
  private final boolean o;
  private final String p;
  private final int q;
  private final String r;
  
  public anz(String paramString, long paramLong1, long paramLong2)
  {
    this(paramString, null, paramLong1, paramLong2, np.a(), aop.a());
  }
  
  public anz(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, System.currentTimeMillis(), -1L, np.a(), aop.a());
  }
  
  private anz(String paramString1, String paramString2, long paramLong1, long paramLong2, np paramnp, aop paramaop)
  {
    this(paramnp, paramaop, new att(), paramString1, paramString2, paramLong1, paramLong2, false, 0.0D, null, null, null, false, null, null, 0);
  }
  
  public anz(String paramString1, boolean paramBoolean1, double paramDouble, long paramLong1, long paramLong2, String paramString2, String paramString3, String paramString4, lr paramlr, boolean paramBoolean2, String paramString5, String paramString6, int paramInt)
  {
    this(np.a(), aop.a(), new att(), paramString3, paramString1, paramLong1, paramLong2, paramBoolean1, paramDouble, paramString2, paramString4, paramlr, paramBoolean2, paramString5, paramString6, paramInt);
  }
  
  private anz(np paramnp, aop paramaop, att paramatt, String paramString1, String paramString2, long paramLong1, long paramLong2, boolean paramBoolean1, double paramDouble, String paramString3, String paramString4, lr paramlr, boolean paramBoolean2, String paramString5, String paramString6, int paramInt)
  {
    super(paramString1, paramLong1, paramLong2);
    e = paramnp;
    f = paramaop;
    g = paramatt;
    h = paramString2;
    i = paramBoolean1;
    j = paramDouble;
    k = paramString3;
    l = paramString1;
    m = paramString4;
    n = paramlr;
    o = paramBoolean2;
    p = paramString5;
    r = paramString6;
    q = paramInt;
  }
  
  public final String a()
  {
    anz.a locala = new anz.a((byte)0);
    c = h;
    g = i;
    f = j;
    a = k;
    b = l;
    d = m;
    i = n;
    h = o;
    e = p;
    return g.a(locala, anz.a.class);
  }
  
  public final void a(long paramLong)
  {
    Object localObject1 = (aje)ym.a(a, h);
    if (localObject1 != null)
    {
      ((aje)localObject1).v();
      np.a((aje)localObject1);
      AnalyticsEvents.a((aje)localObject1);
    }
    label147:
    label264:
    label504:
    label510:
    label594:
    for (;;)
    {
      this.d.d();
      return;
      String str = h;
      Object localObject2;
      Object localObject3;
      Object localObject4;
      double d;
      Object localObject5;
      Object localObject6;
      boolean bool2;
      int i1;
      if (ajv.g() != null)
      {
        localObject2 = ajq.a().k().iterator();
        do
        {
          while (!((Iterator)localObject3).hasNext())
          {
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
            localObject3 = ((StoryCollection)((Iterator)localObject2).next()).f().iterator();
          }
          localObject1 = (ajr)((Iterator)localObject3).next();
          localObject4 = ((ajr)localObject1).d();
        } while ((TextUtils.isEmpty((CharSequence)localObject4)) || (!((String)localObject4).equals(str)));
        if (localObject1 != null)
        {
          ((ajr)localObject1).v();
          AnalyticsEvents.a((aje)localObject1);
        }
        localObject1 = new ajs(h, paramLong, 1);
        gmStoryViewRecordsSinceLastServerChange.put(mId, localObject1);
        boolean bool1 = i;
        d = j;
        str = l;
        localObject5 = h;
        localObject6 = m;
        localObject2 = n;
        bool2 = o;
        localObject4 = p;
        localObject3 = r;
        i1 = q;
        if (!bool2) {
          break label504;
        }
        localObject1 = "LOCAL";
        if (!bool1) {
          break label510;
        }
        localObject5 = new le();
        posterId = str;
        adsnapId = ((String)localObject6);
        storyType = ((lr)localObject2);
        snapTime = Double.valueOf(d);
        if (bool2) {
          geoFence = "LOCAL";
        }
        if (localObject4 != null) {
          sponsor = ((String)localObject4);
        }
        ScAnalyticsEventEngine.a((lt)localObject5);
      }
      for (;;)
      {
        if (TextUtils.isEmpty((CharSequence)localObject3)) {
          break label594;
        }
        localObject4 = aop.a(i1);
        localObject5 = new hs();
        posterId = str;
        encFilterGeofilterId = ((String)localObject3);
        storyType = ((lr)localObject2);
        mediaType = ((hy)localObject4);
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          geoFence = ((String)localObject1);
        }
        ScAnalyticsEventEngine.a((lt)localObject5);
        break;
        localObject1 = (StoryGroup)amStories.get("my_story_ads79sdf");
        if (localObject1 != null)
        {
          localObject2 = ((StoryGroup)localObject1).l().iterator();
          for (;;)
          {
            if (((Iterator)localObject2).hasNext())
            {
              localObject1 = (ajr)((Iterator)localObject2).next();
              localObject3 = ((ajr)localObject1).d();
              if ((!TextUtils.isEmpty((CharSequence)localObject3)) && (((String)localObject3).equals(str))) {
                break;
              }
            }
          }
        }
        localObject1 = null;
        break label147;
        localObject1 = null;
        break label264;
        localObject6 = new lm();
        if (str != null) {
          posterId = str;
        }
        if (localObject5 != null) {
          storySnapId = ((String)localObject5);
        }
        if (localObject2 != null) {
          storyType = ((lr)localObject2);
        }
        snapTime = Double.valueOf(d);
        if (bool2) {
          geoFence = "LOCAL";
        }
        if (localObject4 != null) {
          sponsor = ((String)localObject4);
        }
        ScAnalyticsEventEngine.a((lt)localObject6);
      }
    }
  }
  
  public static class a
  {
    @SerializedName("storyId")
    public String a;
    @SerializedName("posterId")
    public String b;
    @SerializedName("snapId")
    public String c;
    @SerializedName("adSnapId")
    public String d;
    @SerializedName("sponsoredDisplayName")
    public String e;
    @SerializedName("snapTime")
    public double f;
    @SerializedName("isDynamicAdSlot")
    public boolean g;
    @SerializedName("isLocalStory")
    public boolean h;
    @SerializedName("type")
    public lr i;
    @SerializedName("storyFilterId")
    public String j;
    @SerializedName("mediaType")
    public int k;
  }
}

/* Location:
 * Qualified Name:     anz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */