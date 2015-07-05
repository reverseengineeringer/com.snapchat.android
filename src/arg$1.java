import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import com.snapchat.android.Timber;
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

final class arg$1
  implements SnapMediaRenderer.a
{
  arg$1(arg paramarg) {}
  
  public final void a()
  {
    for (;;)
    {
      Object localObject3;
      Object localObject5;
      boolean bool2;
      int i;
      boolean bool1;
      label354:
      int j;
      synchronized (a.k)
      {
        Timber.c("MediaSnapViewSession", "SNAP-VIEW: renderer started for %s (active=%b)", new Object[] { a.c, Boolean.valueOf(a.f()) });
        if (a.f())
        {
          a.a.setVisibility(0);
          a.g.c();
          a.c.c(true);
          a.j.a();
          a.l.a(a);
          if (!(a.c instanceof ajr)) {
            continue;
          }
          Object localObject6 = (ajr)a.c;
          double d = ((ajr)localObject6).F();
          Object localObject1 = mUsername;
          localObject3 = ((ajr)localObject6).as();
          localObject5 = a.c.d();
          lr locallr = aop.c((ajr)localObject6);
          String str2 = mStoryId;
          bool2 = a.c.Y();
          i = a.c.ak();
          String str3 = mStoryFilterId;
          Friend localFriend = atm.a(mUsername, ajv.g());
          if ((localFriend == null) || (!mIsLocalStory)) {
            break label782;
          }
          bool1 = true;
          localObject6 = ((ajr)localObject6).ax();
          a.h.a((String)localObject5, bool2, d, str2, (String)localObject1, (String)localObject3, locallr, bool1, (String)localObject6, str3, i);
          localObject5 = a.d;
          bool1 = a.c.ai();
          bool2 = a.d();
          if (!bool1) {
            break label709;
          }
          localObject1 = "video";
          if (mViewSnapMetric == null) {
            break label717;
          }
          mViewSnapMetric.a("type", localObject1).b(false);
          mViewSnapMetric = null;
          if (!a.d())
          {
            localObject1 = a.r;
            mSnapViews.incrementAndGet();
            mSnapEngagement.incrementAndGet();
          }
          aje.r();
          if (a.k()) {
            break label796;
          }
          i = 1;
          if ((i == 0) || (a.c.e())) {
            break label802;
          }
          j = 1;
          if (i != 0)
          {
            if (a.i.a(a.c, a.o)) {
              AnalyticsEvents.a(a.c, a.b);
            }
            if (j == 0) {
              break label768;
            }
            localObject1 = a;
            float f1 = a.p;
            float f2 = a.q;
            i = a.o;
            float f3 = a.getWidth();
            f1 = Math.max((a.getHeight() - f3 / (f1 / f2)) / 2.0F, 0.0F);
            f2 = avh.a(10.0F, a.getContext());
            localObject3 = (RelativeLayout.LayoutParams)e.getLayoutParams();
            topMargin = ((int)(f2 + f1));
            e.setLayoutParams((ViewGroup.LayoutParams)localObject3);
            j = Math.min((int)c.G() * 1000, i);
            e.setIsStory(((arg)localObject1).d());
            e.a(j, i);
            e.setVisibility(0);
            ((arg)localObject1).a(j);
          }
        }
        label664:
        return;
        a.h.a(a.c.j(), a.c.d());
      }
      label709:
      String str1 = "image";
      continue;
      label717:
      if (mViewNextSnapMetric != null)
      {
        if (bool2) {}
        for (localObject3 = "story";; localObject3 = "feed")
        {
          mViewNextSnapMetric.a("type", str1).a("context", localObject3).b(false);
          mViewNextSnapMetric = null;
          break label354;
          label768:
          a.e.setVisibility(4);
          break label664;
          label782:
          bool1 = false;
          break;
        }
        label796:
        i = 0;
        continue;
        label802:
        j = 0;
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    synchronized (a.k)
    {
      Timber.c("MediaSnapViewSession", "SNAP-VIEW: renderer prepared for %s (active=%b). duration:%dms, width:%d, height:%d", new Object[] { a.c, Boolean.valueOf(a.f()), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) });
      if (a.f())
      {
        int i = (int)(Math.floor(a.c.F() + 1.0D) * 1000.0D);
        a.o = Math.min(i, paramInt1);
        Timber.c("MediaSnapViewSession", "SNAP-VIEW: Snap canonical cap:" + i + "ms, media length: " + paramInt1 + "ms, picked: " + a.o + "ms", new Object[0]);
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
        Timber.c("MediaSnapViewSession", "SNAP-VIEW: renderer error for %s (active=%b), errorCode:%s", new Object[] { a.c, Boolean.valueOf(a.f()), paramErrorCode });
        if (paramErrorCode == SnapMediaRenderer.ErrorCode.EXTERNAL_STORAGE_REQUIRED)
        {
          a.f.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131492945));
          Timber.c("MediaSnapViewSession", "SNAP-VIEW: MARKING snap %s as viewed (EXTERNAL STORAGE NO_BITMAP_AVAILABLE)", new Object[] { a.c });
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
      Timber.c("MediaSnapViewSession", "SNAP-VIEW: renderer complete for %s (active=%b)", new Object[] { a.c, Boolean.valueOf(a.f()) });
      a.a(SnapViewSessionStopReason.TIMER_EXPIRED);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     arg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */