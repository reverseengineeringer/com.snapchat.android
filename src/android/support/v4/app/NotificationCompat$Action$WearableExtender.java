package android.support.v4.app;

import android.os.Bundle;

public final class NotificationCompat$Action$WearableExtender
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
  
  public NotificationCompat$Action$WearableExtender() {}
  
  private NotificationCompat$Action$WearableExtender(NotificationCompat.Action paramAction)
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

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Action.WearableExtender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */