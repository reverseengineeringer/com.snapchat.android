import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ajt
{
  public static final String EMPTY_MAP = "{}";
  private static final String SET_STUDY_SETTINGS_EVENT = "SET_STUDY_SETTINGS";
  private static final String SET_STUDY_SETTINGS_FROM_DISK_EVENT = "SET_STUDY_SETTINGS_FROM_DISK";
  private static final String STUDY_SETTINGS_KEY = "study_settings";
  private static final String TAG = "StudySettings";
  private static final ajt sInstance = new ajt();
  private Map<String, Map<String, String>> mStudySettings;
  
  public static ajt a()
  {
    return sInstance;
  }
  
  private void a(String paramString)
  {
    if (mStudySettings == null)
    {
      Type localType = new TypeToken() {}.getType();
      mStudySettings = ((Map)atn.a().fromJson(paramString, localType));
      Timber.b("StudySettings", "Applied study settings: " + mStudySettings, new Object[0]);
      if (mStudySettings.size() > 0) {
        b("SET_STUDY_SETTINGS_FROM_DISK");
      }
    }
  }
  
  private void b(String paramString)
  {
    paramString = new EasyMetric(paramString);
    a(ajx.aE());
    HashMap localHashMap = new HashMap();
    Iterator localIterator = mStudySettings.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put((String)localEntry.getKey(), (String)((Map)localEntry.getValue()).get("experimentId"));
    }
    paramString.a("study_settings", localHashMap).a(false);
  }
  
  public final float a(String paramString1, String paramString2, float paramFloat)
  {
    return Float.valueOf(a(paramString1, paramString2, Float.toString(paramFloat))).floatValue();
  }
  
  public final int a(String paramString1, String paramString2, int paramInt)
  {
    return Integer.valueOf(a(paramString1, paramString2, Integer.toString(paramInt))).intValue();
  }
  
  public final long a(String paramString1, String paramString2)
  {
    return Long.valueOf(a(paramString1, paramString2, Long.toString(0L))).longValue();
  }
  
  public final String a(String paramString1, String paramString2, String paramString3)
  {
    a(ajx.aE());
    if ((mStudySettings.containsKey(paramString1)) && (((Map)mStudySettings.get(paramString1)).containsKey(paramString2))) {
      return (String)((Map)mStudySettings.get(paramString1)).get(paramString2);
    }
    return paramString3;
  }
  
  public final String a(Map<String, String> paramMap)
  {
    Object localObject1 = "{}";
    if (paramMap != null)
    {
      localObject1 = new HashMap();
      Type localType = new TypeToken() {}.getType();
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject2 = (Map.Entry)paramMap.next();
        String str = (String)((Map.Entry)localObject2).getKey();
        localObject2 = (String)((Map.Entry)localObject2).getValue();
        ((Map)localObject1).put(str, (Map)atn.a().fromJson((String)localObject2, localType));
      }
      mStudySettings = ((Map)localObject1);
      localObject1 = atn.a().toJson(localObject1);
      b("SET_STUDY_SETTINGS");
    }
    return (String)localObject1;
  }
  
  public final boolean a(String paramString1, String paramString2, boolean paramBoolean)
  {
    return Boolean.valueOf(a(paramString1, paramString2, Boolean.toString(paramBoolean))).booleanValue();
  }
}

/* Location:
 * Qualified Name:     ajt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */