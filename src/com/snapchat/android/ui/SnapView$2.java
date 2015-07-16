package com.snapchat.android.ui;

import ajk;
import aka;
import akl;
import asi;
import asj;
import att;
import com.snapchat.android.analytics.SnapViewEventAnalytics.EndReason;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.Set;
import zq;
import zz;

final class SnapView$2
  implements asj
{
  SnapView$2(SnapView paramSnapView) {}
  
  public final void a(asi paramasi)
  {
    int j = 1;
    paramasi.a();
    Object localObject1 = SnapView.b(a);
    Object localObject2 = paramasi.c();
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
    localObject1 = paramasi.b();
    localObject2 = ((ajk)localObject1).d();
    if (localObject2 != null) {
      if ((att.IS_GALAXY_S6) && (((aka)localObject2).ag()))
      {
        i = j;
        if (i == 0) {
          break label145;
        }
      }
    }
    for (;;)
    {
      return;
      i = 0;
      break;
      label145:
      new StringBuilder("SNAP-VIEW: Preloading next snap: ").append(localObject2);
      SnapView.a(a, a.b((aka)localObject2, (ajk)localObject1, paramasi.e()));
      SnapView.d(a).a(SnapView.c(a));
      localObject1 = SnapView.e(a).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((zq)((Iterator)localObject1).next()).d(paramasi.a());
      }
    }
  }
  
  public final void a(asi paramasi, SnapViewSessionStopReason paramSnapViewSessionStopReason)
  {
    if (SnapView.a(a) == paramasi)
    {
      paramasi.a();
      SnapView.a(a, false);
      if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY)
      {
        SnapView.a(a, paramasi.a());
        a.a(SnapViewEventAnalytics.EndReason.KICKED_OUT);
      }
      for (;;)
      {
        Iterator localIterator = SnapView.e(a).iterator();
        while (localIterator.hasNext()) {
          ((zq)localIterator.next()).a(paramasi.a(), paramSnapViewSessionStopReason, 0);
        }
        if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_UNABLE_TO_SHOW_MEDIA)
        {
          if (ReleaseManager.f()) {
            SnapView.f(a).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, "ALPHA-ONLY: Snap skipped, media player error"));
          }
          a.a(paramasi, paramSnapViewSessionStopReason);
        }
        else if (paramSnapViewSessionStopReason != SnapViewSessionStopReason.ABORT_REQUESTED)
        {
          a.a(paramasi, paramSnapViewSessionStopReason);
        }
      }
    }
    if (SnapView.d(a) == paramasi)
    {
      paramasi.a();
      if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY)
      {
        paramSnapViewSessionStopReason = paramasi.a();
        if (!(paramSnapViewSessionStopReason instanceof akl)) {
          break label246;
        }
        SnapView.g(a).a((akl)paramSnapViewSessionStopReason);
      }
    }
    for (;;)
    {
      SnapView.d(a).h();
      SnapView.a(a, null);
      return;
      label246:
      SnapView.a(a, paramasi.a());
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SnapView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */