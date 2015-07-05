import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.EmojiTextView;
import com.snapchat.android.ui.FeedReplayAnimationView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;

public final class agd
  extends apf<ChatConversation>
  implements bfe.a<ChatConversation>
{
  public final Map<ChatConversation, Long> a = new HashMap();
  @Inject
  protected azo b;
  private LayoutInflater c;
  private final atw<ChatConversation> d;
  private final yn e;
  private List<ChatConversation> f;
  private agf g;
  private agd.a h;
  private Provider<ajv> i;
  
  @cf
  private agd(Context paramContext, atw<ChatConversation> paramatw, yn paramyn, agd.a parama, Provider<ajv> paramProvider)
  {
    super(paramContext, 2130968669, paramatw);
    SnapchatApplication.b().c().a(this);
    d = paramatw;
    f = paramatw;
    e = paramyn;
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    h = parama;
    i = paramProvider;
  }
  
  public static agd a(Context paramContext, atw<ChatConversation> paramatw, yn paramyn, agd.a parama)
  {
    paramContext = new agd(paramContext, paramatw, paramyn, parama, ajv.UNSAFE_USER_PROVIDER);
    mAdapter = paramContext;
    return paramContext;
  }
  
  public final void a(@cgc List<ChatConversation> paramList)
  {
    if (paramList == null) {}
    for (f = d;; f = paramList)
    {
      h.a(f);
      notifyDataSetChanged();
      return;
    }
  }
  
  public final int getCount()
  {
    return f.size();
  }
  
  public final Filter getFilter()
  {
    if (g == null) {
      g = new agf(d, b, this);
    }
    return g;
  }
  
  public final View getView(int paramInt, View arg2, ViewGroup paramViewGroup)
  {
    final agd.b localb;
    View localView;
    if (??? == null)
    {
      localb = new agd.b();
      localView = c.inflate(2130968669, paramViewGroup, false);
      g = ((FrameLayout)localView.findViewById(2131362344));
      h = ((ImageView)localView.findViewById(2131362345));
      i = ((FeedReplayAnimationView)localView.findViewById(2131362347));
      a = ((TextView)localView.findViewById(2131362199));
      b = ((TextView)localView.findViewById(2131362350));
      f = ((EmojiTextView)localView.findViewById(2131361860));
      j = ((ProgressBar)localView.findViewById(2131362348));
      k = ((TextView)localView.findViewById(2131362351));
      l = localView.findViewById(2131361920);
      localView.setTag(localb);
    }
    ChatConversation localChatConversation;
    synchronized (f)
    {
      localChatConversation = (ChatConversation)f.get(paramInt);
      if (localChatConversation == null)
      {
        return localView;
        localb = (agd.b)???.getTag();
        localView = ???;
      }
    }
    boolean bool = localChatConversation.equals(c);
    c = localChatConversation;
    e.a(localChatConversation, false);
    ??? = mItemsForFeedIcon;
    i.setDisplayedIcon(???, localChatConversation);
    i.setVisibility(0);
    j.setVisibility(8);
    k.setText("");
    if (!???.isEmpty())
    {
      ??? = (ChatFeedItem)???.get(0);
      if ((??? instanceof aje))
      {
        paramViewGroup = (aje)???;
        double d1 = paramViewGroup.G();
        if ((paramViewGroup.D()) && (d1 > 0.0D)) {
          k.setText(Integer.toString((int)paramViewGroup.G()));
        }
        if (paramViewGroup.R())
        {
          j.setVisibility(0);
          i.setVisibility(4);
        }
        paramViewGroup = ???;
      }
    }
    for (;;)
    {
      label387:
      a.setText(ym.a(localChatConversation));
      label463:
      Object localObject1;
      Object localObject2;
      if ((mHasUnreleasedReceivedChats) || (mHasUnviewedReceivedSnaps) || (mHasUnviewedCash) || (((paramViewGroup instanceof aje)) && (((aje)paramViewGroup).D()) && (((aje)paramViewGroup).G() > 0.0D)))
      {
        a.setTypeface(null, 1);
        localObject1 = getContext();
        localObject2 = f;
        ??? = localChatConversation.i();
        ajv localajv = (ajv)i.get();
        if ((localajv == null) || (TextUtils.isEmpty(???))) {
          break label1414;
        }
        ??? = localajv.a(???);
        if ((??? == null) || (???.p())) {
          break label1414;
        }
        ??? = ???.u();
        ((EmojiTextView)localObject2).setText(???);
      }
      for (;;)
      {
        if (TextUtils.isEmpty(???))
        {
          paramInt = 8;
          label547:
          ((EmojiTextView)localObject2).setVisibility(paramInt);
          if ((!bool) || (!localChatConversation.D()))
          {
            if (d != null)
            {
              e = true;
              d.cancel();
            }
            a.clearAnimation();
            b.clearAnimation();
          }
          b.setTextColor(((Context)localObject1).getResources().getColor(2131230798));
          if (!h.a()) {
            break label994;
          }
          if (!atm.d(mTheirUsername, (ajv)i.get())) {
            break label922;
          }
          if (!mIsStub) {
            break label849;
          }
          b.setText(mTheirUsername + " - " + ((Context)localObject1).getString(2131493519));
          label709:
          b.setVisibility(0);
          label718:
          ??? = h;
          if (!mHasUnreleasedReceivedChats) {
            break label1407;
          }
        }
        label849:
        label922:
        label994:
        label1041:
        label1099:
        label1407:
        for (paramInt = 2130837545;; paramInt = 2130837544)
        {
          ???.setBackgroundResource(paramInt);
          if ((b.getVisibility() != 0) || (b.getAlpha() != 0.0F)) {
            break;
          }
          b.clearAnimation();
          b.setVisibility(8);
          b.setAlpha(1.0F);
          return localView;
          if ((??? != null) && (???.N()))
          {
            j.setVisibility(0);
            i.setVisibility(4);
          }
          paramViewGroup = ???;
          break label387;
          a.setTypeface(null, 0);
          break label463;
          paramInt = 0;
          break label547;
          long l = localChatConversation.x();
          ??? = mTheirUsername;
          if (l > 0L)
          {
            b.setText(??? + " - " + ata.b((Context)localObject1, l));
            break label709;
          }
          b.setText(???);
          break label709;
          if (mIsStub)
          {
            b.setText(((Context)localObject1).getString(2131493519));
            break label709;
          }
          l = localChatConversation.x();
          if (l > 0L)
          {
            b.setText(ata.b((Context)localObject1, l));
            break label709;
          }
          b.setText("");
          break label709;
          if (localChatConversation.D())
          {
            if (paramViewGroup != null) {
              break label1041;
            }
            localb.b();
            break label718;
          }
          if (localChatConversation.A()) {
            b.setTextColor(((Context)localObject1).getResources().getColor(2131230793));
          }
          ??? = "";
          if (paramViewGroup != null)
          {
            ??? = paramViewGroup.a();
            if (!paramViewGroup.c()) {
              break label1099;
            }
            b.setVisibility(0);
          }
          for (;;)
          {
            ??? = ati.a(getContext(), localChatConversation.x(), ???);
            b.setText(???);
            break;
            if (((paramViewGroup instanceof aje)) && (((aje)paramViewGroup).z()) && ((d == null) || (!d.isStarted()))) {
              if ((a.get(localChatConversation) != null) && (((Long)a.get(localChatConversation)).longValue() <= SystemClock.elapsedRealtime()) && (h.h_()))
              {
                localb.b();
              }
              else
              {
                localb.a();
                if (h.h_())
                {
                  if (a.get(localChatConversation) == null)
                  {
                    l = SystemClock.elapsedRealtime();
                    a.put(localChatConversation, Long.valueOf(3000L + l));
                  }
                  l = ((Long)a.get(localChatConversation)).longValue();
                  float f1 = avh.a(b) / 2.0F;
                  paramViewGroup = ObjectAnimator.ofFloat(a, "translationY", new float[] { f1 });
                  localObject1 = new AnimatorSet();
                  localObject2 = ObjectAnimator.ofFloat(b, "alpha", new float[] { 0.0F });
                  ((ObjectAnimator)localObject2).setDuration(300L);
                  paramViewGroup.setDuration(300L);
                  ((AnimatorSet)localObject1).addListener(new Animator.AnimatorListener()
                  {
                    public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
                    
                    public final void onAnimationEnd(Animator paramAnonymousAnimator)
                    {
                      localb.b();
                    }
                    
                    public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
                    
                    public final void onAnimationStart(Animator paramAnonymousAnimator) {}
                  });
                  ((AnimatorSet)localObject1).play((Animator)localObject2).with(paramViewGroup);
                  d = ((Animator)localObject1);
                  d.setStartDelay(l - SystemClock.elapsedRealtime());
                  d.start();
                }
              }
            }
          }
        }
        label1414:
        ??? = null;
      }
      paramViewGroup = null;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(List<ChatConversation> paramList);
    
    public abstract boolean a();
    
    public abstract boolean h_();
  }
  
  public static final class b
  {
    public TextView a;
    public TextView b;
    public ChatConversation c;
    public Animator d;
    public boolean e;
    public EmojiTextView f;
    FrameLayout g;
    ImageView h;
    FeedReplayAnimationView i;
    ProgressBar j;
    TextView k;
    View l;
    
    public final void a()
    {
      a.setGravity(80);
      a.setTranslationY(0.0F);
      b.setAlpha(1.0F);
      b.setVisibility(0);
    }
    
    public final void b()
    {
      a.setGravity(16);
      a.setTranslationY(0.0F);
      b.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     agd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */