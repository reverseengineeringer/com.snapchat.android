import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.chat.SecureChatService.SecureChatWriteCompletedCallback.Status;

public final class bbg
{
  private static final long DEFAULT_DISPLAY_DURATION = 3000L;
  public int backgroundColor;
  public boolean delayed = false;
  public long duration = 3000L;
  public int iconRes;
  @cgc
  public bcc listener;
  @cgc
  public CharSequence primaryText;
  @cgc
  public CharSequence secondaryText;
  public boolean showDancingGhost;
  public String sourceId;
  public int textColor;
  public boolean useDefaultColors;
  public boolean useShortNotification;
  
  public bbg(int paramInt, @cgc CharSequence paramCharSequence1, @cgc CharSequence paramCharSequence2, @cgb String paramString)
  {
    iconRes = paramInt;
    primaryText = paramCharSequence1;
    secondaryText = paramCharSequence2;
    useDefaultColors = true;
    useShortNotification = false;
    sourceId = paramString;
    showDancingGhost = false;
  }
  
  public bbg(SecureChatService.SecureChatWriteCompletedCallback.Status paramStatus, @cgb String paramString)
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
      if (!ale.a().d())
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
  
  public bbg(@cgc CharSequence paramCharSequence1, @cgc CharSequence paramCharSequence2, int paramInt1, int paramInt2, boolean paramBoolean, String paramString)
  {
    iconRes = 0;
    primaryText = paramCharSequence1;
    secondaryText = paramCharSequence2;
    backgroundColor = paramInt1;
    textColor = paramInt2;
    useDefaultColors = false;
    useShortNotification = paramBoolean;
    sourceId = paramString;
    showDancingGhost = false;
  }
  
  public bbg(String paramString)
  {
    showDancingGhost = true;
    useDefaultColors = true;
    useShortNotification = false;
    sourceId = paramString;
  }
  
  public bbg(String paramString1, @cgb String paramString2)
  {
    iconRes = 0;
    secondaryText = paramString1;
    backgroundColor = AndroidNotificationManager.a;
    textColor = -1;
    useDefaultColors = false;
    useShortNotification = true;
    sourceId = paramString2;
    showDancingGhost = false;
  }
  
  public final bbg a(long paramLong)
  {
    if (paramLong > 0L) {}
    for (boolean bool = true;; bool = false)
    {
      ck.a(bool);
      duration = paramLong;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     bbg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */