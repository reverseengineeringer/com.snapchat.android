import com.snapchat.android.livechat.AdlHelper.PresenceSource;

public final class bdp
{
  public final AdlHelper.PresenceSource presenceSource;
  public final String reason;
  public final String username;
  public final boolean videoReceived;
  
  public bdp(AdlHelper.PresenceSource paramPresenceSource, String paramString1, boolean paramBoolean, String paramString2)
  {
    username = paramString1;
    videoReceived = paramBoolean;
    reason = paramString2;
    presenceSource = paramPresenceSource;
  }
}

/* Location:
 * Qualified Name:     bdp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */