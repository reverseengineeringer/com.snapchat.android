import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;

public final class bcg
{
  private static final long DEFAULT_DISPLAY_DURATION = 3000L;
  public int backgroundColor;
  public boolean delayed = false;
  public long duration = 3000L;
  public int iconRes;
  @chd
  public bdc listener;
  @chd
  public CharSequence primaryText;
  @chd
  public CharSequence secondaryText;
  public boolean showDancingGhost;
  public String sourceId;
  public int textColor;
  public boolean useDefaultColors;
  public boolean useShortNotification;
  
  public bcg(int paramInt, @chd CharSequence paramCharSequence1, @chd CharSequence paramCharSequence2, @chc String paramString)
  {
    iconRes = paramInt;
    primaryText = paramCharSequence1;
    secondaryText = paramCharSequence2;
    useDefaultColors = true;
    useShortNotification = false;
    sourceId = paramString;
    showDancingGhost = false;
  }
  
  public bcg(SecureChatService.SecureChatWriteCompletedCallback.Status paramStatus, @chc String paramString)
  {
    iconRes = 0;
    switch (paramStatus)
    {
    default: 
      paramStatus = SnapchatApplication.b().getString(2131493085);
    }
    for (;;)
    {
      secondaryText = paramStatus;
      backgroundColor = AndroidNotificationManager.a;
      textColor = -1;
      useDefaultColors = false;
      useShortNotification = true;
      sourceId = paramString;
      showDancingGhost = false;
      return;
      if (!ama.a().d())
      {
        paramStatus = SnapchatApplication.b().getString(2131493252);
      }
      else
      {
        paramStatus = SnapchatApplication.b().getString(2131493014);
        continue;
        paramStatus = SnapchatApplication.b().getString(2131493014);
      }
    }
  }
  
  public bcg(@chd CharSequence paramCharSequence, int paramInt1, int paramInt2, String paramString)
  {
    iconRes = 0;
    primaryText = null;
    secondaryText = paramCharSequence;
    backgroundColor = paramInt1;
    textColor = paramInt2;
    useDefaultColors = false;
    useShortNotification = true;
    sourceId = paramString;
    showDancingGhost = false;
  }
  
  public bcg(String paramString)
  {
    showDancingGhost = true;
    useDefaultColors = true;
    useShortNotification = false;
    sourceId = paramString;
  }
}

/* Location:
 * Qualified Name:     bcg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */