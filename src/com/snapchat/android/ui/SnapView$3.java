package com.snapchat.android.ui;

import aio;
import aje;
import ajr;
import arj;
import ark;
import asu;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.SnapViewEventAnalytics.EndReason;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.Set;
import yu;
import zd;

final class SnapView$3
  implements ark
{
  SnapView$3(SnapView paramSnapView) {}
  
  public final void a(arj paramarj)
  {
    int j = 1;
    Timber.c("SnapView", "SNAP-VIEW: session started for %s", new Object[] { paramarj.a() });
    Object localObject1 = SnapView.b(a);
    Object localObject2 = paramarj.c();
    int i = 0;
    while (i < 2)
    {
      if (a[i] != localObject2) {
        a[i].d();
      }
      if (b[i] != localObject2) {
        b[i].d();
      }
      i += 1;
    }
    SnapView.a(a, true);
    localObject1 = paramarj.b();
    localObject2 = ((aio)localObject1).d();
    if (localObject2 != null)
    {
      if ((asu.IS_GALAXY_S6) && (((aje)localObject2).ai())) {}
      for (i = j; i != 0; i = 0)
      {
        Timber.c("SnapView", "SNAP-VIEW: Skipping preload on S6", new Object[0]);
        return;
      }
      Timber.c("SnapView", "SNAP-VIEW: Preloading next snap: " + localObject2, new Object[0]);
      SnapView.a(a, a.b((aje)localObject2, (aio)localObject1, paramarj.e()));
      SnapView.d(a).a(SnapView.c(a));
    }
    for (;;)
    {
      localObject1 = SnapView.e(a).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((yu)((Iterator)localObject1).next()).a(paramarj.a());
      }
      break;
      Timber.c("SnapView", "SNAP-VIEW: No snap to pre-load", new Object[0]);
    }
  }
  
  public final void a(arj paramarj, SnapViewSessionStopReason paramSnapViewSessionStopReason)
  {
    if (SnapView.a(a) == paramarj)
    {
      Timber.c("SnapView", "SNAP-VIEW: primary session stopped for %s, reason %s", new Object[] { paramarj.a(), paramSnapViewSessionStopReason });
      SnapView.a(a, false);
      if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY)
      {
        SnapView.a(a, paramarj.a());
        a.a(SnapViewEventAnalytics.EndReason.KICKED_OUT);
      }
      for (;;)
      {
        Iterator localIterator = SnapView.e(a).iterator();
        while (localIterator.hasNext()) {
          ((yu)localIterator.next()).a(paramarj.a(), paramSnapViewSessionStopReason, 0);
        }
        if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA)
        {
          if (ReleaseManager.f()) {
            SnapView.f(a).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, "ALPHA-ONLY: Snap skipped, media player error"));
          }
          a.a(paramarj, paramSnapViewSessionStopReason);
        }
        else if (paramSnapViewSessionStopReason != SnapViewSessionStopReason.ABORT_REQUESTED)
        {
          a.a(paramarj, paramSnapViewSessionStopReason);
        }
      }
    }
    if (SnapView.d(a) == paramarj)
    {
      Timber.c("SnapView", "SNAP-VIEW: next session stopped for %s, reason %s", new Object[] { paramarj.a(), paramSnapViewSessionStopReason });
      if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY)
      {
        paramSnapViewSessionStopReason = paramarj.a();
        if (!(paramSnapViewSessionStopReason instanceof ajr)) {
          break label280;
        }
        SnapView.g(a).a((ajr)paramSnapViewSessionStopReason);
      }
    }
    for (;;)
    {
      SnapView.d(a).h();
      SnapView.a(a, null);
      return;
      label280:
      SnapView.a(a, paramarj.a());
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SnapView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */