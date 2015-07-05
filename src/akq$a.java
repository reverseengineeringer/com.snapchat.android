import com.google.gson.reflect.TypeToken;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public final class akq$a
{
  private final String mEventName;
  private Map<String, List<String>> mLevels;
  private Map<String, Object> mParams;
  private Map<String, List<String>> mTimers;
  public double mTimestamp;
  
  public akq$a(@cgb String paramString)
  {
    mEventName = paramString;
    mTimestamp = (System.currentTimeMillis() / 1000.0D);
  }
  
  public final a a(@cgb String paramString1, @cgb String paramString2)
  {
    if (mTimers == null) {
      mTimers = new HashMap();
    }
    paramString2 = Arrays.asList(new String[] { paramString2 });
    mTimers.put(paramString1, paramString2);
    return this;
  }
  
  public final a a(@cgc Map<String, Object> paramMap)
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
  
  public final akq a()
  {
    akq localakq = new akq(mEventName, mTimestamp, (byte)0);
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
    return localakq;
  }
  
  public final a b(@cgb String paramString1, @cgb String paramString2)
  {
    if (mLevels == null) {
      mLevels = new HashMap();
    }
    paramString2 = Collections.singletonList(paramString2);
    mLevels.put(paramString1, paramString2);
    return this;
  }
}

/* Location:
 * Qualified Name:     akq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */