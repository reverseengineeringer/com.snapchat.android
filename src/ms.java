import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.util.TitleBarManager.LockedState;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;

public final class ms
{
  final Resources a;
  final Bus b;
  AnimationDrawable c;
  public boolean d = false;
  public AnimatorSet e;
  public Queue<ms.a> f = new LinkedList();
  public Map<String, ms.a> g = new ConcurrentHashMap();
  @chd
  ms.a h = null;
  private final int i;
  private final int j;
  private boolean k = true;
  private View l;
  private View m;
  private TextView n;
  private TextView o;
  private ImageView p;
  private ImageView q;
  
  private ms(int paramInt1, int paramInt2, Resources paramResources, Bus paramBus)
  {
    i = paramInt1;
    j = paramInt2;
    a = paramResources;
    b = paramBus;
  }
  
  public ms(Context paramContext, @chc View paramView)
  {
    this(paramContext.getResources().getDimensionPixelSize(2131296417), paramContext.getResources().getDimensionPixelSize(2131296361), paramContext.getResources(), bbo.a());
    l = paramView;
    l.setOnTouchListener(new ms.b((byte)0));
    m = paramView.findViewById(2131362395);
    n = ((TextView)paramView.findViewById(2131362397));
    o = ((TextView)paramView.findViewById(2131362398));
    p = ((ImageView)paramView.findViewById(2131362396));
    q = ((ImageView)paramView.findViewById(2131362399));
    a(8);
  }
  
  private void b(final ms.a parama)
  {
    if (e != null) {
      e.cancel();
    }
    int i1 = j;
    if (f) {
      i1 = i;
    }
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(l, "translationY", new float[] { -i1, 0.0F });
    localObjectAnimator1.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        a(8);
        if (c != null) {
          c.stop();
        }
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        a(0);
        if (c != null) {
          c.start();
        }
      }
    });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofFloat(l, "translationY", new float[] { 0.0F, -i1 });
    localObjectAnimator2.setStartDelay(i);
    localObjectAnimator2.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        a(8);
        if (c != null) {
          c.stop();
        }
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        a(8);
        if (c != null) {
          c.stop();
        }
      }
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator) {}
    });
    e = new AnimatorSet();
    e.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        ms.a(ms.this, null);
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ms.a(ms.this, null);
        a();
      }
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        b.a(new bfk(TitleBarManager.Visibility.HIDDEN, TitleBarManager.LockedState.LOCKED));
        ms.a(ms.this, parama);
      }
    });
    e.play(localObjectAnimator1).before(localObjectAnimator2);
    e.start();
  }
  
  private boolean b()
  {
    return h != null;
  }
  
  final void a()
  {
    if (f.isEmpty()) {
      b.a(new bfk(TitleBarManager.LockedState.NOT_LOCKED));
    }
    if (d) {}
    label56:
    do
    {
      return;
      if (b())
      {
        if (q.getVisibility() != 0) {
          break;
        }
        i1 = 1;
        if (i1 == 0) {
          break label199;
        }
      }
    } while (f.isEmpty());
    ms.a locala = (ms.a)f.poll();
    l.setBackgroundColor(d);
    if (!f) {}
    for (int i1 = (int)a.getDimension(2131296366);; i1 = 0)
    {
      l.setPadding(0, i1, 0, i1);
      if (a == 0)
      {
        p.setVisibility(8);
        label141:
        if (b != null) {
          break label223;
        }
        n.setVisibility(8);
        label157:
        if (c != null) {
          break label256;
        }
        o.setVisibility(8);
      }
      for (;;)
      {
        m.setVisibility(0);
        q.setVisibility(8);
        b(locala);
        return;
        i1 = 0;
        break label56;
        label199:
        break;
        p.setVisibility(0);
        p.setImageResource(a);
        break label141;
        label223:
        n.setVisibility(0);
        n.setText(b);
        n.setTextColor(e);
        break label157;
        label256:
        o.setVisibility(0);
        o.setText(c);
        o.setTextColor(e);
      }
    }
  }
  
  protected final void a(int paramInt)
  {
    View localView = l;
    if (k) {}
    for (;;)
    {
      localView.setVisibility(paramInt);
      return;
      paramInt = 8;
    }
  }
  
  public final void a(bcg parambcg)
  {
    if (showDancingGhost)
    {
      parambcg = new ms.a(sourceId, (byte)0);
      if ((!b()) && (f.isEmpty()))
      {
        l.setBackgroundColor(a.getColor(2131230769));
        m.setVisibility(8);
        q.setVisibility(0);
        q.setBackgroundResource(2130837766);
        c = ((AnimationDrawable)q.getBackground());
        b(parambcg);
      }
      return;
    }
    int i1;
    if (useDefaultColors) {
      i1 = a.getColor(2131230769);
    }
    ms.a locala;
    for (int i2 = a.getColor(2131230770);; i2 = textColor)
    {
      locala = new ms.a(iconRes, primaryText, secondaryText, i1, i2, useShortNotification, sourceId, listener, duration, (byte)0);
      if (!delayed) {
        break;
      }
      g.put(g, locala);
      return;
      i1 = backgroundColor;
    }
    a(locala);
  }
  
  public final void a(@chc ms.a parama)
  {
    if (d) {
      return;
    }
    f.offer(parama);
    a();
  }
  
  public final void a(boolean paramBoolean)
  {
    k = paramBoolean;
    if (!k) {
      a(8);
    }
  }
  
  public final boolean a(String paramString)
  {
    Iterator localIterator = f.iterator();
    boolean bool1 = false;
    while (localIterator.hasNext()) {
      if (TextUtils.equals(nextg, paramString))
      {
        localIterator.remove();
        bool1 = true;
      }
    }
    if (g.containsKey(paramString))
    {
      g.remove(paramString);
      bool1 = true;
    }
    boolean bool2 = bool1;
    if (b())
    {
      bool2 = bool1;
      if (TextUtils.equals(h.g, paramString))
      {
        bool2 = bool1;
        if (e != null)
        {
          e.end();
          bool2 = true;
        }
      }
    }
    return bool2;
  }
  
  public final class a
  {
    public int a;
    @chd
    public CharSequence b;
    @chd
    public CharSequence c;
    public int d = a.getColor(2131230769);
    public int e = a.getColor(2131230770);
    public boolean f = false;
    public String g;
    @chd
    public bdc h;
    public long i;
    
    private a(int paramInt1, @chd CharSequence paramCharSequence1, @chd CharSequence paramCharSequence2, int paramInt2, int paramInt3, boolean paramBoolean, @chc String paramString, @chd bdc parambdc, long paramLong)
    {
      a = paramInt1;
      b = paramCharSequence1;
      c = paramCharSequence2;
      d = paramInt2;
      e = paramInt3;
      f = paramBoolean;
      g = paramString;
      h = parambdc;
      i = paramLong;
    }
    
    private a(@chc String paramString)
    {
      g = paramString;
    }
  }
  
  final class b
    implements View.OnTouchListener
  {
    private b() {}
    
    public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      return (paramMotionEvent.getAction() == 0) && (h != null) && (h.h != null);
    }
  }
}

/* Location:
 * Qualified Name:     ms
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */