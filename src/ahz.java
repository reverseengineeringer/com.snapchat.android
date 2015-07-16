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
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.AddFriendSourceType;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
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

public class ahz
  extends atm
  implements StoryGroup.b
{
  protected final ViewGroup A;
  public final TextView B;
  protected final LinearLayout C;
  public final ProgressiveSaveButton D;
  public final bhr<Button> E;
  public final Button F;
  public final Button G;
  protected final ProgressBar H;
  protected final CheckBox I;
  public final FrameLayout J;
  protected final LinearLayout K;
  public final View L;
  protected final Context M;
  public aqg N;
  public ahy O;
  public int P;
  protected boolean Q = false;
  protected final LinearLayout w;
  public final ImageView x;
  public final bhr<ProgressBar> y;
  public final bhr<ImageView> z;
  
  public ahz(View paramView)
  {
    super(null, paramView);
    M = paramView.getContext();
    w = ((LinearLayout)paramView.findViewById(2131362454));
    J = ((FrameLayout)paramView.findViewById(2131362455));
    x = ((ImageView)paramView.findViewById(2131362456));
    y = new bhr(paramView, 2131362459, 2131362773);
    z = new bhr(paramView, 2131362460, 2131362765);
    A = ((ViewGroup)paramView.findViewById(2131362454));
    B = ((TextView)paramView.findViewById(2131362362));
    K = ((LinearLayout)paramView.findViewById(2131362347));
    C = ((LinearLayout)paramView.findViewById(2131362464));
    D = new ProgressiveSaveButton(M);
    C.addView(D);
    E = new bhr(paramView, 2131362465, 2131362780);
    F = ((Button)paramView.findViewById(2131361863));
    G = ((Button)paramView.findViewById(2131362466));
    H = ((ProgressBar)paramView.findViewById(2131362458));
    I = ((CheckBox)paramView.findViewById(2131361865));
    L = paramView.findViewById(2131362453);
  }
  
  private boolean x()
  {
    return (N != null) && (N.a.isStarted());
  }
  
  protected void a(@chc ahy paramahy, int paramInt)
  {
    int j = 1;
    Object localObject1;
    final Object localObject2;
    int i;
    if ((paramahy instanceof aia))
    {
      Object localObject3 = (aia)paramahy;
      a((aia)localObject3);
      paramahy = B.getText();
      localObject1 = SnapchatApplication.b().getApplicationContext();
      localObject2 = ((aia)localObject3).d();
      if (!(localObject3 instanceof aht))
      {
        i = 1;
        localObject3 = xo.a();
        boolean bool1 = akr.aI();
        localObject3 = a;
        boolean bool2 = TranscodingPreferencesWrapper.c();
        if ((!bool1) || (!bool2)) {
          break label120;
        }
        j = 1;
        label90:
        if ((i == 0) && (j != 0)) {
          break label126;
        }
        i = 1;
        label101:
        if (i == 0) {
          break label131;
        }
        C.setVisibility(8);
      }
    }
    label120:
    label126:
    label131:
    label561:
    do
    {
      return;
      i = 0;
      break;
      j = 0;
      break label90;
      i = 0;
      break label101;
      switch (ahz.3.a[mActionState.ordinal()])
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
        awf.a(C, D, M.getResources().getDimensionPixelSize(2131296424));
        return;
        C.setVisibility(paramInt);
        D.setAnimationState(ProgressiveSaveButton.AnimationState.READY);
        D.setEnabled(false);
        continue;
        C.setVisibility(0);
        D.setAnimationState(ProgressiveSaveButton.AnimationState.SAVING);
        D.setSaveProgress(mSaveProgress);
        D.setEnabled(false);
        B.setText(((Context)localObject1).getString(2131493379, new Object[] { paramahy }));
        continue;
        C.setVisibility(0);
        D.setAnimationState(ProgressiveSaveButton.AnimationState.SAVED);
        D.setEnabled(false);
        B.setText(((Context)localObject1).getString(2131493378, new Object[] { paramahy }));
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
      if ((paramahy instanceof Friend))
      {
        paramahy = (Friend)paramahy;
        a(paramahy);
        localObject1 = B.getText();
        localObject2 = SnapchatApplication.b().getApplicationContext();
        switch (ahz.3.b[mActionState.ordinal()])
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
            break label561;
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
    } while ((paramahy instanceof akc));
    throw new IllegalStateException("Unexpected feed item type.");
  }
  
  public final void a(@chc aia paramaia)
  {
    Context localContext = SnapchatApplication.b().getApplicationContext();
    StoryGroup localStoryGroup = paramaia.d();
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
      if (paramaia.o())
      {
        B.setText(paramaia.a(localContext));
        return;
      }
    } while ((paramaia.n()) && (!TextUtils.equals(paramaia.a(), paramaia.l())));
    B.setText("");
  }
  
  public final void a(@chc Friend paramFriend)
  {
    StoryCollection localStoryCollection = akk.a().b(paramFriend.l());
    if (localStoryCollection != null) {
      a(localStoryCollection);
    }
    while (paramFriend.n()) {
      return;
    }
    B.setText("");
  }
  
  @awj
  public final void a(final Friend paramFriend, final StoriesAdapter.b paramb, final Set<String> paramSet)
  {
    x.setVisibility(8);
    F.setVisibility(8);
    E.a(8);
    if (paramFriend.h())
    {
      if (mIsPending)
      {
        a(paramFriend.e());
        B.setText(2131492875);
      }
      while (paramFriend.h())
      {
        I.setVisibility(8);
        a(2130837615, paramb.i(), AnalyticsEvents.AddFriendSourceType.USERNAME, paramb.j(), paramFriend);
        return;
        if (paramFriend.n())
        {
          a(paramFriend.a());
          B.setText(paramFriend.l());
        }
        else
        {
          B.setText("");
        }
      }
    }
    a(paramFriend.a());
    Object localObject = mPhoneNumber;
    if (((TelephonyManager)M.getSystemService("phone")).getNetworkCountryIso().equalsIgnoreCase("US"))
    {
      localObject = Editable.Factory.getInstance().newEditable((CharSequence)localObject);
      PhoneNumberUtils.formatNanpNumber((Editable)localObject);
      localObject = localObject.toString();
    }
    for (;;)
    {
      B.setText(M.getString(2131493510, new Object[] { localObject }));
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
          String str = M.getString(2131493207, new Object[] { akr.l() });
          awc.a(M, paramAnonymousView, str);
          if (!paramSet.contains(paramAnonymousView))
          {
            paramSet.add(paramAnonymousView);
            AnalyticsEvents.a(FriendAction.INVITE, paramb.i().name(), paramFriend, AnalyticsEvents.AddFriendSourceType.CONTACTS, paramb.j());
            if (RegistrationAnalytics.b()) {
              AnalyticsEvents.i(paramFriendmPhoneNumber);
            }
          }
        }
      });
      return;
    }
  }
  
  public final void a(@chc StoryCollection paramStoryCollection)
  {
    Context localContext = SnapchatApplication.b().getApplicationContext();
    String str = paramStoryCollection.a(localContext);
    if (paramStoryCollection.h()) {
      paramStoryCollection = str + " - " + localContext.getString(2131493528);
    }
    for (;;)
    {
      B.setText(paramStoryCollection);
      return;
      if (paramStoryCollection.i()) {
        paramStoryCollection = str + " - " + localContext.getString(2131493168);
      } else {
        paramStoryCollection = str + " - " + localContext.getString(2131493524);
      }
    }
  }
  
  public final void a(@chc StoryGroup paramStoryGroup)
  {
    if ((!(O instanceof aia)) || (((aia)O).d() != paramStoryGroup)) {
      return;
    }
    s();
  }
  
  public final void c(boolean paramBoolean)
  {
    if (Q != paramBoolean)
    {
      Q = paramBoolean;
      s();
    }
  }
  
  public final void d(boolean paramBoolean)
  {
    bhr localbhr;
    if (((O instanceof Friend)) && (!O).mIsSharedStory))
    {
      localbhr = E;
      if (!paramBoolean) {
        break label40;
      }
    }
    label40:
    for (int i = 0;; i = 8)
    {
      localbhr.a(i);
      return;
    }
  }
  
  public final void e(boolean paramBoolean)
  {
    bhr localbhr = y;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localbhr.a(i);
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
      awf.a((ImageView)localObject, f1);
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
    TextView localTextView = V;
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
    Q = false;
    L.setVisibility(8);
  }
  
  public boolean r()
  {
    return !(O instanceof aia);
  }
  
  public final void s()
  {
    ahy localahy = O;
    if (Q) {}
    for (int i = 0;; i = 8)
    {
      a(localahy, i);
      return;
    }
  }
  
  public final boolean t()
  {
    if ((B.getVisibility() == 0) || (x())) {
      return false;
    }
    N = new aqi(V, B);
    N.a.start();
    return true;
  }
  
  public final boolean u()
  {
    if ((B.getVisibility() == 8) || (x())) {
      return false;
    }
    N = new aqh(V, B);
    N.a.start();
    return true;
  }
}

/* Location:
 * Qualified Name:     ahz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */