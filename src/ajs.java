import com.google.gson.annotations.SerializedName;

public final class ajs
{
  @SerializedName("id")
  public String mId;
  @SerializedName("screenshot_count")
  private int mScreenshotCount;
  @SerializedName("timestamp")
  private long mTimestamp;
  
  public ajs() {}
  
  public ajs(String paramString, long paramLong, int paramInt)
  {
    mId = paramString;
    mTimestamp = paramLong;
    mScreenshotCount = paramInt;
  }
  
  public final String toString()
  {
    return "StoryViewRecord timestamp " + mTimestamp + " screenshot " + mScreenshotCount;
  }
}

/* Location:
 * Qualified Name:     ajs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */