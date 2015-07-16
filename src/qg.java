import android.os.Message;
import android.text.TextUtils;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.AddSourceType;
import com.snapchat.android.model.Friend.SuggestState;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import javax.inject.Provider;

public class qg
  extends tx
  implements ui.b<bli>
{
  private static final String TAG = "FriendActionTask";
  public FriendAction mAction;
  public il mActionMethod;
  public AnalyticsEvents.AddFriendSourceType mAddSourceType;
  public AnalyticsEvents.AnalyticsContext mAnalyticsContext;
  protected FriendAction.BlockReason mBlockReason;
  private final Bus mBus;
  protected String mDisplayName;
  @chd
  public Friend mFriend;
  public qg.a mFriendActionCompleteCallback;
  public int mFriendIndex;
  protected String mFriendUserId;
  protected String mFriendUsername;
  private final auk mFriendUtils;
  protected boolean mIsJustAdded;
  protected String mOldDisplayName;
  public Message mOnFriendActionMessage;
  private ProfileEventAnalytics mProfileEventAnalytics;
  public boolean mShowFailureDialog;
  final Provider<akp> mUserProvider;
  
  public qg(Friend paramFriend, FriendAction paramFriendAction)
  {
    this(paramFriendAction, paramFriend, paramFriend.l(), mUserId, paramFriend.a(), mJustAdded, null, null);
  }
  
  public qg(Friend paramFriend, FriendAction paramFriendAction, String paramString)
  {
    this(paramFriend, paramFriendAction);
    mOldDisplayName = paramString;
  }
  
  public qg(FriendAction paramFriendAction, @chd Friend paramFriend, String paramString1, @chd String paramString2, String paramString3, boolean paramBoolean, @chd String paramString4, @chd FriendAction.BlockReason paramBlockReason)
  {
    this(paramFriendAction, paramFriend, paramString1, paramString2, paramString3, paramBoolean, paramString4, paramBlockReason, akp.UNSAFE_USER_PROVIDER, auk.a());
  }
  
  @cf
  private qg(FriendAction paramFriendAction, @chd Friend paramFriend, String paramString1, @chd String paramString2, String paramString3, boolean paramBoolean, @chd String paramString4, @chd FriendAction.BlockReason paramBlockReason, Provider<akp> paramProvider, auk paramauk)
  {
    mAction = paramFriendAction;
    mFriend = paramFriend;
    mFriendUsername = paramString1;
    mFriendUserId = paramString2;
    mDisplayName = paramString3;
    mIsJustAdded = paramBoolean;
    mOldDisplayName = paramString4;
    mBlockReason = paramBlockReason;
    mUserProvider = paramProvider;
    mFriendUtils = paramauk;
    mBus = bbo.a();
    mShowFailureDialog = true;
    mFriendIndex = -1;
    registerCallback(bli.class, this);
  }
  
  public final qg a()
  {
    mProfileEventAnalytics = ProfileEventAnalytics.a();
    return this;
  }
  
  @cdn
  public void a(bli parambli, @chd akp paramakp)
  {
    int i;
    if (!(mFriend instanceof agl))
    {
      i = 1;
      if (paramakp != null)
      {
        new StringBuilder("onSuccess - action ").append(mAction);
        parambli = parambli.a();
        switch (mAction)
        {
        }
      }
    }
    for (;;)
    {
      if (i != 0) {
        paramakp.x();
      }
      if (mFriendActionCompleteCallback != null) {
        mFriendActionCompleteCallback.a(mAction, true, null);
      }
      if ((mFriend != null) && (i != 0) && (mProfileEventAnalytics != null)) {
        ProfileEventAnalytics.a(mAction, mAnalyticsContext, mFriendIndex, mFriend, mAddSourceType, true, null, mActionMethod);
      }
      mBus.a(new bdw(mFriend, mAction));
      akr.o(false);
      return;
      i = 0;
      break;
      if (parambli != null)
      {
        if (mFriend != null)
        {
          auk.a(mFriendUsername, true, paramakp);
          mFriend.mSuggestionState = Friend.SuggestState.NOT_SUGGESTION;
        }
        if (!(mFriend instanceof agl))
        {
          parambli = auk.a(parambli, paramakp);
          if (mFriend != null) {
            mSuggestionState = mFriend.mSuggestionState;
          }
          mJustAdded = mIsJustAdded;
          new qi(ayg.a(parambli.l())).execute();
          mIAddedThemTimestamp = System.currentTimeMillis();
          paramakp.e();
          continue;
          if (mFriend != null)
          {
            paramakp.f(mFriend.l());
            auk.a(mFriendUsername, false, paramakp);
            if (!(mFriend instanceof agl))
            {
              paramakp.g(mFriendUsername);
              continue;
              if (i != 0)
              {
                parambli = mFriendUsername;
                paramakp.a(parambli, true);
                mStoryLibrary.c(parambli);
                akx.c().b(ayg.a(parambli), true);
                paramakp.h(parambli);
                paramakp.i(parambli);
                continue;
                if (i != 0)
                {
                  if ((parambli != null) && (parambli.c() == biu.a.DELETED)) {
                    paramakp.g(mFriendUsername);
                  }
                  auk.h(mFriendUsername, paramakp);
                  continue;
                  if (mFriend != null)
                  {
                    mFriend.mIsIgnored = true;
                    continue;
                    if (mFriend != null)
                    {
                      mFriend.mIsHidden = true;
                      continue;
                      if (i != 0) {
                        auk.a(mFriendUsername, mDisplayName, paramakp);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  @cdn
  public void a(@chd bli parambli, @chc us paramus) {}
  
  @cdn
  protected final void a(@chc us paramus, @chd String paramString, @chd akp paramakp)
  {
    int i;
    if ((mShowFailureDialog) && (!TextUtils.isEmpty(paramString)))
    {
      if (!TextUtils.isEmpty(paramString)) {}
    }
    else {
      switch (mAction)
      {
      default: 
        paramString = null;
        if (paramString != null) {
          mBus.a(paramString);
        }
        if (paramakp != null)
        {
          if ((mFriend instanceof agl)) {
            break label261;
          }
          i = 1;
          label87:
          switch (mAction)
          {
          }
        }
        break;
      }
    }
    for (;;)
    {
      if ((mFriend != null) && (!(mFriend instanceof agl)) && (mProfileEventAnalytics != null)) {
        ProfileEventAnalytics.a(mAction, mAnalyticsContext, mFriend, mAddSourceType, false, mResponseMessage);
      }
      if (mFriendActionCompleteCallback != null) {
        mFriendActionCompleteCallback.a(mAction, false, mResponseMessage);
      }
      mBus.a(new bdw(mFriend, mAction));
      return;
      paramString = new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131492879);
      break;
      paramString = new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131492882);
      break;
      paramString = new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, paramString);
      break;
      label261:
      i = 0;
      break label87;
      if (i != 0) {
        auk.a(mFriendUsername, mOldDisplayName, paramakp);
      }
    }
  }
  
  public void execute()
  {
    if (mAnalyticsContext != null) {
      AnalyticsEvents.a(mAction, mAnalyticsContext, mFriend);
    }
    if (mOnFriendActionMessage != null)
    {
      mOnFriendActionMessage.obj = mAction;
      mOnFriendActionMessage.sendToTarget();
    }
    super.execute();
  }
  
  protected String getPath()
  {
    return "/bq/friend";
  }
  
  public Object getRequestPayload()
  {
    qg.b localb = new qg.b();
    localb.a(mAction.getServerActionName());
    localb.b(mFriendUsername);
    if (!TextUtils.isEmpty(mFriendUserId)) {
      localb.i(mFriendUserId);
    }
    if (mAddSourceType != null) {
      localb.j(mAddSourceType.getAddSourceType().name());
    }
    localb.a(Integer.valueOf(mFriendIndex));
    if (mAnalyticsContext != null) {
      localb.k(mAnalyticsContext.name());
    }
    if (mAction == FriendAction.SET_DISPLAY_NAME) {
      localb.l(mDisplayName);
    }
    if ((mAction.equals(FriendAction.BLOCK)) && (mBlockReason != null)) {
      localb.b(Integer.valueOf(mBlockReason.getCode()));
    }
    return buildAuthPayload(localb);
  }
  
  public static abstract interface a
  {
    public abstract void a(FriendAction paramFriendAction, boolean paramBoolean, @chd String paramString);
  }
  
  @ud
  public final class b
    extends blh
  {
    public b() {}
  }
}

/* Location:
 * Qualified Name:     qg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */