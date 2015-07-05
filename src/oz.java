import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public final class oz
{
  private static final oz sInstance = new oz(ajt.a());
  private Map<String, Collection<oz.b>> mFeatures;
  private ajt mStudySettings;
  
  private oz(ajt paramajt)
  {
    mStudySettings = paramajt;
    paramajt = new oz.b("stories_delta_response", new oz.a("DELTA_RESPONSE", "FRIENDS_STORY_DELTA", "on"));
    oz.b localb = new oz.b("conversations_delta_response", new oz.a("DELTA_RESPONSE", "CONVERSATIONS_DELTA", "on"));
    mFeatures = new HashMap();
    mFeatures.put("/loq/all_updates", Arrays.asList(new oz.b[] { paramajt, localb }));
    mFeatures.put("/loq/conversations", Arrays.asList(new oz.b[] { localb }));
    mFeatures.put("/bq/stories", Arrays.asList(new oz.b[] { paramajt }));
  }
  
  public static oz a()
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
        oz.b localb = (oz.b)paramString.next();
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
          localObject = ((ajt)localObject).a(mABTestForFeature.studyId, mABTestForFeature.variable, null);
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
    @cgc
    oz.a mABTestForFeature;
    String mFeatureName;
    boolean mOnByDefault;
    
    b(String paramString, oz.a parama)
    {
      this(paramString, parama, (byte)0);
    }
    
    private b(String paramString, oz.a parama, byte paramByte)
    {
      mFeatureName = paramString;
      mOnByDefault = false;
      mABTestForFeature = parama;
    }
  }
}

/* Location:
 * Qualified Name:     oz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */