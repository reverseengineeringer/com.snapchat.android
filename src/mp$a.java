import java.util.Map;

public final class mp$a
{
  public int mAdType;
  public String mAdUnitId;
  public String mChannelName;
  public String mEditionName;
  public int mPosition;
  public Map<String, String> mTargetingParams;
  
  public final mp a()
  {
    if (mEditionName == null) {
      throw new IllegalArgumentException("editionName should not be null.");
    }
    if (mChannelName == null) {
      throw new IllegalArgumentException("channelName should not be null.");
    }
    return new mp(mEditionName, mChannelName, mAdUnitId, mTargetingParams, mPosition, mAdType, (byte)0);
  }
}

/* Location:
 * Qualified Name:     mp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */