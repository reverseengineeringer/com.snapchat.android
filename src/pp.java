import android.os.Message;
import android.text.TextUtils;
import com.snapchat.android.Timber;
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

public class pp
  extends th
  implements ts.b<bkh>
{
  private static final String TAG = "FriendActionTask";
  public FriendAction mAction;
  public ic mActionMethod;
  public AnalyticsEvents.AddFriendSourceType mAddSourceType;
  public AnalyticsEvents.AnalyticsContext mAnalyticsContext;
  protected FriendAction.BlockReason mBlockReason;
  private final Bus mBus;
  protected String mDisplayName;
  @cgc
  public Friend mFriend;
  public pp.a mFriendActionCompleteCallback;
  public int mFriendIndex;
  protected String mFriendUserId;
  protected String mFriendUsername;
  private final atm mFriendUtils;
  protected boolean mIsJustAdded;
  protected String mOldDisplayName;
  public Message mOnFriendActionMessage;
  private ProfileEventAnalytics mProfileEventAnalytics;
  public boolean mShowFailureDialog;
  final Provider<ajv> mUserProvider;
  
  public pp(Friend paramFriend, FriendAction paramFriendAction)
  {
    this(paramFriendAction, paramFriend, paramFriend.h(), mUserId, paramFriend.a(), mJustAdded, null, null);
  }
  
  public pp(Friend paramFriend, FriendAction paramFriendAction, String paramString)
  {
    this(paramFriend, paramFriendAction);
    mOldDisplayName = paramString;
  }
  
  public pp(FriendAction paramFriendAction, @cgc Friend paramFriend, String paramString1, @cgc String paramString2, String paramString3, boolean paramBoolean, @cgc String paramString4, @cgc FriendAction.BlockReason paramBlockReason)
  {
    this(paramFriendAction, paramFriend, paramString1, paramString2, paramString3, paramBoolean, paramString4, paramBlockReason, ajv.UNSAFE_USER_PROVIDER, atm.a());
  }
  
  @cf
  private pp(FriendAction paramFriendAction, @cgc Friend paramFriend, String paramString1, @cgc String paramString2, String paramString3, boolean paramBoolean, @cgc String paramString4, @cgc FriendAction.BlockReason paramBlockReason, Provider<ajv> paramProvider, atm paramatm)
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
    mFriendUtils = paramatm;
    mBus = ban.a();
    mShowFailureDialog = true;
    mFriendIndex = -1;
    a(bkh.class, this);
  }
  
  @ccm
  public void a(bkh parambkh, @cgc ajv paramajv)
  {
    int i;
    if (!(mFriend instanceof afl))
    {
      i = 1;
      if (paramajv != null)
      {
        Timber.c("FriendActionTask", "onSuccess - action " + mAction, new Object[0]);
        parambkh = parambkh.a();
        switch (mAction)
        {
        }
      }
    }
    for (;;)
    {
      if (i != 0) {
        paramajv.x();
      }
      if (mFriendActionCompleteCallback != null) {
        mFriendActionCompleteCallback.a(mAction, true, null);
      }
      if ((mFriend != null) && (i != 0) && (mProfileEventAnalytics != null)) {
        ProfileEventAnalytics.a(mAction, mAnalyticsContext, mFriendIndex, mFriend, mAddSourceType, true, null, mActionMethod);
      }
      mBus.a(new bcw(mFriend, mAction));
      ajx.p(false);
      return;
      i = 0;
      break;
      if (parambkh != null)
      {
        if (mFriend != null)
        {
          atm.a(mFriendUsername, true, paramajv);
          mFriend.mSuggestionState = Friend.SuggestState.NOT_SUGGESTION;
        }
        if (!(mFriend instanceof afl))
        {
          parambkh = atm.a(parambkh, paramajv);
          if (mFriend != null) {
            mSuggestionState = mFriend.mSuggestionState;
          }
          mJustAdded = mIsJustAdded;
          new pr(axi.a(parambkh.h())).f();
          mIAddedThemTimestamp = System.currentTimeMillis();
          paramajv.e();
          continue;
          if (mFriend != null)
          {
            paramajv.f(mFriend.h());
            atm.a(mFriendUsername, false, paramajv);
            if (!(mFriend instanceof afl))
            {
              paramajv.g(mFriendUsername);
              continue;
              if (i != 0)
              {
                parambkh = mFriendUsername;
                paramajv.a(parambkh, true);
                mStoryLibrary.c(parambkh);
                akc.b().b(axi.a(parambkh), true);
                paramajv.h(parambkh);
                paramajv.i(parambkh);
                continue;
                if (i != 0)
                {
                  if ((parambkh != null) && (parambkh.c() == bhu.a.DELETED)) {
                    paramajv.g(mFriendUsername);
                  }
                  atm.h(mFriendUsername, paramajv);
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
                        atm.a(mFriendUsername, mDisplayName, paramajv);
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
  
  @ccm
  public void a(@cgc bkh parambkh, @cgb uc paramuc) {}
  
  @ccm
  protected final void a(@cgb uc paramuc, @cgc String paramString, @cgc ajv paramajv)
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
        if (paramajv != null)
        {
          if ((mFriend instanceof afl)) {
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
      if ((mFriend != null) && (!(mFriend instanceof afl)) && (mProfileEventAnalytics != null)) {
        ProfileEventAnalytics.a(mAction, mAnalyticsContext, mFriend, mAddSourceType, false, mResponseMessage);
      }
      if (mFriendActionCompleteCallback != null) {
        mFriendActionCompleteCallback.a(mAction, false, mResponseMessage);
      }
      mBus.a(new bcw(mFriend, mAction));
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
        atm.a(mFriendUsername, mOldDisplayName, paramajv);
      }
    }
  }
  
  public final Object b()
  {
    pp.b localb = new pp.b();
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
    return a(localb);
  }
  
  protected final String d()
  {
    return "/bq/friend";
  }
  
  public final pp e()
  {
    mProfileEventAnalytics = ProfileEventAnalytics.a();
    return this;
  }
  
  public void f()
  {
    if (mAnalyticsContext != null) {
      AnalyticsEvents.a(mAction, mAnalyticsContext, mFriend);
    }
    if (mOnFriendActionMessage != null)
    {
      mOnFriendActionMessage.obj = mAction;
      mOnFriendActionMessage.sendToTarget();
    }
    super.f();
  }
  
  public static abstract interface a
  {
    public abstract void a(FriendAction paramFriendAction, boolean paramBoolean, @cgc String paramString);
  }
  
  @tn
  public final class b
    extends bkg
  {
    public b() {}
  }
}

/* Location:
 * Qualified Name:     pp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */