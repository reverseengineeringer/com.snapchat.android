import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ListView;
import android.widget.TextView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.SwipeDirection;
import com.snapchat.android.ui.listeners.SwipeableListItemTouchListener.a;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Map;

public final class aqk
  extends SwipeableListItemTouchListener
{
  private final aqk.a a;
  private final ni j;
  private final float k;
  private boolean l = false;
  private int m;
  private boolean n;
  private Context o;
  private agd p;
  private yn q;
  private long r;
  
  public aqk(ListView paramListView, SwipeableListItemTouchListener.SwipeDirection paramSwipeDirection, aqk.a parama, Context paramContext, agd paramagd, yn paramyn, ni paramni)
  {
    super(paramListView, paramSwipeDirection, parama);
    a = parama;
    k = avh.a(32.0F, paramContext);
    o = paramContext;
    p = paramagd;
    q = paramyn;
    j = paramni;
  }
  
  private Animator a(final agd.b paramb, final ChatConversation paramChatConversation)
  {
    Object localObject1 = SnapchatApplication.b();
    float f = avh.a(b) / 2.0F;
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(a, "translationY", new float[] { f });
    if ((mHasUnviewedReceivedSnaps) && (mHasUnreleasedReceivedChats)) {}
    final Object localObject2;
    for (int i = 1;; i = 0)
    {
      final AnimatorSet localAnimatorSet = new AnimatorSet();
      if (i != 0)
      {
        localObject2 = ati.a((Context)localObject1, paramChatConversation.x(), ((Context)localObject1).getString(2131493519));
        localObject1 = ObjectAnimator.ofFloat(b, "alpha", new float[] { 1.0F });
        ((ObjectAnimator)localObject1).setDuration(300L);
        ((ObjectAnimator)localObject1).addListener(new Animator.AnimatorListener()
        {
          public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
          
          public final void onAnimationEnd(Animator paramAnonymousAnimator) {}
          
          public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
          
          public final void onAnimationStart(Animator paramAnonymousAnimator)
          {
            parambb.setText(localObject2);
          }
        });
        localObject2 = ObjectAnimator.ofFloat(b, "alpha", new float[] { 0.0F });
        ((ObjectAnimator)localObject2).setDuration(300L);
        localAnimatorSet.addListener(new Animator.AnimatorListener()
        {
          boolean a;
          
          public final void onAnimationCancel(Animator paramAnonymousAnimator)
          {
            a = true;
          }
          
          public final void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            if (!a) {
              if (aqk.d(aqk.this).a())
              {
                parambb.setAlpha(1.0F);
                parambb.setText(paramChatConversationmTheirUsername);
              }
            }
            while (!parambe)
            {
              return;
              paramb.b();
              return;
            }
            paramb.b();
          }
          
          public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
          
          public final void onAnimationStart(Animator paramAnonymousAnimator) {}
        });
        localAnimatorSet.play((Animator)localObject1).before((Animator)localObject2);
        if (!a.a()) {
          localAnimatorSet.play((Animator)localObject2).with(localObjectAnimator);
        }
      }
      localObject1 = new AnimatorSet();
      ((AnimatorSet)localObject1).setStartDelay(3000L);
      localObject2 = ObjectAnimator.ofFloat(b, "alpha", new float[] { 0.0F });
      ((ObjectAnimator)localObject2).setDuration(300L);
      ((AnimatorSet)localObject1).addListener(new Animator.AnimatorListener()
      {
        boolean a;
        
        public final void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          a = true;
        }
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          if (!a) {
            if (localAnimatorSet.getChildAnimations().isEmpty()) {
              if (aqk.d(aqk.this).a())
              {
                parambb.setAlpha(1.0F);
                parambb.setText(paramChatConversationmTheirUsername);
              }
            }
          }
          while (!parambe)
          {
            return;
            paramb.b();
            return;
            parambd = localAnimatorSet;
            localAnimatorSet.start();
            return;
          }
          paramb.b();
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator) {}
      });
      if ((i == 0) && (!a.a())) {
        break;
      }
      ((AnimatorSet)localObject1).play((Animator)localObject2);
      return (Animator)localObject1;
    }
    ((AnimatorSet)localObject1).play((Animator)localObject2).with(localObjectAnimator);
    return (Animator)localObject1;
  }
  
  private void a(View paramView, final ChatConversation paramChatConversation)
  {
    if (paramView == null) {}
    final agd.b localb;
    do
    {
      return;
      localb = (agd.b)paramView.getTag();
    } while ((localb == null) || (!paramChatConversation.D()) || (a.a()));
    ChatFeedItem localChatFeedItem = mItemForFeedIcon;
    if (localChatFeedItem == null) {
      q.a(paramChatConversation, true);
    }
    SnapchatApplication localSnapchatApplication = SnapchatApplication.b();
    int i;
    if ((mHasUnviewedReceivedSnaps) && (mHasUnreleasedReceivedChats))
    {
      i = 1;
      paramView = localSnapchatApplication.getString(2131493519);
      if (i == 0) {
        break label234;
      }
      paramView = localSnapchatApplication.getString(2131493528);
    }
    label234:
    label322:
    for (;;)
    {
      paramView = ati.a(localSnapchatApplication, paramChatConversation.x(), paramView);
      b.setText(paramView);
      b.setTextColor(localSnapchatApplication.getResources().getColor(2131230798));
      if ((d != null) && (d.isStarted()))
      {
        e = false;
        d.cancel();
        a.clearAnimation();
        b.clearAnimation();
        localb.a();
        b.setText(paramView);
        d = a(localb, paramChatConversation);
        a(paramChatConversation);
        d.start();
        return;
        i = 0;
        break;
        if (localChatFeedItem == null) {
          break label322;
        }
        paramView = localChatFeedItem.a();
        continue;
      }
      float f = avh.a(b) / 2.0F;
      paramView = ObjectAnimator.ofFloat(a, "translationY", new float[] { f * -1.0F });
      paramView.setDuration(300L);
      paramView.addListener(new Animator.AnimatorListener()
      {
        boolean a;
        
        public final void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          a = true;
        }
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          if (!a)
          {
            localb.a();
            paramAnonymousAnimator = aqk.a(aqk.this, localb, paramChatConversation);
            localbd = paramAnonymousAnimator;
            paramAnonymousAnimator.start();
          }
          while (!localbe) {
            return;
          }
          localb.b();
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator)
        {
          localba.setGravity(16);
        }
      });
      d = paramView;
      a(paramChatConversation);
      paramView.start();
      return;
    }
  }
  
  private void a(ChatConversation paramChatConversation)
  {
    long l1 = SystemClock.elapsedRealtime();
    p.a.put(paramChatConversation, Long.valueOf(3300L + l1));
  }
  
  private void b()
  {
    agd.b localb;
    if (g != null)
    {
      localb = (agd.b)g.getTag();
      if (localb != null) {
        break label23;
      }
    }
    label23:
    while (!TextUtils.equals(c.mTheirUsername, "teamsnapchat")) {
      return;
    }
    g.clearAnimation();
    n = true;
    c();
  }
  
  private void c()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(o).edit();
    localEditor.remove(SharedPreferenceKey.BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING.getKey());
    localEditor.apply();
  }
  
  public final void a(final View paramView, final int paramInt)
  {
    if ((n) || (paramView == null)) {}
    agd.b localb;
    final View localView;
    do
    {
      do
      {
        return;
        localb = (agd.b)paramView.getTag();
      } while ((localb == null) || (c == null) || (!TextUtils.equals(c.mTheirUsername, "teamsnapchat")));
      localView = paramView.findViewById(2131362346);
    } while (localView == null);
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, k, 0.0F, 0.0F);
    localTranslateAnimation.setDuration(100L);
    localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        paramAnonymousAnimation = new TranslateAnimation(aqk.a(aqk.this), 0.0F, 0.0F, 0.0F);
        paramAnonymousAnimation.setInterpolator(new BounceInterpolator());
        paramAnonymousAnimation.setDuration(400L);
        if ((!aqk.b(aqk.this)) && (paramInt > 0)) {
          paramAnonymousAnimation.setAnimationListener(new Animation.AnimationListener()
          {
            public final void onAnimationEnd(Animation paramAnonymous2Animation)
            {
              if (!aqk.b(aqk.this)) {
                a(b, a - 1);
              }
            }
            
            public final void onAnimationRepeat(Animation paramAnonymous2Animation) {}
            
            public final void onAnimationStart(Animation paramAnonymous2Animation) {}
          });
        }
        for (;;)
        {
          localView.startAnimation(paramAnonymousAnimation);
          return;
          aqk.c(aqk.this);
        }
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    localView.startAnimation(localTranslateAnimation);
    a(paramView, c);
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    ChatConversation localChatConversation = a.a(paramMotionEvent);
    if ((localChatConversation == null) || (mTheirUsername == null)) {
      return true;
    }
    boolean bool1 = axi.a(localChatConversation);
    int i = (int)paramMotionEvent.getY();
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      bool1 = super.onTouch(paramView, paramMotionEvent);
      switch (paramMotionEvent.getAction())
      {
      default: 
        return bool1;
      }
      a(h, localChatConversation);
      return bool1;
      r = SystemClock.uptimeMillis();
      l = false;
      m = i;
      b();
      if (bool1)
      {
        return true;
        long l1 = SystemClock.uptimeMillis() - r;
        aup.d().f();
        Timber.c("FeedSwipeListViewTouchListener", "TTV-LOG: ACTION_UP mFeedMoving(" + l + ") mIsSwiping(" + f + ") mPaused(" + this.i + ")", new Object[0]);
        if ((!l) && (!f) && (!this.i))
        {
          if (l1 <= 190L)
          {
            boolean bool2 = localChatConversation.A();
            if (bool2)
            {
              if (localChatConversation.B()) {
                ni.a("feed");
              }
              yq.a().a(localChatConversation);
              ban.a().a(new bdb());
              if (bool1) {
                break;
              }
            }
            a.b(paramMotionEvent);
            if ((mHasUnviewedReceivedSnaps) && (!bool2))
            {
              aup.d().a(localChatConversation);
              continue;
            }
            if (g == null) {
              continue;
            }
            final View localView = g.findViewById(2131362346);
            if (localView == null) {
              continue;
            }
            TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, k, 0.0F, 0.0F);
            localTranslateAnimation.setDuration(100L);
            localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
            {
              public final void onAnimationEnd(Animation paramAnonymousAnimation)
              {
                paramAnonymousAnimation = new TranslateAnimation(aqk.a(aqk.this), 0.0F, 0.0F, 0.0F);
                paramAnonymousAnimation.setInterpolator(new BounceInterpolator());
                paramAnonymousAnimation.setDuration(400L);
                localView.startAnimation(paramAnonymousAnimation);
              }
              
              public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
              
              public final void onAnimationStart(Animation paramAnonymousAnimation) {}
            });
            localView.startAnimation(localTranslateAnimation);
            continue;
          }
          Timber.c("FeedSwipeListViewTouchListener", "TTV-LOG: Time between ACTION_DOWN and ACTION_UP > tap (" + l1 + " ms)", new Object[0]);
          continue;
          if (Math.abs(i - m) > b) {
            l = true;
          }
          m = i;
          b();
        }
      }
    }
  }
  
  public static abstract interface a
    extends SwipeableListItemTouchListener.a
  {
    public abstract ChatConversation a(MotionEvent paramMotionEvent);
    
    public abstract boolean a();
    
    public abstract boolean b(MotionEvent paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     aqk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */