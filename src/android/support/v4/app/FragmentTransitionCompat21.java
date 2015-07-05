package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.Transition.EpicenterCallback;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class FragmentTransitionCompat21
{
  public static void addTargets(Object paramObject, ArrayList<View> paramArrayList)
  {
    paramObject = (Transition)paramObject;
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      ((Transition)paramObject).addTarget((View)paramArrayList.get(i));
      i += 1;
    }
  }
  
  public static void addTransitionTargets(final Object paramObject1, Object paramObject2, View paramView1, final ViewRetriever paramViewRetriever, View paramView2, EpicenterView paramEpicenterView, final Map<String, String> paramMap, final ArrayList<View> paramArrayList1, final Map<String, View> paramMap1, ArrayList<View> paramArrayList2)
  {
    if ((paramObject1 != null) || (paramObject2 != null))
    {
      paramObject1 = (Transition)paramObject1;
      if (paramObject1 != null) {
        ((Transition)paramObject1).addTarget(paramView2);
      }
      if (paramObject2 != null) {
        addTargets((Transition)paramObject2, paramArrayList2);
      }
      paramView1.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
      {
        public final boolean onPreDraw()
        {
          val$container.getViewTreeObserver().removeOnPreDrawListener(this);
          View localView = paramViewRetriever.getView();
          if (localView != null)
          {
            if (!paramMap.isEmpty())
            {
              FragmentTransitionCompat21.findNamedViews(paramMap1, localView);
              paramMap1.keySet().retainAll(paramMap.values());
              Iterator localIterator = paramMap.entrySet().iterator();
              while (localIterator.hasNext())
              {
                Map.Entry localEntry = (Map.Entry)localIterator.next();
                Object localObject = (String)localEntry.getValue();
                localObject = (View)paramMap1.get(localObject);
                if (localObject != null) {
                  ((View)localObject).setTransitionName((String)localEntry.getKey());
                }
              }
            }
            if (paramObject1 != null)
            {
              FragmentTransitionCompat21.captureTransitioningViews(paramArrayList1, localView);
              paramArrayList1.removeAll(paramMap1.values());
              FragmentTransitionCompat21.addTargets(paramObject1, paramArrayList1);
            }
          }
          return true;
        }
      });
      if (paramObject1 != null) {
        ((Transition)paramObject1).setEpicenterCallback(new Transition.EpicenterCallback()
        {
          private Rect mEpicenter;
          
          public final Rect onGetEpicenter(Transition paramAnonymousTransition)
          {
            if ((mEpicenter == null) && (val$epicenterView.epicenter != null)) {
              mEpicenter = FragmentTransitionCompat21.getBoundsOnScreen(val$epicenterView.epicenter);
            }
            return mEpicenter;
          }
        });
      }
    }
  }
  
  public static void beginDelayedTransition(ViewGroup paramViewGroup, Object paramObject)
  {
    TransitionManager.beginDelayedTransition(paramViewGroup, (Transition)paramObject);
  }
  
  public static Object captureExitingViews(Object paramObject, View paramView, ArrayList<View> paramArrayList, Map<String, View> paramMap)
  {
    Object localObject = paramObject;
    if (paramObject != null)
    {
      captureTransitioningViews(paramArrayList, paramView);
      if (paramMap != null) {
        paramArrayList.removeAll(paramMap.values());
      }
      if (paramArrayList.isEmpty()) {
        localObject = null;
      }
    }
    else
    {
      return localObject;
    }
    addTargets((Transition)paramObject, paramArrayList);
    return paramObject;
  }
  
  static void captureTransitioningViews(ArrayList<View> paramArrayList, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      if (!(paramView instanceof ViewGroup)) {
        break label61;
      }
      paramView = (ViewGroup)paramView;
      if (!paramView.isTransitionGroup()) {
        break label33;
      }
      paramArrayList.add(paramView);
    }
    for (;;)
    {
      return;
      label33:
      int j = paramView.getChildCount();
      int i = 0;
      while (i < j)
      {
        captureTransitioningViews(paramArrayList, paramView.getChildAt(i));
        i += 1;
      }
    }
    label61:
    paramArrayList.add(paramView);
  }
  
  public static void cleanupTransitions(View paramView1, final View paramView2, final Object paramObject1, final ArrayList<View> paramArrayList1, final Object paramObject2, final ArrayList<View> paramArrayList2, final Object paramObject3, final ArrayList<View> paramArrayList3, final Object paramObject4, final ArrayList<View> paramArrayList4, final Map<String, View> paramMap)
  {
    paramObject1 = (Transition)paramObject1;
    paramObject2 = (Transition)paramObject2;
    paramObject3 = (Transition)paramObject3;
    paramObject4 = (Transition)paramObject4;
    if (paramObject4 != null) {
      paramView1.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
      {
        public final boolean onPreDraw()
        {
          val$sceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
          if (paramObject1 != null)
          {
            paramObject1.removeTarget(paramView2);
            FragmentTransitionCompat21.removeTargets(paramObject1, paramArrayList1);
          }
          if (paramObject2 != null) {
            FragmentTransitionCompat21.removeTargets(paramObject2, paramArrayList2);
          }
          if (paramObject3 != null) {
            FragmentTransitionCompat21.removeTargets(paramObject3, paramArrayList3);
          }
          Iterator localIterator = paramMap.entrySet().iterator();
          while (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            ((View)localEntry.getValue()).setTransitionName((String)localEntry.getKey());
          }
          int j = paramArrayList4.size();
          int i = 0;
          while (i < j)
          {
            paramObject4.excludeTarget((View)paramArrayList4.get(i), false);
            i += 1;
          }
          paramObject4.excludeTarget(paramView2, false);
          return true;
        }
      });
    }
  }
  
  public static Object cloneTransition(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject != null) {
      localObject = ((Transition)paramObject).clone();
    }
    return localObject;
  }
  
  public static void excludeTarget(Object paramObject, View paramView, boolean paramBoolean)
  {
    ((Transition)paramObject).excludeTarget(paramView, paramBoolean);
  }
  
  public static void findNamedViews(Map<String, View> paramMap, View paramView)
  {
    if (paramView.getVisibility() == 0)
    {
      String str = paramView.getTransitionName();
      if (str != null) {
        paramMap.put(str, paramView);
      }
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int j = paramView.getChildCount();
        int i = 0;
        while (i < j)
        {
          findNamedViews(paramMap, paramView.getChildAt(i));
          i += 1;
        }
      }
    }
  }
  
  static Rect getBoundsOnScreen(View paramView)
  {
    Rect localRect = new Rect();
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    localRect.set(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + paramView.getWidth(), arrayOfInt[1] + paramView.getHeight());
    return localRect;
  }
  
  public static String getTransitionName(View paramView)
  {
    return paramView.getTransitionName();
  }
  
  public static Object mergeTransitions(Object paramObject1, Object paramObject2, Object paramObject3, boolean paramBoolean)
  {
    Transition localTransition = (Transition)paramObject1;
    paramObject1 = (Transition)paramObject2;
    paramObject3 = (Transition)paramObject3;
    if ((localTransition != null) && (paramObject1 != null)) {}
    for (;;)
    {
      if (paramBoolean)
      {
        paramObject2 = new TransitionSet();
        if (localTransition != null) {
          ((TransitionSet)paramObject2).addTransition(localTransition);
        }
        if (paramObject1 != null) {
          ((TransitionSet)paramObject2).addTransition((Transition)paramObject1);
        }
        if (paramObject3 != null) {
          ((TransitionSet)paramObject2).addTransition((Transition)paramObject3);
        }
        return paramObject2;
      }
      paramObject2 = null;
      if ((paramObject1 != null) && (localTransition != null)) {
        paramObject1 = new TransitionSet().addTransition((Transition)paramObject1).addTransition(localTransition).setOrdering(1);
      }
      while (paramObject3 != null)
      {
        paramObject2 = new TransitionSet();
        if (paramObject1 != null) {
          ((TransitionSet)paramObject2).addTransition((Transition)paramObject1);
        }
        ((TransitionSet)paramObject2).addTransition((Transition)paramObject3);
        return paramObject2;
        if (paramObject1 == null)
        {
          paramObject1 = paramObject2;
          if (localTransition != null) {
            paramObject1 = localTransition;
          }
        }
      }
      return paramObject1;
      paramBoolean = true;
    }
  }
  
  public static void removeTargets(Object paramObject, ArrayList<View> paramArrayList)
  {
    paramObject = (Transition)paramObject;
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      ((Transition)paramObject).removeTarget((View)paramArrayList.get(i));
      i += 1;
    }
  }
  
  public static void setEpicenter(Object paramObject, View paramView)
  {
    ((Transition)paramObject).setEpicenterCallback(new Transition.EpicenterCallback()
    {
      public final Rect onGetEpicenter(Transition paramAnonymousTransition)
      {
        return val$epicenter;
      }
    });
  }
  
  private static void setSharedElementEpicenter(Transition paramTransition, EpicenterView paramEpicenterView)
  {
    if (paramTransition != null) {
      paramTransition.setEpicenterCallback(new Transition.EpicenterCallback()
      {
        private Rect mEpicenter;
        
        public final Rect onGetEpicenter(Transition paramAnonymousTransition)
        {
          if ((mEpicenter == null) && (val$epicenterView.epicenter != null)) {
            mEpicenter = FragmentTransitionCompat21.getBoundsOnScreen(val$epicenterView.epicenter);
          }
          return mEpicenter;
        }
      });
    }
  }
  
  public static final class EpicenterView
  {
    public View epicenter;
  }
  
  public static abstract interface ViewRetriever
  {
    public abstract View getView();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentTransitionCompat21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */