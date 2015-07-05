package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

public final class NotificationCompat$Builder
{
  private static final int MAX_CHARSEQUENCE_LENGTH = 5120;
  public ArrayList<NotificationCompat.Action> mActions = new ArrayList();
  String mCategory;
  public int mColor = 0;
  CharSequence mContentInfo;
  public PendingIntent mContentIntent;
  CharSequence mContentText;
  CharSequence mContentTitle;
  Context mContext;
  Bundle mExtras;
  PendingIntent mFullScreenIntent;
  String mGroupKey;
  boolean mGroupSummary;
  public Bitmap mLargeIcon;
  boolean mLocalOnly = false;
  public Notification mNotification = new Notification();
  int mNumber;
  public ArrayList<String> mPeople;
  public int mPriority;
  int mProgress;
  boolean mProgressIndeterminate;
  int mProgressMax;
  Notification mPublicVersion;
  boolean mShowWhen = true;
  String mSortKey;
  NotificationCompat.Style mStyle;
  CharSequence mSubText;
  RemoteViews mTickerView;
  boolean mUseChronometer;
  int mVisibility = 0;
  
  public NotificationCompat$Builder(Context paramContext)
  {
    mContext = paramContext;
    mNotification.when = System.currentTimeMillis();
    mNotification.audioStreamType = -1;
    mPriority = 0;
    mPeople = new ArrayList();
  }
  
  private Builder addAction(NotificationCompat.Action paramAction)
  {
    mActions.add(paramAction);
    return this;
  }
  
  private Builder addAction$a17b238(CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    mActions.add(new NotificationCompat.Action(paramCharSequence, paramPendingIntent));
    return this;
  }
  
  private Builder addExtras(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      if (mExtras == null) {
        mExtras = new Bundle(paramBundle);
      }
    }
    else {
      return this;
    }
    mExtras.putAll(paramBundle);
    return this;
  }
  
  private Builder addPerson(String paramString)
  {
    mPeople.add(paramString);
    return this;
  }
  
  private Builder extend(NotificationCompat.Extender paramExtender)
  {
    paramExtender.extend(this);
    return this;
  }
  
  @Deprecated
  private Notification getNotification()
  {
    return NotificationCompat.access$200().build(this);
  }
  
  protected static CharSequence limitCharSequenceLength(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    while (paramCharSequence.length() <= 5120) {
      return paramCharSequence;
    }
    return paramCharSequence.subSequence(0, 5120);
  }
  
  private Builder setCategory(String paramString)
  {
    mCategory = paramString;
    return this;
  }
  
  private Builder setColor(int paramInt)
  {
    mColor = paramInt;
    return this;
  }
  
  private Builder setContent(RemoteViews paramRemoteViews)
  {
    mNotification.contentView = paramRemoteViews;
    return this;
  }
  
  private Builder setContentInfo(CharSequence paramCharSequence)
  {
    mContentInfo = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  private Builder setContentIntent(PendingIntent paramPendingIntent)
  {
    mContentIntent = paramPendingIntent;
    return this;
  }
  
  private Builder setDefaults$19d6eefc()
  {
    mNotification.defaults = 1;
    return this;
  }
  
  private Builder setDeleteIntent(PendingIntent paramPendingIntent)
  {
    mNotification.deleteIntent = paramPendingIntent;
    return this;
  }
  
  private Builder setExtras(Bundle paramBundle)
  {
    mExtras = paramBundle;
    return this;
  }
  
  private void setFlag(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = mNotification;
      flags |= paramInt;
      return;
    }
    Notification localNotification = mNotification;
    flags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  private Builder setFullScreenIntent(PendingIntent paramPendingIntent, boolean paramBoolean)
  {
    mFullScreenIntent = paramPendingIntent;
    setFlag(128, paramBoolean);
    return this;
  }
  
  private Builder setGroup(String paramString)
  {
    mGroupKey = paramString;
    return this;
  }
  
  private Builder setGroupSummary(boolean paramBoolean)
  {
    mGroupSummary = paramBoolean;
    return this;
  }
  
  private Builder setLargeIcon(Bitmap paramBitmap)
  {
    mLargeIcon = paramBitmap;
    return this;
  }
  
  private Builder setLights$70eb83dc()
  {
    int j = 1;
    mNotification.ledARGB = 65280;
    mNotification.ledOnMS = 1000;
    mNotification.ledOffMS = 2000;
    Notification localNotification;
    int k;
    if ((mNotification.ledOnMS != 0) && (mNotification.ledOffMS != 0))
    {
      i = 1;
      localNotification = mNotification;
      k = mNotification.flags;
      if (i == 0) {
        break label92;
      }
    }
    label92:
    for (int i = j;; i = 0)
    {
      flags = (k & 0xFFFFFFFE | i);
      return this;
      i = 0;
      break;
    }
  }
  
  private Builder setLocalOnly(boolean paramBoolean)
  {
    mLocalOnly = paramBoolean;
    return this;
  }
  
  private Builder setNumber(int paramInt)
  {
    mNumber = paramInt;
    return this;
  }
  
  private Builder setOngoing(boolean paramBoolean)
  {
    setFlag(2, paramBoolean);
    return this;
  }
  
  private Builder setOnlyAlertOnce(boolean paramBoolean)
  {
    setFlag(8, paramBoolean);
    return this;
  }
  
  private Builder setPriority$19d6eefc()
  {
    mPriority = 1;
    return this;
  }
  
  private Builder setProgress(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    mProgressMax = paramInt1;
    mProgress = paramInt2;
    mProgressIndeterminate = paramBoolean;
    return this;
  }
  
  private Builder setPublicVersion(Notification paramNotification)
  {
    mPublicVersion = paramNotification;
    return this;
  }
  
  private Builder setShowWhen(boolean paramBoolean)
  {
    mShowWhen = paramBoolean;
    return this;
  }
  
  private Builder setSmallIcon(int paramInt1, int paramInt2)
  {
    mNotification.icon = paramInt1;
    mNotification.iconLevel = paramInt2;
    return this;
  }
  
  private Builder setSortKey(String paramString)
  {
    mSortKey = paramString;
    return this;
  }
  
  private Builder setSound(Uri paramUri)
  {
    mNotification.sound = paramUri;
    mNotification.audioStreamType = -1;
    return this;
  }
  
  private Builder setSound(Uri paramUri, int paramInt)
  {
    mNotification.sound = paramUri;
    mNotification.audioStreamType = paramInt;
    return this;
  }
  
  private Builder setSubText(CharSequence paramCharSequence)
  {
    mSubText = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  private Builder setTicker(CharSequence paramCharSequence, RemoteViews paramRemoteViews)
  {
    mNotification.tickerText = limitCharSequenceLength(paramCharSequence);
    mTickerView = paramRemoteViews;
    return this;
  }
  
  private Builder setUsesChronometer(boolean paramBoolean)
  {
    mUseChronometer = paramBoolean;
    return this;
  }
  
  private Builder setVisibility(int paramInt)
  {
    mVisibility = paramInt;
    return this;
  }
  
  private Builder setWhen(long paramLong)
  {
    mNotification.when = paramLong;
    return this;
  }
  
  public final Notification build()
  {
    return NotificationCompat.access$200().build(this);
  }
  
  public final Bundle getExtras()
  {
    if (mExtras == null) {
      mExtras = new Bundle();
    }
    return mExtras;
  }
  
  public final Builder setAutoCancel$7abcb88d()
  {
    setFlag(16, true);
    return this;
  }
  
  public final Builder setContentText(CharSequence paramCharSequence)
  {
    mContentText = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public final Builder setContentTitle(CharSequence paramCharSequence)
  {
    mContentTitle = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public final Builder setSmallIcon(int paramInt)
  {
    mNotification.icon = paramInt;
    return this;
  }
  
  public final Builder setStyle(NotificationCompat.Style paramStyle)
  {
    if (mStyle != paramStyle)
    {
      mStyle = paramStyle;
      if (mStyle != null) {
        mStyle.setBuilder(this);
      }
    }
    return this;
  }
  
  public final Builder setTicker(CharSequence paramCharSequence)
  {
    mNotification.tickerText = limitCharSequenceLength(paramCharSequence);
    return this;
  }
  
  public final Builder setVibrate(long[] paramArrayOfLong)
  {
    mNotification.vibrate = paramArrayOfLong;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */