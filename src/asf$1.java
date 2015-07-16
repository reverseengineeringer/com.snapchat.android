import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.controller.countdown.SnapCountdownController;
import com.snapchat.android.model.Friend;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;
import com.snapchat.android.ui.SnapTimerView;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.concurrent.atomic.AtomicInteger;

final class asf$1
  implements SnapMediaRenderer.a
{
  asf$1(asf paramasf) {}
  
  public final void a()
  {
    for (;;)
    {
      Object localObject3;
      Object localObject5;
      boolean bool2;
      int i;
      boolean bool1;
      label328:
      int j;
      synchronized (a.k)
      {
        Object localObject1 = a.c;
        a.f();
        if (a.f())
        {
          a.a.setVisibility(0);
          a.g.c();
          a.c.c(true);
          a.j.a();
          a.l.a(a);
          if (!(a.c instanceof akl)) {
            continue;
          }
          Object localObject6 = (akl)a.c;
          double d = ((akl)localObject6).G();
          localObject1 = mUsername;
          localObject3 = ((akl)localObject6).aq();
          localObject5 = a.c.d();
          mj localmj = apl.c((akl)localObject6);
          String str2 = mStoryId;
          bool2 = a.c.W();
          i = a.c.ai();
          String str3 = mStoryFilterId;
          localObject6 = auk.a(mUsername, akp.g());
          if ((localObject6 == null) || (!mIsLocalStory)) {
            break label756;
          }
          bool1 = true;
          a.h.a((String)localObject5, bool2, d, str2, (String)localObject1, (String)localObject3, localmj, bool1, str3, i);
          localObject5 = a.d;
          bool1 = a.c.ag();
          bool2 = a.d();
          if (!bool1) {
            break label683;
          }
          localObject1 = "video";
          if (mViewSnapMetric == null) {
            break label691;
          }
          mViewSnapMetric.a("type", localObject1).b(false);
          mViewSnapMetric = null;
          if (!a.d())
          {
            localObject1 = a.r;
            mSnapViews.incrementAndGet();
            mSnapEngagement.incrementAndGet();
          }
          aka.s();
          if (a.j()) {
            break label770;
          }
          i = 1;
          if ((i == 0) || (a.c.e())) {
            break label776;
          }
          j = 1;
          if (i != 0)
          {
            if (a.i.a(a.c, a.o)) {
              AnalyticsEvents.a(a.c, a.b);
            }
            if (j == 0) {
              break label742;
            }
            localObject1 = a;
            float f1 = a.p;
            float f2 = a.q;
            i = a.o;
            float f3 = a.getWidth();
            f1 = Math.max((a.getHeight() - f3 / (f1 / f2)) / 2.0F, 0.0F);
            f2 = awf.a(10.0F, a.getContext());
            localObject3 = (RelativeLayout.LayoutParams)e.getLayoutParams();
            topMargin = ((int)(f2 + f1));
            e.setLayoutParams((ViewGroup.LayoutParams)localObject3);
            j = Math.min((int)c.H() * 1000, i);
            e.setIsStory(((asf)localObject1).d());
            e.a(j, i);
            e.setVisibility(0);
            ((asf)localObject1).a(j);
          }
        }
        label638:
        return;
        a.h.a(a.c.j(), a.c.d());
      }
      label683:
      String str1 = "image";
      continue;
      label691:
      if (mViewNextSnapMetric != null)
      {
        if (bool2) {}
        for (localObject3 = "story";; localObject3 = "feed")
        {
          mViewNextSnapMetric.a("type", str1).a("context", localObject3).b(false);
          mViewNextSnapMetric = null;
          break label328;
          label742:
          a.e.setVisibility(4);
          break label638;
          label756:
          bool1 = false;
          break;
        }
        label770:
        i = 0;
        continue;
        label776:
        j = 0;
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    synchronized (a.k)
    {
      aka localaka = a.c;
      a.f();
      if (a.f())
      {
        int i = (int)(Math.floor(a.c.G() + 1.0D) * 1000.0D);
        a.o = Math.min(i, paramInt1);
        new StringBuilder("SNAP-VIEW: Snap canonical cap:").append(i).append("ms, media length: ").append(paramInt1).append("ms, picked: ").append(a.o).append("ms");
        a.p = paramInt2;
        a.q = paramInt3;
        a.n = true;
        if (a.m) {
          a.g();
        }
      }
      return;
    }
  }
  
  public final void a(SnapMediaRenderer.ErrorCode paramErrorCode)
  {
    for (;;)
    {
      synchronized (a.k)
      {
        aka localaka = a.c;
        a.f();
        if (paramErrorCode == SnapMediaRenderer.ErrorCode.EXTERNAL_STORAGE_REQUIRED)
        {
          a.f.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131492945));
          paramErrorCode = a.c;
          a.a(SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA);
          return;
        }
        if (paramErrorCode == SnapMediaRenderer.ErrorCode.MEDIA_UNAVAILABLE_LOCALLY) {
          a.a(SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY);
        }
      }
      if ((paramErrorCode == SnapMediaRenderer.ErrorCode.PLAYBACK_ERROR) && (a.d())) {
        a.a(SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA);
      }
    }
  }
  
  public final void b()
  {
    synchronized (a.k)
    {
      aka localaka = a.c;
      a.f();
      a.a(SnapViewSessionStopReason.TIMER_EXPIRED);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     asf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */