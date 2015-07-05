import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.Editable.Factory;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled;
import com.snapchat.android.fragments.stories.StoriesAdapter.b;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryGroup.ActionState;
import com.snapchat.android.model.StoryGroup.b;
import com.snapchat.android.ui.ProgressiveSaveButton;
import com.snapchat.android.ui.ProgressiveSaveButton.AnimationState;
import java.util.List;
import java.util.Set;

public class ahc
  extends asn
  implements StoryGroup.b
{
  protected final ViewGroup A;
  public final TextView B;
  protected final LinearLayout C;
  public final ProgressiveSaveButton D;
  public final bgr<Button> E;
  public final Button F;
  public final Button G;
  protected final ProgressBar H;
  protected final CheckBox I;
  public final FrameLayout J;
  protected final LinearLayout K;
  public final View L;
  public final View M;
  protected final Context N;
  public aow O;
  public ahb P;
  public int Q;
  protected boolean R = false;
  protected final LinearLayout w;
  public final ImageView x;
  public final bgr<ProgressBar> y;
  public final bgr<ImageView> z;
  
  public ahc(View paramView)
  {
    super(null, paramView);
    N = paramView.getContext();
    w = ((LinearLayout)paramView.findViewById(2131362453));
    J = ((FrameLayout)paramView.findViewById(2131362454));
    x = ((ImageView)paramView.findViewById(2131362455));
    y = new bgr(paramView, 2131362458, 2131362780);
    z = new bgr(paramView, 2131362459, 2131362772);
    A = ((ViewGroup)paramView.findViewById(2131362453));
    B = ((TextView)paramView.findViewById(2131362364));
    K = ((LinearLayout)paramView.findViewById(2131362349));
    C = ((LinearLayout)paramView.findViewById(2131362463));
    D = new ProgressiveSaveButton(N);
    C.addView(D);
    E = new bgr(paramView, 2131362464, 2131362787);
    F = ((Button)paramView.findViewById(2131361862));
    G = ((Button)paramView.findViewById(2131362465));
    H = ((ProgressBar)paramView.findViewById(2131362457));
    I = ((CheckBox)paramView.findViewById(2131361864));
    L = paramView.findViewById(2131362467);
    M = paramView.findViewById(2131362468);
  }
  
  private boolean x()
  {
    return (O != null) && (O.a.isStarted());
  }
  
  protected void a(@cgb ahb paramahb, int paramInt)
  {
    int j = 1;
    Object localObject1;
    final Object localObject2;
    int i;
    if ((paramahb instanceof ahd))
    {
      Object localObject3 = (ahd)paramahb;
      a((ahd)localObject3);
      paramahb = B.getText();
      localObject1 = SnapchatApplication.b().getApplicationContext();
      localObject2 = ((ahd)localObject3).d();
      if (!(localObject3 instanceof agw))
      {
        i = 1;
        localObject3 = wt.a();
        boolean bool = ajx.aJ();
        localObject3 = a;
        localObject3 = TranscodingPreferencesWrapper.b();
        if ((localObject3 != TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED) && (localObject3 != TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED_FOR_LOW_QUALITY)) {
          break label139;
        }
        j = 1;
        label96:
        if ((!bool) || (j == 0)) {
          break label145;
        }
        j = 1;
        label109:
        if ((i == 0) && (j != 0)) {
          break label151;
        }
        i = 1;
        label120:
        if (i == 0) {
          break label156;
        }
        C.setVisibility(8);
      }
    }
    label139:
    label145:
    label151:
    label156:
    label589:
    do
    {
      return;
      i = 0;
      break;
      j = 0;
      break label96;
      j = 0;
      break label109;
      i = 0;
      break label120;
      switch (ahc.3.a[mActionState.ordinal()])
      {
      default: 
        throw new IllegalStateException("Unhandled action state for story group.");
      case 1: 
        C.setVisibility(paramInt);
        D.setAnimationState(ProgressiveSaveButton.AnimationState.READY);
        D.setEnabled(true);
      }
      for (;;)
      {
        avh.a(C, D, N.getResources().getDimensionPixelSize(2131296423));
        return;
        C.setVisibility(paramInt);
        D.setAnimationState(ProgressiveSaveButton.AnimationState.READY);
        D.setEnabled(false);
        continue;
        C.setVisibility(0);
        D.setAnimationState(ProgressiveSaveButton.AnimationState.SAVING);
        D.setSaveProgress(mSaveProgress);
        D.setEnabled(false);
        B.setText(((Context)localObject1).getString(2131493379, new Object[] { paramahb }));
        continue;
        C.setVisibility(0);
        D.setAnimationState(ProgressiveSaveButton.AnimationState.SAVED);
        D.setEnabled(false);
        B.setText(((Context)localObject1).getString(2131493378, new Object[] { paramahb }));
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            if (localObject2mActionState == StoryGroup.ActionState.SAVED) {
              localObject2.a(StoryGroup.ActionState.READY);
            }
          }
        }, 2000L);
      }
      if ((paramahb instanceof Friend))
      {
        paramahb = (Friend)paramahb;
        a(paramahb);
        localObject1 = B.getText();
        localObject2 = SnapchatApplication.b().getApplicationContext();
        switch (ahc.3.b[mActionState.ordinal()])
        {
        default: 
          i = 0;
          if (i != 0) {
            B.setText(((Context)localObject2).getString(i, new Object[] { localObject1 }));
          }
          if (mActionState == FriendAction.NONE) {
            break;
          }
        }
        for (i = j;; i = 0)
        {
          if (i == 0) {
            break label589;
          }
          E.a(8);
          H.setVisibility(0);
          return;
          i = 2131492943;
          break;
          i = 2131493111;
          break;
          i = 2131493379;
          break;
        }
        E.a(paramInt);
        H.setVisibility(8);
        return;
      }
    } while ((paramahb instanceof ajg));
    throw new IllegalStateException("Unexpected feed item type.");
  }
  
  public final void a(@cgb ahd paramahd)
  {
    Context localContext = SnapchatApplication.b().getApplicationContext();
    StoryGroup localStoryGroup = paramahd.d();
    int i = localStoryGroup.j().size();
    int j = localStoryGroup.i().size();
    if (i > 0) {
      if (i == 1) {
        B.setText(2131493492);
      }
    }
    do
    {
      return;
      B.setText(localContext.getResources().getString(2131493499, new Object[] { Integer.valueOf(i) }));
      return;
      if (j > 0)
      {
        if (j == 1)
        {
          B.setText(2131493320);
          return;
        }
        B.setText(localContext.getResources().getString(2131493321, new Object[] { Integer.valueOf(j) }));
        return;
      }
      if (paramahd.l())
      {
        B.setText(paramahd.a(localContext));
        return;
      }
    } while ((paramahd.j()) && (!TextUtils.equals(paramahd.a(), paramahd.h())));
    B.setText("");
  }
  
  public final void a(@cgb Friend paramFriend)
  {
    StoryCollection localStoryCollection = ajq.a().b(paramFriend.h());
    if (localStoryCollection != null) {
      a(localStoryCollection);
    }
    while (paramFriend.j()) {
      return;
    }
    B.setText("");
  }
  
  @avl
  public final void a(final Friend paramFriend, final StoriesAdapter.b paramb, final Set<String> paramSet)
  {
    x.setVisibility(8);
    F.setVisibility(8);
    E.a(8);
    if (paramFriend.g())
    {
      if (mIsPending)
      {
        a(paramFriend.k());
        B.setText(2131492875);
      }
      while (paramFriend.g())
      {
        I.setVisibility(8);
        a(2130837615, paramb.i(), AnalyticsEvents.AddFriendSourceType.USERNAME, paramb.j(), paramFriend);
        return;
        if (paramFriend.j())
        {
          a(paramFriend.a());
          B.setText(paramFriend.h());
        }
        else
        {
          B.setText("");
        }
      }
    }
    a(paramFriend.a());
    Object localObject = mPhoneNumber;
    if (((TelephonyManager)N.getSystemService("phone")).getNetworkCountryIso().equalsIgnoreCase("US"))
    {
      localObject = Editable.Factory.getInstance().newEditable((CharSequence)localObject);
      PhoneNumberUtils.formatNanpNumber((Editable)localObject);
      localObject = localObject.toString();
    }
    for (;;)
    {
      B.setText(N.getString(2131493510, new Object[] { localObject }));
      break;
      v();
      w();
      I.setVisibility(0);
      I.setChecked(paramSet.contains(mPhoneNumber));
      I.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          I.setChecked(true);
          paramAnonymousView = paramFriendmPhoneNumber;
          String str = N.getString(2131493207, new Object[] { ajx.l() });
          ave.a(N, paramAnonymousView, str);
          if (!paramSet.contains(paramAnonymousView))
          {
            paramSet.add(paramAnonymousView);
            AnalyticsEvents.a(FriendAction.INVITE, paramb.i().name(), paramFriend, AnalyticsEvents.AddFriendSourceType.CONTACTS, paramb.j());
            if (RegistrationAnalytics.b()) {
              AnalyticsEvents.j(paramFriendmPhoneNumber);
            }
          }
        }
      });
      return;
    }
  }
  
  public final void a(@cgb StoryCollection paramStoryCollection)
  {
    Context localContext = SnapchatApplication.b().getApplicationContext();
    boolean bool = paramStoryCollection instanceof ajo;
    String str2;
    String str1;
    if (bool)
    {
      str2 = localContext.getString(2131493502);
      if ((!paramStoryCollection.n()) || (bool)) {
        break label91;
      }
      str1 = str2 + " - " + localContext.getString(2131493528);
    }
    for (;;)
    {
      B.setText(str1);
      return;
      str2 = paramStoryCollection.a(localContext);
      break;
      label91:
      if (paramStoryCollection.o())
      {
        str1 = str2 + " - " + localContext.getString(2131493169);
      }
      else if (!bool)
      {
        str1 = str2 + " - " + localContext.getString(2131493524);
      }
      else
      {
        str1 = str2;
        if (bool)
        {
          str1 = str2;
          if (paramStoryCollection.w().isEmpty()) {
            str1 = str2 + " - " + localContext.getString(2131493525);
          }
        }
      }
    }
  }
  
  public final void a(@cgb StoryGroup paramStoryGroup)
  {
    if ((!(P instanceof ahd)) || (((ahd)P).d() != paramStoryGroup))
    {
      Timber.e("StoriesListItemViewHolder", "View received changed notification from different model.", new Object[0]);
      return;
    }
    s();
  }
  
  public final void c(boolean paramBoolean)
  {
    if (R != paramBoolean)
    {
      R = paramBoolean;
      s();
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    bgr localbgr;
    if (((P instanceof Friend)) && (!P).mIsSharedStory))
    {
      localbgr = E;
      if (!paramBoolean) {
        break label40;
      }
    }
    label40:
    for (int i = 0;; i = 8)
    {
      localbgr.a(i);
      return;
    }
  }
  
  public final void e(boolean paramBoolean)
  {
    bgr localbgr = y;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localbgr.a(i);
      f(paramBoolean);
      if (paramBoolean) {
        t();
      }
      return;
    }
  }
  
  public final void f(boolean paramBoolean)
  {
    float f2 = 0.6F;
    Object localObject = x;
    if (paramBoolean)
    {
      f1 = 0.6F;
      ((ImageView)localObject).setAlpha(f1);
      g(paramBoolean);
      localObject = F;
      if (!paramBoolean) {
        break label53;
      }
    }
    label53:
    for (float f1 = f2;; f1 = 1.0F)
    {
      ((Button)localObject).setAlpha(f1);
      return;
      f1 = 1.0F;
      break;
    }
  }
  
  public final void g(boolean paramBoolean)
  {
    TextView localTextView = X;
    if (paramBoolean) {}
    for (float f = 0.4F;; f = 1.0F)
    {
      localTextView.setAlpha(f);
      return;
    }
  }
  
  public void q()
  {
    super.q();
    J.setVisibility(0);
    C.setVisibility(8);
    E.a(8);
    H.setVisibility(8);
    F.setVisibility(8);
    I.setVisibility(8);
    x.setVisibility(8);
    z.a(8);
    G.setVisibility(8);
    b(-16777216);
    F.setOnClickListener(null);
    I.setOnClickListener(null);
    R = false;
    L.setVisibility(8);
  }
  
  public boolean r()
  {
    return !(P instanceof ahd);
  }
  
  public final void s()
  {
    ahb localahb = P;
    if (R) {}
    for (int i = 0;; i = 8)
    {
      a(localahb, i);
      return;
    }
  }
  
  public final boolean t()
  {
    if ((B.getVisibility() == 0) || (x())) {
      return false;
    }
    O = new aoy(X, B);
    O.a.start();
    return true;
  }
  
  public final boolean u()
  {
    if ((B.getVisibility() == 8) || (x())) {
      return false;
    }
    O = new aox(X, B);
    O.a.start();
    return true;
  }
}

/* Location:
 * Qualified Name:     ahc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */