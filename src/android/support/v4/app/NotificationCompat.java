package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class NotificationCompat
{
  public static final String CATEGORY_ALARM = "alarm";
  public static final String CATEGORY_CALL = "call";
  public static final String CATEGORY_EMAIL = "email";
  public static final String CATEGORY_ERROR = "err";
  public static final String CATEGORY_EVENT = "event";
  public static final String CATEGORY_MESSAGE = "msg";
  public static final String CATEGORY_PROGRESS = "progress";
  public static final String CATEGORY_PROMO = "promo";
  public static final String CATEGORY_RECOMMENDATION = "recommendation";
  public static final String CATEGORY_SERVICE = "service";
  public static final String CATEGORY_SOCIAL = "social";
  public static final String CATEGORY_STATUS = "status";
  public static final String CATEGORY_SYSTEM = "sys";
  public static final String CATEGORY_TRANSPORT = "transport";
  public static final int COLOR_DEFAULT = 0;
  public static final int DEFAULT_ALL = -1;
  public static final int DEFAULT_LIGHTS = 4;
  public static final int DEFAULT_SOUND = 1;
  public static final int DEFAULT_VIBRATE = 2;
  public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";
  public static final String EXTRA_BIG_TEXT = "android.bigText";
  public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
  public static final String EXTRA_INFO_TEXT = "android.infoText";
  public static final String EXTRA_LARGE_ICON = "android.largeIcon";
  public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
  public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";
  public static final String EXTRA_PEOPLE = "android.people";
  public static final String EXTRA_PICTURE = "android.picture";
  public static final String EXTRA_PROGRESS = "android.progress";
  public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
  public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
  public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
  public static final String EXTRA_SHOW_WHEN = "android.showWhen";
  public static final String EXTRA_SMALL_ICON = "android.icon";
  public static final String EXTRA_SUB_TEXT = "android.subText";
  public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
  public static final String EXTRA_TEMPLATE = "android.template";
  public static final String EXTRA_TEXT = "android.text";
  public static final String EXTRA_TEXT_LINES = "android.textLines";
  public static final String EXTRA_TITLE = "android.title";
  public static final String EXTRA_TITLE_BIG = "android.title.big";
  public static final int FLAG_AUTO_CANCEL = 16;
  public static final int FLAG_FOREGROUND_SERVICE = 64;
  public static final int FLAG_GROUP_SUMMARY = 512;
  public static final int FLAG_HIGH_PRIORITY = 128;
  public static final int FLAG_INSISTENT = 4;
  public static final int FLAG_LOCAL_ONLY = 256;
  public static final int FLAG_NO_CLEAR = 32;
  public static final int FLAG_ONGOING_EVENT = 2;
  public static final int FLAG_ONLY_ALERT_ONCE = 8;
  public static final int FLAG_SHOW_LIGHTS = 1;
  private static final NotificationCompatImpl IMPL = new NotificationCompatImplBase();
  public static final int PRIORITY_DEFAULT = 0;
  public static final int PRIORITY_HIGH = 1;
  public static final int PRIORITY_LOW = -1;
  public static final int PRIORITY_MAX = 2;
  public static final int PRIORITY_MIN = -2;
  public static final int STREAM_DEFAULT = -1;
  public static final int VISIBILITY_PRIVATE = 0;
  public static final int VISIBILITY_PUBLIC = 1;
  public static final int VISIBILITY_SECRET = -1;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      IMPL = new NotificationCompatImplApi21();
      return;
    }
    if (Build.VERSION.SDK_INT >= 20)
    {
      IMPL = new NotificationCompatImplApi20();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      IMPL = new NotificationCompatImplKitKat();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      IMPL = new NotificationCompatImplJellybean();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new NotificationCompatImplIceCreamSandwich();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      IMPL = new NotificationCompatImplHoneycomb();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      IMPL = new NotificationCompatImplGingerbread();
      return;
    }
  }
  
  private static void addActionsToBuilder(NotificationBuilderWithActions paramNotificationBuilderWithActions, ArrayList<Action> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      paramNotificationBuilderWithActions.addAction((Action)paramArrayList.next());
    }
  }
  
  private static void addStyleToBuilderJellybean(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor, Style paramStyle)
  {
    if (paramStyle != null)
    {
      if (!(paramStyle instanceof BigTextStyle)) {
        break label37;
      }
      paramStyle = (BigTextStyle)paramStyle;
      NotificationCompatJellybean.addBigTextStyle(paramNotificationBuilderWithBuilderAccessor, mBigContentTitle, mSummaryTextSet, mSummaryText, mBigText);
    }
    label37:
    do
    {
      return;
      if ((paramStyle instanceof InboxStyle))
      {
        paramStyle = (InboxStyle)paramStyle;
        NotificationCompatJellybean.addInboxStyle(paramNotificationBuilderWithBuilderAccessor, mBigContentTitle, mSummaryTextSet, mSummaryText, mTexts);
        return;
      }
    } while (!(paramStyle instanceof BigPictureStyle));
    paramStyle = (BigPictureStyle)paramStyle;
    NotificationCompatJellybean.addBigPictureStyle(paramNotificationBuilderWithBuilderAccessor, mBigContentTitle, mSummaryTextSet, mSummaryText, mPicture, mBigLargeIcon, mBigLargeIconSet);
  }
  
  private static Action getAction(Notification paramNotification, int paramInt)
  {
    return IMPL.getAction(paramNotification, paramInt);
  }
  
  private static int getActionCount(Notification paramNotification)
  {
    return IMPL.getActionCount(paramNotification);
  }
  
  private static String getCategory(Notification paramNotification)
  {
    return IMPL.getCategory(paramNotification);
  }
  
  public static Bundle getExtras(Notification paramNotification)
  {
    return IMPL.getExtras(paramNotification);
  }
  
  private static String getGroup(Notification paramNotification)
  {
    return IMPL.getGroup(paramNotification);
  }
  
  private static boolean getLocalOnly(Notification paramNotification)
  {
    return IMPL.getLocalOnly(paramNotification);
  }
  
  private static Notification[] getNotificationArrayFromBundle(Bundle paramBundle, String paramString)
  {
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray(paramString);
    if (((arrayOfParcelable instanceof Notification[])) || (arrayOfParcelable == null)) {
      return (Notification[])arrayOfParcelable;
    }
    Notification[] arrayOfNotification = new Notification[arrayOfParcelable.length];
    int i = 0;
    while (i < arrayOfParcelable.length)
    {
      arrayOfNotification[i] = ((Notification)arrayOfParcelable[i]);
      i += 1;
    }
    paramBundle.putParcelableArray(paramString, arrayOfNotification);
    return arrayOfNotification;
  }
  
  private static String getSortKey(Notification paramNotification)
  {
    return IMPL.getSortKey(paramNotification);
  }
  
  private static boolean isGroupSummary(Notification paramNotification)
  {
    return IMPL.isGroupSummary(paramNotification);
  }
  
  public static final class Action
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
    
    private Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, RemoteInput[] paramArrayOfRemoteInput)
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
    
    public Action(CharSequence paramCharSequence, PendingIntent paramPendingIntent)
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
  
  public static final class BigPictureStyle
    extends NotificationCompat.Style
  {
    Bitmap mBigLargeIcon;
    boolean mBigLargeIconSet;
    Bitmap mPicture;
    
    public BigPictureStyle() {}
    
    private BigPictureStyle(NotificationCompat.Builder paramBuilder)
    {
      setBuilder(paramBuilder);
    }
    
    private BigPictureStyle bigLargeIcon(Bitmap paramBitmap)
    {
      mBigLargeIcon = paramBitmap;
      mBigLargeIconSet = true;
      return this;
    }
    
    private BigPictureStyle bigPicture(Bitmap paramBitmap)
    {
      mPicture = paramBitmap;
      return this;
    }
    
    private BigPictureStyle setBigContentTitle(CharSequence paramCharSequence)
    {
      mBigContentTitle = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    private BigPictureStyle setSummaryText(CharSequence paramCharSequence)
    {
      mSummaryText = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      mSummaryTextSet = true;
      return this;
    }
  }
  
  public static final class BigTextStyle
    extends NotificationCompat.Style
  {
    CharSequence mBigText;
    
    public BigTextStyle() {}
    
    private BigTextStyle(NotificationCompat.Builder paramBuilder)
    {
      setBuilder(paramBuilder);
    }
    
    private BigTextStyle setBigContentTitle(CharSequence paramCharSequence)
    {
      mBigContentTitle = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    private BigTextStyle setSummaryText(CharSequence paramCharSequence)
    {
      mSummaryText = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      mSummaryTextSet = true;
      return this;
    }
    
    public final BigTextStyle bigText(CharSequence paramCharSequence)
    {
      mBigText = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      return this;
    }
  }
  
  public static final class Builder
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
    
    public Builder(Context paramContext)
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
      return NotificationCompat.IMPL.build(this);
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
      return NotificationCompat.IMPL.build(this);
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
  
  public static final class CarExtender
    implements NotificationCompat.Extender
  {
    private static final String EXTRA_CAR_EXTENDER = "android.car.EXTENSIONS";
    private static final String EXTRA_COLOR = "app_color";
    private static final String EXTRA_CONVERSATION = "car_conversation";
    private static final String EXTRA_LARGE_ICON = "large_icon";
    private static final String TAG = "CarExtender";
    private int mColor = 0;
    private Bitmap mLargeIcon;
    private UnreadConversation mUnreadConversation;
    
    public CarExtender() {}
    
    private CarExtender(Notification paramNotification)
    {
      if (Build.VERSION.SDK_INT < 21) {}
      for (;;)
      {
        return;
        if (NotificationCompat.getExtras(paramNotification) == null) {}
        for (paramNotification = null; paramNotification != null; paramNotification = NotificationCompat.getExtras(paramNotification).getBundle("android.car.EXTENSIONS"))
        {
          mLargeIcon = ((Bitmap)paramNotification.getParcelable("large_icon"));
          mColor = paramNotification.getInt("app_color", 0);
          paramNotification = paramNotification.getBundle("car_conversation");
          mUnreadConversation = ((UnreadConversation)NotificationCompat.IMPL.getUnreadConversationFromBundle(paramNotification, UnreadConversation.FACTORY, RemoteInput.FACTORY));
          return;
        }
      }
    }
    
    private int getColor()
    {
      return mColor;
    }
    
    private Bitmap getLargeIcon()
    {
      return mLargeIcon;
    }
    
    private UnreadConversation getUnreadConversation()
    {
      return mUnreadConversation;
    }
    
    private CarExtender setColor(int paramInt)
    {
      mColor = paramInt;
      return this;
    }
    
    private CarExtender setLargeIcon(Bitmap paramBitmap)
    {
      mLargeIcon = paramBitmap;
      return this;
    }
    
    private CarExtender setUnreadConversation(UnreadConversation paramUnreadConversation)
    {
      mUnreadConversation = paramUnreadConversation;
      return this;
    }
    
    public final NotificationCompat.Builder extend(NotificationCompat.Builder paramBuilder)
    {
      if (Build.VERSION.SDK_INT < 21) {
        return paramBuilder;
      }
      Bundle localBundle = new Bundle();
      if (mLargeIcon != null) {
        localBundle.putParcelable("large_icon", mLargeIcon);
      }
      if (mColor != 0) {
        localBundle.putInt("app_color", mColor);
      }
      if (mUnreadConversation != null) {
        localBundle.putBundle("car_conversation", NotificationCompat.IMPL.getBundleForUnreadConversation(mUnreadConversation));
      }
      paramBuilder.getExtras().putBundle("android.car.EXTENSIONS", localBundle);
      return paramBuilder;
    }
    
    public static final class UnreadConversation
      extends NotificationCompatBase.UnreadConversation
    {
      static final NotificationCompatBase.UnreadConversation.Factory FACTORY = new NotificationCompatBase.UnreadConversation.Factory()
      {
        private static NotificationCompat.CarExtender.UnreadConversation build(String[] paramAnonymousArrayOfString1, RemoteInputCompatBase.RemoteInput paramAnonymousRemoteInput, PendingIntent paramAnonymousPendingIntent1, PendingIntent paramAnonymousPendingIntent2, String[] paramAnonymousArrayOfString2, long paramAnonymousLong)
        {
          return new NotificationCompat.CarExtender.UnreadConversation(paramAnonymousArrayOfString1, (RemoteInput)paramAnonymousRemoteInput, paramAnonymousPendingIntent1, paramAnonymousPendingIntent2, paramAnonymousArrayOfString2, paramAnonymousLong);
        }
      };
      private final long mLatestTimestamp;
      private final String[] mMessages;
      private final String[] mParticipants;
      private final PendingIntent mReadPendingIntent;
      private final RemoteInput mRemoteInput;
      private final PendingIntent mReplyPendingIntent;
      
      UnreadConversation(String[] paramArrayOfString1, RemoteInput paramRemoteInput, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, String[] paramArrayOfString2, long paramLong)
      {
        mMessages = paramArrayOfString1;
        mRemoteInput = paramRemoteInput;
        mReadPendingIntent = paramPendingIntent2;
        mReplyPendingIntent = paramPendingIntent1;
        mParticipants = paramArrayOfString2;
        mLatestTimestamp = paramLong;
      }
      
      private RemoteInput getRemoteInput()
      {
        return mRemoteInput;
      }
      
      final long getLatestTimestamp()
      {
        return mLatestTimestamp;
      }
      
      final String[] getMessages()
      {
        return mMessages;
      }
      
      final String getParticipant()
      {
        if (mParticipants.length > 0) {
          return mParticipants[0];
        }
        return null;
      }
      
      final String[] getParticipants()
      {
        return mParticipants;
      }
      
      final PendingIntent getReadPendingIntent()
      {
        return mReadPendingIntent;
      }
      
      final PendingIntent getReplyPendingIntent()
      {
        return mReplyPendingIntent;
      }
      
      public static final class Builder
      {
        private long mLatestTimestamp;
        private final List<String> mMessages = new ArrayList();
        private final String mParticipant;
        private PendingIntent mReadPendingIntent;
        private RemoteInput mRemoteInput;
        private PendingIntent mReplyPendingIntent;
        
        private Builder(String paramString)
        {
          mParticipant = paramString;
        }
        
        private Builder addMessage(String paramString)
        {
          mMessages.add(paramString);
          return this;
        }
        
        private NotificationCompat.CarExtender.UnreadConversation build()
        {
          String[] arrayOfString = (String[])mMessages.toArray(new String[mMessages.size()]);
          String str = mParticipant;
          RemoteInput localRemoteInput = mRemoteInput;
          PendingIntent localPendingIntent1 = mReplyPendingIntent;
          PendingIntent localPendingIntent2 = mReadPendingIntent;
          long l = mLatestTimestamp;
          return new NotificationCompat.CarExtender.UnreadConversation(arrayOfString, localRemoteInput, localPendingIntent1, localPendingIntent2, new String[] { str }, l);
        }
        
        private Builder setLatestTimestamp(long paramLong)
        {
          mLatestTimestamp = paramLong;
          return this;
        }
        
        private Builder setReadPendingIntent(PendingIntent paramPendingIntent)
        {
          mReadPendingIntent = paramPendingIntent;
          return this;
        }
        
        private Builder setReplyAction(PendingIntent paramPendingIntent, RemoteInput paramRemoteInput)
        {
          mRemoteInput = paramRemoteInput;
          mReplyPendingIntent = paramPendingIntent;
          return this;
        }
      }
    }
  }
  
  public static abstract interface Extender
  {
    public abstract NotificationCompat.Builder extend(NotificationCompat.Builder paramBuilder);
  }
  
  public static final class InboxStyle
    extends NotificationCompat.Style
  {
    ArrayList<CharSequence> mTexts = new ArrayList();
    
    public InboxStyle() {}
    
    private InboxStyle(NotificationCompat.Builder paramBuilder)
    {
      setBuilder(paramBuilder);
    }
    
    private InboxStyle setBigContentTitle(CharSequence paramCharSequence)
    {
      mBigContentTitle = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      return this;
    }
    
    private InboxStyle setSummaryText(CharSequence paramCharSequence)
    {
      mSummaryText = NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence);
      mSummaryTextSet = true;
      return this;
    }
    
    public final InboxStyle addLine(CharSequence paramCharSequence)
    {
      mTexts.add(NotificationCompat.Builder.limitCharSequenceLength(paramCharSequence));
      return this;
    }
  }
  
  static abstract interface NotificationCompatImpl
  {
    public abstract Notification build(NotificationCompat.Builder paramBuilder);
    
    public abstract NotificationCompat.Action getAction(Notification paramNotification, int paramInt);
    
    public abstract int getActionCount(Notification paramNotification);
    
    public abstract NotificationCompat.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList);
    
    public abstract Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation paramUnreadConversation);
    
    public abstract String getCategory(Notification paramNotification);
    
    public abstract Bundle getExtras(Notification paramNotification);
    
    public abstract String getGroup(Notification paramNotification);
    
    public abstract boolean getLocalOnly(Notification paramNotification);
    
    public abstract ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompat.Action[] paramArrayOfAction);
    
    public abstract String getSortKey(Notification paramNotification);
    
    public abstract NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle paramBundle, NotificationCompatBase.UnreadConversation.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1);
    
    public abstract boolean isGroupSummary(Notification paramNotification);
  }
  
  static class NotificationCompatImplApi20
    extends NotificationCompat.NotificationCompatImplKitKat
  {
    public Notification build(NotificationCompat.Builder paramBuilder)
    {
      NotificationCompatApi20.Builder localBuilder = new NotificationCompatApi20.Builder(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon, mProgressMax, mProgress, mProgressIndeterminate, mShowWhen, mUseChronometer, mPriority, mSubText, mLocalOnly, mPeople, mExtras, mGroupKey, mGroupSummary, mSortKey);
      NotificationCompat.access$000(localBuilder, mActions);
      NotificationCompat.access$100(localBuilder, mStyle);
      return localBuilder.build();
    }
    
    public final NotificationCompat.Action getAction(Notification paramNotification, int paramInt)
    {
      return (NotificationCompat.Action)NotificationCompatApi20.getAction(paramNotification, paramInt, NotificationCompat.Action.FACTORY, RemoteInput.FACTORY);
    }
    
    public final NotificationCompat.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList)
    {
      return (NotificationCompat.Action[])NotificationCompatApi20.getActionsFromParcelableArrayList(paramArrayList, NotificationCompat.Action.FACTORY, RemoteInput.FACTORY);
    }
    
    public final String getGroup(Notification paramNotification)
    {
      return NotificationCompatApi20.getGroup(paramNotification);
    }
    
    public final boolean getLocalOnly(Notification paramNotification)
    {
      return NotificationCompatApi20.getLocalOnly(paramNotification);
    }
    
    public final ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompat.Action[] paramArrayOfAction)
    {
      return NotificationCompatApi20.getParcelableArrayListForActions(paramArrayOfAction);
    }
    
    public final String getSortKey(Notification paramNotification)
    {
      return NotificationCompatApi20.getSortKey(paramNotification);
    }
    
    public final boolean isGroupSummary(Notification paramNotification)
    {
      return NotificationCompatApi20.isGroupSummary(paramNotification);
    }
  }
  
  static final class NotificationCompatImplApi21
    extends NotificationCompat.NotificationCompatImplApi20
  {
    public final Notification build(NotificationCompat.Builder paramBuilder)
    {
      NotificationCompatApi21.Builder localBuilder = new NotificationCompatApi21.Builder(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon, mProgressMax, mProgress, mProgressIndeterminate, mShowWhen, mUseChronometer, mPriority, mSubText, mLocalOnly, mCategory, mPeople, mExtras, mColor, mVisibility, mPublicVersion, mGroupKey, mGroupSummary, mSortKey);
      NotificationCompat.access$000(localBuilder, mActions);
      NotificationCompat.access$100(localBuilder, mStyle);
      return localBuilder.build();
    }
    
    public final Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation paramUnreadConversation)
    {
      return NotificationCompatApi21.getBundleForUnreadConversation(paramUnreadConversation);
    }
    
    public final String getCategory(Notification paramNotification)
    {
      return NotificationCompatApi21.getCategory(paramNotification);
    }
    
    public final NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle paramBundle, NotificationCompatBase.UnreadConversation.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
    {
      return NotificationCompatApi21.getUnreadConversationFromBundle(paramBundle, paramFactory, paramFactory1);
    }
  }
  
  static class NotificationCompatImplBase
    implements NotificationCompat.NotificationCompatImpl
  {
    public Notification build(NotificationCompat.Builder paramBuilder)
    {
      Notification localNotification = mNotification;
      localNotification.setLatestEventInfo(mContext, mContentTitle, mContentText, mContentIntent);
      if (mPriority > 0) {
        flags |= 0x80;
      }
      return localNotification;
    }
    
    public NotificationCompat.Action getAction(Notification paramNotification, int paramInt)
    {
      return null;
    }
    
    public int getActionCount(Notification paramNotification)
    {
      return 0;
    }
    
    public NotificationCompat.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList)
    {
      return null;
    }
    
    public Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation paramUnreadConversation)
    {
      return null;
    }
    
    public String getCategory(Notification paramNotification)
    {
      return null;
    }
    
    public Bundle getExtras(Notification paramNotification)
    {
      return null;
    }
    
    public String getGroup(Notification paramNotification)
    {
      return null;
    }
    
    public boolean getLocalOnly(Notification paramNotification)
    {
      return false;
    }
    
    public ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompat.Action[] paramArrayOfAction)
    {
      return null;
    }
    
    public String getSortKey(Notification paramNotification)
    {
      return null;
    }
    
    public NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle paramBundle, NotificationCompatBase.UnreadConversation.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
    {
      return null;
    }
    
    public boolean isGroupSummary(Notification paramNotification)
    {
      return false;
    }
  }
  
  static final class NotificationCompatImplGingerbread
    extends NotificationCompat.NotificationCompatImplBase
  {
    public final Notification build(NotificationCompat.Builder paramBuilder)
    {
      Notification localNotification = mNotification;
      localNotification.setLatestEventInfo(mContext, mContentTitle, mContentText, mContentIntent);
      localNotification = NotificationCompatGingerbread.add(localNotification, mContext, mContentTitle, mContentText, mContentIntent, mFullScreenIntent);
      if (mPriority > 0) {
        flags |= 0x80;
      }
      return localNotification;
    }
  }
  
  static final class NotificationCompatImplHoneycomb
    extends NotificationCompat.NotificationCompatImplBase
  {
    public final Notification build(NotificationCompat.Builder paramBuilder)
    {
      return NotificationCompatHoneycomb.add(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon);
    }
  }
  
  static final class NotificationCompatImplIceCreamSandwich
    extends NotificationCompat.NotificationCompatImplBase
  {
    public final Notification build(NotificationCompat.Builder paramBuilder)
    {
      return NotificationCompatIceCreamSandwich.add(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon, mProgressMax, mProgress, mProgressIndeterminate);
    }
  }
  
  static class NotificationCompatImplJellybean
    extends NotificationCompat.NotificationCompatImplBase
  {
    public Notification build(NotificationCompat.Builder paramBuilder)
    {
      NotificationCompatJellybean.Builder localBuilder = new NotificationCompatJellybean.Builder(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon, mProgressMax, mProgress, mProgressIndeterminate, mUseChronometer, mPriority, mSubText, mLocalOnly, mExtras, mGroupKey, mGroupSummary, mSortKey);
      NotificationCompat.access$000(localBuilder, mActions);
      NotificationCompat.access$100(localBuilder, mStyle);
      return localBuilder.build();
    }
    
    public NotificationCompat.Action getAction(Notification paramNotification, int paramInt)
    {
      return (NotificationCompat.Action)NotificationCompatJellybean.getAction(paramNotification, paramInt, NotificationCompat.Action.FACTORY, RemoteInput.FACTORY);
    }
    
    public int getActionCount(Notification paramNotification)
    {
      return NotificationCompatJellybean.getActionCount(paramNotification);
    }
    
    public NotificationCompat.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList)
    {
      return (NotificationCompat.Action[])NotificationCompatJellybean.getActionsFromParcelableArrayList(paramArrayList, NotificationCompat.Action.FACTORY, RemoteInput.FACTORY);
    }
    
    public Bundle getExtras(Notification paramNotification)
    {
      return NotificationCompatJellybean.getExtras(paramNotification);
    }
    
    public String getGroup(Notification paramNotification)
    {
      return NotificationCompatJellybean.getGroup(paramNotification);
    }
    
    public boolean getLocalOnly(Notification paramNotification)
    {
      return NotificationCompatJellybean.getLocalOnly(paramNotification);
    }
    
    public ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompat.Action[] paramArrayOfAction)
    {
      return NotificationCompatJellybean.getParcelableArrayListForActions(paramArrayOfAction);
    }
    
    public String getSortKey(Notification paramNotification)
    {
      return NotificationCompatJellybean.getSortKey(paramNotification);
    }
    
    public boolean isGroupSummary(Notification paramNotification)
    {
      return NotificationCompatJellybean.isGroupSummary(paramNotification);
    }
  }
  
  static class NotificationCompatImplKitKat
    extends NotificationCompat.NotificationCompatImplJellybean
  {
    public Notification build(NotificationCompat.Builder paramBuilder)
    {
      NotificationCompatKitKat.Builder localBuilder = new NotificationCompatKitKat.Builder(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon, mProgressMax, mProgress, mProgressIndeterminate, mShowWhen, mUseChronometer, mPriority, mSubText, mLocalOnly, mPeople, mExtras, mGroupKey, mGroupSummary, mSortKey);
      NotificationCompat.access$000(localBuilder, mActions);
      NotificationCompat.access$100(localBuilder, mStyle);
      return localBuilder.build();
    }
    
    public NotificationCompat.Action getAction(Notification paramNotification, int paramInt)
    {
      return (NotificationCompat.Action)NotificationCompatKitKat.getAction(paramNotification, paramInt, NotificationCompat.Action.FACTORY, RemoteInput.FACTORY);
    }
    
    public final int getActionCount(Notification paramNotification)
    {
      return NotificationCompatKitKat.getActionCount(paramNotification);
    }
    
    public final Bundle getExtras(Notification paramNotification)
    {
      return NotificationCompatKitKat.getExtras(paramNotification);
    }
    
    public String getGroup(Notification paramNotification)
    {
      return NotificationCompatKitKat.getGroup(paramNotification);
    }
    
    public boolean getLocalOnly(Notification paramNotification)
    {
      return NotificationCompatKitKat.getLocalOnly(paramNotification);
    }
    
    public String getSortKey(Notification paramNotification)
    {
      return NotificationCompatKitKat.getSortKey(paramNotification);
    }
    
    public boolean isGroupSummary(Notification paramNotification)
    {
      return NotificationCompatKitKat.isGroupSummary(paramNotification);
    }
  }
  
  public static abstract class Style
  {
    CharSequence mBigContentTitle;
    NotificationCompat.Builder mBuilder;
    CharSequence mSummaryText;
    boolean mSummaryTextSet = false;
    
    private Notification build()
    {
      Notification localNotification = null;
      if (mBuilder != null) {
        localNotification = mBuilder.build();
      }
      return localNotification;
    }
    
    public final void setBuilder(NotificationCompat.Builder paramBuilder)
    {
      if (mBuilder != paramBuilder)
      {
        mBuilder = paramBuilder;
        if (mBuilder != null) {
          mBuilder.setStyle(this);
        }
      }
    }
  }
  
  public static final class WearableExtender
    implements NotificationCompat.Extender
  {
    private static final int DEFAULT_CONTENT_ICON_GRAVITY = 8388613;
    private static final int DEFAULT_FLAGS = 1;
    private static final int DEFAULT_GRAVITY = 80;
    private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
    private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
    private static final int FLAG_HINT_AVOID_BACKGROUND_CLIPPING = 16;
    private static final int FLAG_HINT_HIDE_ICON = 2;
    private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
    private static final int FLAG_START_SCROLL_BOTTOM = 8;
    private static final String KEY_ACTIONS = "actions";
    private static final String KEY_BACKGROUND = "background";
    private static final String KEY_CONTENT_ACTION_INDEX = "contentActionIndex";
    private static final String KEY_CONTENT_ICON = "contentIcon";
    private static final String KEY_CONTENT_ICON_GRAVITY = "contentIconGravity";
    private static final String KEY_CUSTOM_CONTENT_HEIGHT = "customContentHeight";
    private static final String KEY_CUSTOM_SIZE_PRESET = "customSizePreset";
    private static final String KEY_DISPLAY_INTENT = "displayIntent";
    private static final String KEY_FLAGS = "flags";
    private static final String KEY_GRAVITY = "gravity";
    private static final String KEY_HINT_SCREEN_TIMEOUT = "hintScreenTimeout";
    private static final String KEY_PAGES = "pages";
    public static final int SCREEN_TIMEOUT_LONG = -1;
    public static final int SCREEN_TIMEOUT_SHORT = 0;
    public static final int SIZE_DEFAULT = 0;
    public static final int SIZE_FULL_SCREEN = 5;
    public static final int SIZE_LARGE = 4;
    public static final int SIZE_MEDIUM = 3;
    public static final int SIZE_SMALL = 2;
    public static final int SIZE_XSMALL = 1;
    public static final int UNSET_ACTION_INDEX = -1;
    private ArrayList<NotificationCompat.Action> mActions = new ArrayList();
    public Bitmap mBackground;
    private int mContentActionIndex = -1;
    private int mContentIcon;
    private int mContentIconGravity = 8388613;
    private int mCustomContentHeight;
    private int mCustomSizePreset = 0;
    private PendingIntent mDisplayIntent;
    private int mFlags = 1;
    private int mGravity = 80;
    private int mHintScreenTimeout;
    private ArrayList<Notification> mPages = new ArrayList();
    
    public WearableExtender() {}
    
    private WearableExtender(Notification paramNotification)
    {
      paramNotification = NotificationCompat.getExtras(paramNotification);
      if (paramNotification != null) {}
      for (paramNotification = paramNotification.getBundle("android.wearable.EXTENSIONS");; paramNotification = null)
      {
        if (paramNotification != null)
        {
          Object localObject = NotificationCompat.IMPL.getActionsFromParcelableArrayList(paramNotification.getParcelableArrayList("actions"));
          if (localObject != null) {
            Collections.addAll(mActions, (Object[])localObject);
          }
          mFlags = paramNotification.getInt("flags", 1);
          mDisplayIntent = ((PendingIntent)paramNotification.getParcelable("displayIntent"));
          localObject = NotificationCompat.access$500(paramNotification, "pages");
          if (localObject != null) {
            Collections.addAll(mPages, (Object[])localObject);
          }
          mBackground = ((Bitmap)paramNotification.getParcelable("background"));
          mContentIcon = paramNotification.getInt("contentIcon");
          mContentIconGravity = paramNotification.getInt("contentIconGravity", 8388613);
          mContentActionIndex = paramNotification.getInt("contentActionIndex", -1);
          mCustomSizePreset = paramNotification.getInt("customSizePreset", 0);
          mCustomContentHeight = paramNotification.getInt("customContentHeight");
          mGravity = paramNotification.getInt("gravity", 80);
          mHintScreenTimeout = paramNotification.getInt("hintScreenTimeout");
        }
        return;
      }
    }
    
    private WearableExtender addAction(NotificationCompat.Action paramAction)
    {
      mActions.add(paramAction);
      return this;
    }
    
    private WearableExtender addActions(List<NotificationCompat.Action> paramList)
    {
      mActions.addAll(paramList);
      return this;
    }
    
    private WearableExtender addPage(Notification paramNotification)
    {
      mPages.add(paramNotification);
      return this;
    }
    
    private WearableExtender addPages(List<Notification> paramList)
    {
      mPages.addAll(paramList);
      return this;
    }
    
    private WearableExtender clearActions()
    {
      mActions.clear();
      return this;
    }
    
    private WearableExtender clearPages()
    {
      mPages.clear();
      return this;
    }
    
    private WearableExtender clone()
    {
      WearableExtender localWearableExtender = new WearableExtender();
      mActions = new ArrayList(mActions);
      mFlags = mFlags;
      mDisplayIntent = mDisplayIntent;
      mPages = new ArrayList(mPages);
      mBackground = mBackground;
      mContentIcon = mContentIcon;
      mContentIconGravity = mContentIconGravity;
      mContentActionIndex = mContentActionIndex;
      mCustomSizePreset = mCustomSizePreset;
      mCustomContentHeight = mCustomContentHeight;
      mGravity = mGravity;
      mHintScreenTimeout = mHintScreenTimeout;
      return localWearableExtender;
    }
    
    private List<NotificationCompat.Action> getActions()
    {
      return mActions;
    }
    
    private Bitmap getBackground()
    {
      return mBackground;
    }
    
    private int getContentAction()
    {
      return mContentActionIndex;
    }
    
    private int getContentIcon()
    {
      return mContentIcon;
    }
    
    private int getContentIconGravity()
    {
      return mContentIconGravity;
    }
    
    private boolean getContentIntentAvailableOffline()
    {
      return (mFlags & 0x1) != 0;
    }
    
    private int getCustomContentHeight()
    {
      return mCustomContentHeight;
    }
    
    private int getCustomSizePreset()
    {
      return mCustomSizePreset;
    }
    
    private PendingIntent getDisplayIntent()
    {
      return mDisplayIntent;
    }
    
    private int getGravity()
    {
      return mGravity;
    }
    
    private boolean getHintAvoidBackgroundClipping()
    {
      return (mFlags & 0x10) != 0;
    }
    
    private boolean getHintHideIcon()
    {
      return (mFlags & 0x2) != 0;
    }
    
    private int getHintScreenTimeout()
    {
      return mHintScreenTimeout;
    }
    
    private boolean getHintShowBackgroundOnly()
    {
      return (mFlags & 0x4) != 0;
    }
    
    private List<Notification> getPages()
    {
      return mPages;
    }
    
    private boolean getStartScrollBottom()
    {
      return (mFlags & 0x8) != 0;
    }
    
    private WearableExtender setBackground(Bitmap paramBitmap)
    {
      mBackground = paramBitmap;
      return this;
    }
    
    private WearableExtender setContentAction(int paramInt)
    {
      mContentActionIndex = paramInt;
      return this;
    }
    
    private WearableExtender setContentIcon(int paramInt)
    {
      mContentIcon = paramInt;
      return this;
    }
    
    private WearableExtender setContentIconGravity(int paramInt)
    {
      mContentIconGravity = paramInt;
      return this;
    }
    
    private WearableExtender setContentIntentAvailableOffline(boolean paramBoolean)
    {
      setFlag(1, paramBoolean);
      return this;
    }
    
    private WearableExtender setCustomContentHeight(int paramInt)
    {
      mCustomContentHeight = paramInt;
      return this;
    }
    
    private WearableExtender setCustomSizePreset(int paramInt)
    {
      mCustomSizePreset = paramInt;
      return this;
    }
    
    private WearableExtender setDisplayIntent(PendingIntent paramPendingIntent)
    {
      mDisplayIntent = paramPendingIntent;
      return this;
    }
    
    private void setFlag(int paramInt, boolean paramBoolean)
    {
      if (paramBoolean)
      {
        mFlags |= paramInt;
        return;
      }
      mFlags &= (paramInt ^ 0xFFFFFFFF);
    }
    
    private WearableExtender setGravity(int paramInt)
    {
      mGravity = paramInt;
      return this;
    }
    
    private WearableExtender setHintAvoidBackgroundClipping(boolean paramBoolean)
    {
      setFlag(16, paramBoolean);
      return this;
    }
    
    private WearableExtender setHintHideIcon(boolean paramBoolean)
    {
      setFlag(2, paramBoolean);
      return this;
    }
    
    private WearableExtender setHintScreenTimeout(int paramInt)
    {
      mHintScreenTimeout = paramInt;
      return this;
    }
    
    private WearableExtender setHintShowBackgroundOnly(boolean paramBoolean)
    {
      setFlag(4, paramBoolean);
      return this;
    }
    
    private WearableExtender setStartScrollBottom(boolean paramBoolean)
    {
      setFlag(8, paramBoolean);
      return this;
    }
    
    public final NotificationCompat.Builder extend(NotificationCompat.Builder paramBuilder)
    {
      Bundle localBundle = new Bundle();
      if (!mActions.isEmpty()) {
        localBundle.putParcelableArrayList("actions", NotificationCompat.IMPL.getParcelableArrayListForActions((NotificationCompat.Action[])mActions.toArray(new NotificationCompat.Action[mActions.size()])));
      }
      if (mFlags != 1) {
        localBundle.putInt("flags", mFlags);
      }
      if (mDisplayIntent != null) {
        localBundle.putParcelable("displayIntent", mDisplayIntent);
      }
      if (!mPages.isEmpty()) {
        localBundle.putParcelableArray("pages", (Parcelable[])mPages.toArray(new Notification[mPages.size()]));
      }
      if (mBackground != null) {
        localBundle.putParcelable("background", mBackground);
      }
      if (mContentIcon != 0) {
        localBundle.putInt("contentIcon", mContentIcon);
      }
      if (mContentIconGravity != 8388613) {
        localBundle.putInt("contentIconGravity", mContentIconGravity);
      }
      if (mContentActionIndex != -1) {
        localBundle.putInt("contentActionIndex", mContentActionIndex);
      }
      if (mCustomSizePreset != 0) {
        localBundle.putInt("customSizePreset", mCustomSizePreset);
      }
      if (mCustomContentHeight != 0) {
        localBundle.putInt("customContentHeight", mCustomContentHeight);
      }
      if (mGravity != 80) {
        localBundle.putInt("gravity", mGravity);
      }
      if (mHintScreenTimeout != 0) {
        localBundle.putInt("hintScreenTimeout", mHintScreenTimeout);
      }
      paramBuilder.getExtras().putBundle("android.wearable.EXTENSIONS", localBundle);
      return paramBuilder;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */