import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class all
{
  private static final String LEVELS = "levels";
  private static final String TIMERS = "timers";
  @SerializedName("eventName")
  @chc
  public String mEventName;
  @SerializedName("metrics")
  @chd
  protected Map<String, Map<String, List<String>>> mMetrics;
  @SerializedName("params")
  @chd
  protected Map<String, Object> mParams;
  @SerializedName("ts")
  @chc
  public double mTimestamp;
  
  public all() {}
  
  private all(@chc String paramString, double paramDouble)
  {
    mEventName = paramString;
    mTimestamp = paramDouble;
  }
  
  @chd
  public final String a()
  {
    return aul.a().toJson(mParams);
  }
  
  @chd
  public final String b()
  {
    if (mMetrics == null) {
      return null;
    }
    Object localObject = (Map)mMetrics.get("timers");
    if (localObject == null) {
      return null;
    }
    TreeMap localTreeMap = new TreeMap();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      List localList = (List)localEntry.getValue();
      if (localList.size() != 1) {
        throw new IllegalStateException("Multi-element lists are not supported.");
      }
      localTreeMap.put(localEntry.getKey(), localList.get(0));
    }
    return aul.a().toJson(localTreeMap);
  }
  
  @chd
  public final String c()
  {
    if (mMetrics == null) {
      return null;
    }
    Object localObject = (Map)mMetrics.get("levels");
    if (localObject == null) {
      return null;
    }
    TreeMap localTreeMap = new TreeMap();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      List localList = (List)localEntry.getValue();
      if (localList.size() != 1) {
        throw new IllegalStateException("Multi-element lists are not supported.");
      }
      localTreeMap.put(localEntry.getKey(), localList.get(0));
    }
    return aul.a().toJson(localTreeMap);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(mEventName);
    localStringBuilder.append(" ");
    localStringBuilder.append(mTimestamp);
    localStringBuilder.append(" ");
    if (mParams != null)
    {
      Iterator localIterator = mParams.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append("[");
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append(",");
        localStringBuilder.append(localEntry.getValue());
        localStringBuilder.append("]");
      }
    }
    return localStringBuilder.toString();
  }
  
  public static final class a
  {
    private final String mEventName;
    private Map<String, List<String>> mLevels;
    private Map<String, Object> mParams;
    private Map<String, List<String>> mTimers;
    public double mTimestamp;
    
    public a(@chc String paramString)
    {
      mEventName = paramString;
      mTimestamp = (System.currentTimeMillis() / 1000.0D);
    }
    
    public final a a(@chc String paramString1, @chc String paramString2)
    {
      if (mTimers == null) {
        mTimers = new HashMap();
      }
      paramString2 = Arrays.asList(new String[] { paramString2 });
      mTimers.put(paramString1, paramString2);
      return this;
    }
    
    public final a a(@chd Map<String, Object> paramMap)
    {
      if (paramMap != null)
      {
        if (mParams == null) {
          mParams = new HashMap();
        }
        mParams.putAll(paramMap);
      }
      return this;
    }
    
    public final all a()
    {
      all localall = new all(mEventName, mTimestamp, (byte)0);
      mParams = mParams;
      if ((mTimers != null) || (mLevels != null))
      {
        mMetrics = new TreeMap();
        if (mTimers != null) {
          mMetrics.put("timers", mTimers);
        }
        if (mLevels != null) {
          mMetrics.put("levels", mLevels);
        }
      }
      return localall;
    }
    
    public final a b(@chc String paramString1, @chc String paramString2)
    {
      if (mLevels == null) {
        mLevels = new HashMap();
      }
      paramString2 = Collections.singletonList(paramString2);
      mLevels.put(paramString1, paramString2);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     all
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */