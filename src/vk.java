import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.os.SystemClock;
import android.support.v4.util.ArrayMap;
import android.view.View;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.Map;

public final class vk
  extends vn<vs>
{
  final Map<String, aqg> a = new ArrayMap();
  private final bga b;
  private final bhk c;
  private final Map<String, Long> d = new ArrayMap();
  
  public vk(bga parambga)
  {
    this(parambga, new bhk());
  }
  
  private vk(bga parambga, bhk parambhk)
  {
    b = parambga;
    c = parambhk;
  }
  
  private void a(final vs paramvs)
  {
    final String str = n.mId;
    final Object localObject1 = l;
    final TextView localTextView = m;
    d.put(str, Long.valueOf(SystemClock.elapsedRealtime() + 3000L));
    Object localObject2 = (aqg)a.get(str);
    if ((localObject2 != null) && (a.isStarted()))
    {
      ((aqg)localObject2).c();
      paramvs.q();
      localObject1 = new aqh((View)localObject1, localTextView, 3000L);
      o = ((aqg)localObject1);
      a.put(str, localObject1);
      a.start();
      return;
    }
    localObject2 = new aqi((View)localObject1, localTextView);
    localObject1 = new awh()
    {
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        paramAnonymousAnimator = new aqh(localObject1, localTextView, 3000L);
        paramvso = paramAnonymousAnimator;
        a.put(str, paramAnonymousAnimator);
        a.start();
      }
    };
    a.addListener((Animator.AnimatorListener)localObject1);
    o = ((aqg)localObject2);
    a.put(str, localObject2);
    a.start();
  }
  
  private void b(vs paramvs)
  {
    String str = n.mId;
    Object localObject = (Long)d.get(str);
    Long localLong;
    if (localObject != null)
    {
      localLong = Long.valueOf(SystemClock.elapsedRealtime());
      if (((Long)localObject).longValue() < localLong.longValue()) {
        paramvs.r();
      }
    }
    else
    {
      return;
    }
    TextView localTextView1 = l;
    TextView localTextView2 = m;
    aqg localaqg = (aqg)a.get(str);
    if (localaqg != null) {
      localaqg.c();
    }
    paramvs.q();
    localObject = new aqh(localTextView1, localTextView2, ((Long)localObject).longValue() - localLong.longValue());
    o = ((aqg)localObject);
    a.put(str, localObject);
    a.start();
  }
  
  public final void a()
  {
    d.clear();
  }
}

/* Location:
 * Qualified Name:     vk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */