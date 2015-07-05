package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;
import java.util.ArrayList;

public final class NotificationCompat$Action
  extends NotificationCompatBase.Action
{
  public static final NotificationCompatBase.Action.Factory FACTORY = new NotificationCompatBase.Action.Factory()
  {
    private static NotificationCompat.Action build(int paramAnonymousInt, CharSequence paramAnonymousCharSequence, PendingIntent paramAnonymousPendingIntent, Bundle paramAnonymousBundle, RemoteInputCompatBase.RemoteInput[] paramAnonymousArrayOfRemoteInput)
    {
      return new NotificationCompat.Action(paramAnonymousInt, paramAnonymousCharSequence, paramAnonymousPendingIntent, paramAnonymousBundle, (RemoteInput[])paramAnonymousArrayOfRemoteInput, (byte)0);
    }
    
    private static NotificationCompat.Action[] newArray(int paramAnonymousInt)
    {
      return new NotificationCompat.Action[paramAnonymousInt];
    }
  };
  public PendingIntent actionIntent;
  public int icon;
  final Bundle mExtras;
  private final RemoteInput[] mRemoteInputs;
  public CharSequence title;
  
  private NotificationCompat$Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, RemoteInput[] paramArrayOfRemoteInput)
  {
    icon = paramInt;
    title = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
    actionIntent = paramPendingIntent;
    if (paramBundle != null) {}
    for (;;)
    {
      mExtras = paramBundle;
      mRemoteInputs = paramArrayOfRemoteInput;
      return;
      paramBundle = new Bundle();
    }
  }
  
  public NotificationCompat$Action(CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(17301647, paramCharSequence, paramPendingIntent, new Bundle(), null);
  }
  
  private RemoteInput[] getRemoteInputs()
  {
    return mRemoteInputs;
  }
  
  protected final PendingIntent getActionIntent()
  {
    return actionIntent;
  }
  
  public final Bundle getExtras()
  {
    return mExtras;
  }
  
  protected final int getIcon()
  {
    return icon;
  }
  
  protected final CharSequence getTitle()
  {
    return title;
  }
  
  public static final class Builder
  {
    final Bundle mExtras;
    private final int mIcon;
    private final PendingIntent mIntent;
    private ArrayList<RemoteInput> mRemoteInputs;
    private final CharSequence mTitle;
    
    private Builder(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
    {
      this(paramInt, paramCharSequence, paramPendingIntent, new Bundle());
    }
    
    private Builder(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle)
    {
      mIcon = paramInt;
      mTitle = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      mIntent = paramPendingIntent;
      mExtras = paramBundle;
    }
    
    private Builder(NotificationCompat.Action paramAction)
    {
      this(icon, title, actionIntent, new Bundle(mExtras));
    }
    
    private Builder addExtras(Bundle paramBundle)
    {
      if (paramBundle != null) {
        mExtras.putAll(paramBundle);
      }
      return this;
    }
    
    private Builder addRemoteInput(RemoteInput paramRemoteInput)
    {
      if (mRemoteInputs == null) {
        mRemoteInputs = new ArrayList();
      }
      mRemoteInputs.add(paramRemoteInput);
      return this;
    }
    
    private NotificationCompat.Action build()
    {
      if (mRemoteInputs != null) {}
      for (RemoteInput[] arrayOfRemoteInput = (RemoteInput[])mRemoteInputs.toArray(new RemoteInput[mRemoteInputs.size()]);; arrayOfRemoteInput = null) {
        return new NotificationCompat.Action(mIcon, mTitle, mIntent, mExtras, arrayOfRemoteInput, (byte)0);
      }
    }
    
    private Builder extend(NotificationCompat.Action.Extender paramExtender)
    {
      paramExtender.extend(this);
      return this;
    }
    
    private Bundle getExtras()
    {
      return mExtras;
    }
  }
  
  public static abstract interface Extender
  {
    public abstract NotificationCompat.Action.Builder extend(NotificationCompat.Action.Builder paramBuilder);
  }
  
  public static final class WearableExtender
    implements NotificationCompat.Action.Extender
  {
    private static final int DEFAULT_FLAGS = 1;
    private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
    private static final int FLAG_AVAILABLE_OFFLINE = 1;
    private static final String KEY_CANCEL_LABEL = "cancelLabel";
    private static final String KEY_CONFIRM_LABEL = "confirmLabel";
    private static final String KEY_FLAGS = "flags";
    private static final String KEY_IN_PROGRESS_LABEL = "inProgressLabel";
    private CharSequence mCancelLabel;
    private CharSequence mConfirmLabel;
    private int mFlags = 1;
    private CharSequence mInProgressLabel;
    
    public WearableExtender() {}
    
    private WearableExtender(NotificationCompat.Action paramAction)
    {
      paramAction = mExtras.getBundle("android.wearable.EXTENSIONS");
      if (paramAction != null)
      {
        mFlags = paramAction.getInt("flags", 1);
        mInProgressLabel = paramAction.getCharSequence("inProgressLabel");
        mConfirmLabel = paramAction.getCharSequence("confirmLabel");
        mCancelLabel = paramAction.getCharSequence("cancelLabel");
      }
    }
    
    private WearableExtender clone()
    {
      WearableExtender localWearableExtender = new WearableExtender();
      mFlags = mFlags;
      mInProgressLabel = mInProgressLabel;
      mConfirmLabel = mConfirmLabel;
      mCancelLabel = mCancelLabel;
      return localWearableExtender;
    }
    
    private CharSequence getCancelLabel()
    {
      return mCancelLabel;
    }
    
    private CharSequence getConfirmLabel()
    {
      return mConfirmLabel;
    }
    
    private CharSequence getInProgressLabel()
    {
      return mInProgressLabel;
    }
    
    private boolean isAvailableOffline()
    {
      return (mFlags & 0x1) != 0;
    }
    
    private WearableExtender setAvailableOffline(boolean paramBoolean)
    {
      if (paramBoolean)
      {
        mFlags |= 0x1;
        return this;
      }
      mFlags &= 0xFFFFFFFE;
      return this;
    }
    
    private WearableExtender setCancelLabel(CharSequence paramCharSequence)
    {
      mCancelLabel = paramCharSequence;
      return this;
    }
    
    private WearableExtender setConfirmLabel(CharSequence paramCharSequence)
    {
      mConfirmLabel = paramCharSequence;
      return this;
    }
    
    private void setFlag$2563266(boolean paramBoolean)
    {
      if (paramBoolean)
      {
        mFlags |= 0x1;
        return;
      }
      mFlags &= 0xFFFFFFFE;
    }
    
    private WearableExtender setInProgressLabel(CharSequence paramCharSequence)
    {
      mInProgressLabel = paramCharSequence;
      return this;
    }
    
    public final NotificationCompat.Action.Builder extend(NotificationCompat.Action.Builder paramBuilder)
    {
      Bundle localBundle = new Bundle();
      if (mFlags != 1) {
        localBundle.putInt("flags", mFlags);
      }
      if (mInProgressLabel != null) {
        localBundle.putCharSequence("inProgressLabel", mInProgressLabel);
      }
      if (mConfirmLabel != null) {
        localBundle.putCharSequence("confirmLabel", mConfirmLabel);
      }
      if (mCancelLabel != null) {
        localBundle.putCharSequence("cancelLabel", mCancelLabel);
      }
      mExtras.putBundle("android.wearable.EXTENSIONS", localBundle);
      return paramBuilder;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Action
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */