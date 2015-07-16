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

public final class aow
  extends aos
{
  private final og e;
  private final apl f;
  private final aur g;
  private final String h;
  private final boolean i;
  private final double j;
  private final String k;
  private final String l;
  private final String m;
  private final mj n;
  private final boolean o;
  private final int p;
  private final String q;
  
  public aow(String paramString, long paramLong1, long paramLong2)
  {
    this(paramString, null, paramLong1, paramLong2, og.a(), apl.a());
  }
  
  public aow(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, System.currentTimeMillis(), -1L, og.a(), apl.a());
  }
  
  private aow(String paramString1, String paramString2, long paramLong1, long paramLong2, og paramog, apl paramapl)
  {
    this(paramog, paramapl, new aur(), paramString1, paramString2, paramLong1, paramLong2, false, 0.0D, null, null, null, false, null, 0);
  }
  
  public aow(String paramString1, boolean paramBoolean1, double paramDouble, long paramLong1, long paramLong2, String paramString2, String paramString3, String paramString4, mj parammj, boolean paramBoolean2, String paramString5, int paramInt)
  {
    this(og.a(), apl.a(), new aur(), paramString3, paramString1, paramLong1, paramLong2, paramBoolean1, paramDouble, paramString2, paramString4, parammj, paramBoolean2, paramString5, paramInt);
  }
  
  private aow(og paramog, apl paramapl, aur paramaur, String paramString1, String paramString2, long paramLong1, long paramLong2, boolean paramBoolean1, double paramDouble, String paramString3, String paramString4, mj parammj, boolean paramBoolean2, String paramString5, int paramInt)
  {
    super(paramString1, paramLong1, paramLong2);
    e = paramog;
    f = paramapl;
    g = paramaur;
    h = paramString2;
    i = paramBoolean1;
    j = paramDouble;
    k = paramString3;
    l = paramString1;
    m = paramString4;
    n = parammj;
    o = paramBoolean2;
    q = paramString5;
    p = paramInt;
  }
  
  public final String a()
  {
    aow.a locala = new aow.a((byte)0);
    c = h;
    f = i;
    e = j;
    a = k;
    b = l;
    d = m;
    h = n;
    g = o;
    return g.a(locala, aow.a.class);
  }
  
  public final void a(long paramLong)
  {
    Object localObject1 = (aka)zi.a(a, h);
    if (localObject1 != null)
    {
      ((aka)localObject1).w();
      og.a((aka)localObject1);
      AnalyticsEvents.a((aka)localObject1);
    }
    label147:
    label258:
    label486:
    label492:
    label564:
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
      boolean bool2;
      int i1;
      if (akp.g() != null)
      {
        localObject2 = akk.a().k().iterator();
        do
        {
          while (!((Iterator)localObject3).hasNext())
          {
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
            localObject3 = ((StoryCollection)((Iterator)localObject2).next()).f().iterator();
          }
          localObject1 = (akl)((Iterator)localObject3).next();
          localObject4 = ((akl)localObject1).d();
        } while ((TextUtils.isEmpty((CharSequence)localObject4)) || (!((String)localObject4).equals(str)));
        if (localObject1 != null)
        {
          ((akl)localObject1).w();
          AnalyticsEvents.a((aka)localObject1);
        }
        localObject1 = new akm(h, paramLong, 1);
        gmStoryViewRecordsSinceLastServerChange.put(mId, localObject1);
        boolean bool1 = i;
        d = j;
        str = l;
        localObject4 = h;
        localObject5 = m;
        localObject2 = n;
        bool2 = o;
        localObject3 = q;
        i1 = p;
        if (!bool2) {
          break label486;
        }
        localObject1 = "LOCAL";
        if (!bool1) {
          break label492;
        }
        localObject4 = new lw();
        posterId = str;
        adsnapId = ((String)localObject5);
        storyType = ((mj)localObject2);
        snapTime = Double.valueOf(d);
        if (bool2) {
          geoFence = "LOCAL";
        }
        ScAnalyticsEventEngine.a((ml)localObject4);
      }
      for (;;)
      {
        if (TextUtils.isEmpty((CharSequence)localObject3)) {
          break label564;
        }
        localObject4 = apl.a(i1);
        localObject5 = new ib();
        posterId = str;
        encFilterGeofilterId = ((String)localObject3);
        storyType = ((mj)localObject2);
        mediaType = ((ih)localObject4);
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          geoFence = ((String)localObject1);
        }
        ScAnalyticsEventEngine.a((ml)localObject5);
        break;
        localObject1 = (StoryGroup)amStories.get("my_story_ads79sdf");
        if (localObject1 != null)
        {
          localObject2 = ((StoryGroup)localObject1).l().iterator();
          for (;;)
          {
            if (((Iterator)localObject2).hasNext())
            {
              localObject1 = (akl)((Iterator)localObject2).next();
              localObject3 = ((akl)localObject1).d();
              if ((!TextUtils.isEmpty((CharSequence)localObject3)) && (((String)localObject3).equals(str))) {
                break;
              }
            }
          }
        }
        localObject1 = null;
        break label147;
        localObject1 = null;
        break label258;
        localObject5 = new me();
        if (str != null) {
          posterId = str;
        }
        if (localObject4 != null) {
          storySnapId = ((String)localObject4);
        }
        if (localObject2 != null) {
          storyType = ((mj)localObject2);
        }
        snapTime = Double.valueOf(d);
        if (bool2) {
          geoFence = "LOCAL";
        }
        ScAnalyticsEventEngine.a((ml)localObject5);
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
    @SerializedName("snapTime")
    public double e;
    @SerializedName("isDynamicAdSlot")
    public boolean f;
    @SerializedName("isLocalStory")
    public boolean g;
    @SerializedName("type")
    public mj h;
    @SerializedName("storyFilterId")
    public String i;
    @SerializedName("mediaType")
    public int j;
  }
}

/* Location:
 * Qualified Name:     aow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */