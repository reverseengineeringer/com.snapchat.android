import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public final class pq
{
  private static final pq sInstance = new pq(akn.a());
  private Map<String, Collection<pq.b>> mFeatures;
  private akn mStudySettings;
  
  private pq(akn paramakn)
  {
    mStudySettings = paramakn;
    paramakn = new pq.b("stories_delta_response", new pq.a("DELTA_RESPONSE", "FRIENDS_STORY_DELTA", "on"));
    pq.b localb = new pq.b("conversations_delta_response", new pq.a("DELTA_RESPONSE", "CONVERSATIONS_DELTA", "on"));
    mFeatures = new HashMap();
    mFeatures.put("/loq/all_updates", Arrays.asList(new pq.b[] { paramakn, localb }));
    mFeatures.put("/loq/conversations", Arrays.asList(new pq.b[] { localb }));
    mFeatures.put("/bq/stories", Arrays.asList(new pq.b[] { paramakn }));
  }
  
  public static pq a()
  {
    return sInstance;
  }
  
  public final String a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    paramString = (Collection)mFeatures.get(paramString);
    if (paramString != null)
    {
      paramString = paramString.iterator();
      label149:
      while (paramString.hasNext())
      {
        pq.b localb = (pq.b)paramString.next();
        Object localObject = mStudySettings;
        boolean bool;
        if (mABTestForFeature == null) {
          bool = mOnByDefault;
        }
        for (;;)
        {
          if (!bool) {
            break label149;
          }
          localHashMap.put(mFeatureName, Boolean.valueOf(true));
          break;
          localObject = ((akn)localObject).a(mABTestForFeature.studyId, mABTestForFeature.variable, null);
          if ((localObject != null) && (((String)localObject).equals(mABTestForFeature.onValue))) {
            bool = true;
          } else {
            bool = false;
          }
        }
      }
    }
    return new JSONObject(localHashMap).toString();
  }
  
  public static final class a
  {
    public String onValue;
    public String studyId;
    public String variable;
    
    a(String paramString1, String paramString2, String paramString3)
    {
      studyId = paramString1;
      variable = paramString2;
      onValue = paramString3;
    }
  }
  
  public static final class b
  {
    @chd
    pq.a mABTestForFeature;
    String mFeatureName;
    boolean mOnByDefault;
    
    b(String paramString, pq.a parama)
    {
      this(paramString, parama, (byte)0);
    }
    
    private b(String paramString, pq.a parama, byte paramByte)
    {
      mFeatureName = paramString;
      mOnByDefault = false;
      mABTestForFeature = parama;
    }
  }
}

/* Location:
 * Qualified Name:     pq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */