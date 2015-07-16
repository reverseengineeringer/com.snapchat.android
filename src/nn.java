import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class nn
{
  String mAdUnitId;
  public int mFirstPosition;
  int mMinimumRemaining;
  Bundle mTargetingParams;
  private int mTimeoutSeconds;
  
  private nn(int paramInt1, int paramInt2, int paramInt3, String paramString, Bundle paramBundle)
  {
    mTimeoutSeconds = paramInt1;
    mFirstPosition = paramInt2;
    mMinimumRemaining = paramInt3;
    mAdUnitId = paramString;
    mTargetingParams = paramBundle;
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(mAdUnitId);
    localStringBuilder.append("~");
    Object localObject = new ArrayList(mTargetingParams.keySet());
    Collections.sort((List)localObject);
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      localStringBuilder.append(str + ":" + mTargetingParams.get(str) + "|");
    }
    return localStringBuilder.toString();
  }
  
  public static final class a
  {
    public String mAdUnitId;
    public int mFirstPosition = -1;
    public int mMinimumRemaining;
    public Bundle mTargetingParams;
    public int mTimeoutSeconds = 600;
  }
}

/* Location:
 * Qualified Name:     nn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */