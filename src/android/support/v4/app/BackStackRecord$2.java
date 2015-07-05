package android.support.v4.app;

import android.support.v4.util.ArrayMap;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;

final class BackStackRecord$2
  implements ViewTreeObserver.OnPreDrawListener
{
  BackStackRecord$2(BackStackRecord paramBackStackRecord, View paramView, Object paramObject, ArrayList paramArrayList, BackStackRecord.TransitionState paramTransitionState, boolean paramBoolean, Fragment paramFragment1, Fragment paramFragment2) {}
  
  public final boolean onPreDraw()
  {
    val$sceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
    ArrayMap localArrayMap;
    if (val$sharedElementTransition != null)
    {
      FragmentTransitionCompat21.removeTargets(val$sharedElementTransition, val$sharedElementTargets);
      val$sharedElementTargets.clear();
      localArrayMap = BackStackRecord.access$000(this$0, val$state, val$isBack, val$inFragment);
      if (!localArrayMap.isEmpty()) {
        break label119;
      }
      val$sharedElementTargets.add(val$state.nonExistentView);
    }
    for (;;)
    {
      FragmentTransitionCompat21.addTargets(val$sharedElementTransition, val$sharedElementTargets);
      BackStackRecord.access$100(this$0, localArrayMap, val$state);
      BackStackRecord.access$200$4a5f5891(val$inFragment, val$outFragment, val$isBack, localArrayMap);
      return true;
      label119:
      val$sharedElementTargets.addAll(localArrayMap.values());
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.BackStackRecord.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */