import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.Timber;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class avh
{
  public static final int DEFAULT_ANIMATION_DURATION = 300;
  public static final int KEYBOARD_HEIGHT_THRESHOLD = 100;
  private static final String TAG = "ViewUtils";
  private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);
  private final Bus mBus;
  private final auv mSoftNavBarUtils;
  private final auw mSoftNavManager;
  
  public avh(@cgb Context paramContext)
  {
    this(new auv(paramContext), auw.a(), ban.a());
  }
  
  private avh(@cgb auv paramauv, @cgb auw paramauw, @cgb Bus paramBus)
  {
    mSoftNavBarUtils = paramauv;
    mSoftNavManager = paramauw;
    mBus = paramBus;
  }
  
  public static float a(float paramFloat, @cgb Context paramContext)
  {
    return getResourcesgetDisplayMetricsdensityDpi / 160.0F * paramFloat;
  }
  
  public static int a(int paramInt)
  {
    int j = 0;
    int i = j;
    switch (paramInt)
    {
    default: 
      i = j;
      if (ReleaseManager.e()) {
        throw new IllegalArgumentException("Unexpected rotation: " + paramInt);
      }
    case 1: 
      i = 90;
    case 0: 
      return i;
    case 2: 
      return 180;
    }
    return 270;
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    boolean bool1 = c(paramInt1);
    boolean bool4 = f(paramInt1);
    boolean bool3 = d(paramInt1);
    boolean bool2 = e(paramInt1);
    boolean bool5;
    switch (paramInt2)
    {
    default: 
      if (ReleaseManager.e()) {
        throw new IllegalArgumentException("Unexpected rotation: " + paramInt2);
      }
      break;
    case 0: 
      bool5 = bool1;
      bool1 = bool3;
      bool3 = bool4;
      bool4 = bool2;
      bool2 = bool5;
      if (bool2)
      {
        paramInt1 = 48;
        label105:
        if (!bool4) {
          break label177;
        }
        paramInt1 |= 0x3;
      }
      break;
    }
    for (;;)
    {
      return paramInt1;
      bool5 = bool2;
      bool2 = bool4;
      bool4 = bool1;
      bool1 = bool5;
      break;
      bool5 = bool2;
      bool2 = bool3;
      bool3 = bool5;
      break;
      bool5 = bool4;
      bool4 = bool3;
      bool3 = bool1;
      bool1 = bool5;
      break;
      if (bool1)
      {
        paramInt1 = 80;
        break label105;
      }
      paramInt1 = 16;
      break label105;
      label177:
      if (bool3) {
        paramInt1 |= 0x5;
      } else {
        paramInt1 |= 0x1;
      }
    }
  }
  
  public static int a(Context paramContext)
  {
    return getResourcesgetDisplayMetricswidthPixels;
  }
  
  public static int a(DisplayMetrics paramDisplayMetrics, boolean paramBoolean)
  {
    if (paramBoolean) {
      return Math.max(widthPixels, heightPixels);
    }
    return Math.min(widthPixels, heightPixels);
  }
  
  public static int a(View paramView)
  {
    int i;
    if (paramView.getVisibility() == 8)
    {
      i = 1;
      paramView.setVisibility(4);
    }
    for (;;)
    {
      paramView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
      int j = paramView.getMeasuredHeight();
      if (i != 0) {
        paramView.setVisibility(8);
      }
      return j;
      i = 0;
    }
  }
  
  public static Bitmap a(@cgb Bitmap paramBitmap, Context paramContext)
  {
    return Bitmap.createScaledBitmap(paramBitmap, a(paramContext), c(paramContext), false);
  }
  
  public static ColorFilter a(double paramDouble1, double paramDouble2)
  {
    Object localObject = { 0.596F, -0.274F, -0.321F };
    float f1 = (float)paramDouble2;
    float f2 = (float)Math.cos(paramDouble1);
    float f3 = (float)-Math.sin(paramDouble1);
    float f4 = (float)Math.sin(paramDouble1);
    float f5 = (float)Math.cos(paramDouble1);
    localObject = a(a(new float[][] { { 1.0F, 0.956F, 0.621F }, { 1.0F, -0.272F, -0.647F }, { 1.0F, -1.107F, 1.705F } }, new float[][] { { f1, 0.0F, 0.0F }, { 0.0F, f2, f3 }, { 0.0F, f4, f5 } }), new float[][] { { 0.299F, 0.587F, 0.114F }, localObject, { 0.211F, -0.523F, 0.311F } });
    return new ColorMatrixColorFilter(new float[] { localObject[0][0], localObject[0][1], localObject[0][2], 0.0F, 0.0F, localObject[1][0], localObject[1][1], localObject[1][2], 0.0F, 0.0F, localObject[2][0], localObject[2][1], localObject[2][2], 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 1.0F, 0.0F });
  }
  
  public static String a(DisplayMetrics paramDisplayMetrics)
  {
    switch (densityDpi)
    {
    default: 
      return "DENSITY_UNKNOWN";
    case 120: 
      return "DENSITY_LOW";
    case 160: 
      return "DENSITY_MEDIUM";
    case 240: 
      return "DENSITY_HIGH";
    case 320: 
      return "DENSITY_XHIGH";
    case 480: 
      return "DENSITY_XXHIGH";
    case 640: 
      return "DENSITY_XXXHIGH";
    case 213: 
      return "DENSITY_TV";
    case 400: 
      return "DENSITY_400";
    }
    return "DENSITY_560";
  }
  
  public static List<View> a(ViewGroup paramViewGroup)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      localArrayList.add(paramViewGroup.getChildAt(i));
      i += 1;
    }
    return localArrayList;
  }
  
  public static void a(Context paramContext, View paramView)
  {
    if (paramContext == null)
    {
      Timber.e("ViewUtils", "Attempting to hide keyboard with null context", new Object[0]);
      return;
    }
    ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
  
  public static void a(@cgc View paramView, int paramInt)
  {
    if (paramView != null) {
      paramView.setVisibility(paramInt);
    }
  }
  
  public static void a(View paramView, Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.setBackground(paramDrawable);
      return;
    }
    paramView.setBackgroundDrawable(paramDrawable);
  }
  
  public static void a(@cgb final View paramView1, @cgb View paramView2, @cgb final int paramInt)
  {
    paramView1.post(new Runnable()
    {
      public final void run()
      {
        Rect localRect = new Rect();
        val$childSmallView.getHitRect(localRect);
        top -= paramInt;
        left -= paramInt;
        right += paramInt;
        bottom += paramInt;
        paramView1.setTouchDelegate(new TouchDelegate(localRect, val$childSmallView));
      }
    });
  }
  
  public static boolean a(Window paramWindow)
  {
    if (paramWindow == null) {}
    while ((getAttributesflags & 0x400) == 0) {
      return false;
    }
    return true;
  }
  
  private static float[][] a(float[][] paramArrayOfFloat1, float[][] paramArrayOfFloat2)
  {
    int m = paramArrayOfFloat1.length;
    int n = paramArrayOfFloat1[0].length;
    int i1 = paramArrayOfFloat2[0].length;
    float[][] arrayOfFloat = (float[][])Array.newInstance(Float.TYPE, new int[] { m, i1 });
    int i = 0;
    while (i < m)
    {
      int j = 0;
      while (j < i1)
      {
        int k = 0;
        while (k < n)
        {
          float[] arrayOfFloat1 = arrayOfFloat[i];
          arrayOfFloat1[j] += paramArrayOfFloat1[i][k] * paramArrayOfFloat2[k][j];
          k += 1;
        }
        j += 1;
      }
      i += 1;
    }
    return arrayOfFloat;
  }
  
  public static float b(float paramFloat, @cgb Context paramContext)
  {
    return paramFloat / (getResourcesgetDisplayMetricsdensityDpi / 160.0F);
  }
  
  public static int b(Context paramContext)
  {
    return getResourcesgetDisplayMetricsheightPixels;
  }
  
  public static int b(DisplayMetrics paramDisplayMetrics, boolean paramBoolean)
  {
    if (paramBoolean) {
      return Math.min(widthPixels, heightPixels);
    }
    return Math.max(widthPixels, heightPixels);
  }
  
  public static void b(View paramView)
  {
    if (paramView == null) {}
    for (;;)
    {
      return;
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int i = paramView.getChildCount() - 1;
        while (i >= 0)
        {
          View localView = paramView.getChildAt(i);
          if (localView != null)
          {
            b(localView);
            if ((localView instanceof ape)) {
              ((ape)localView).d();
            }
          }
          i -= 1;
        }
      }
    }
  }
  
  public static boolean b(int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    switch (paramInt)
    {
    default: 
      bool1 = bool2;
      if (ReleaseManager.e()) {
        throw new IllegalArgumentException("Unexpected rotation: " + paramInt);
      }
      break;
    case 0: 
    case 2: 
      bool1 = true;
    }
    return bool1;
  }
  
  public static int c(Context paramContext)
  {
    auv localauv = new auv(paramContext);
    int i = b(paramContext);
    return localauv.b() + i;
  }
  
  public static void c(View paramView)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    if (localViewGroup != null)
    {
      localViewGroup.removeView(paramView);
      localViewGroup.addView(paramView, 0);
    }
  }
  
  public static boolean c(int paramInt)
  {
    return (paramInt & 0x30 & 0xFFFFFFEF) != 0;
  }
  
  public static int d(Context paramContext)
  {
    try
    {
      int i = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getRotation();
      return i;
    }
    catch (RuntimeException paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public static boolean d(int paramInt)
  {
    return (paramInt & 0x50 & 0xFFFFFFEF) != 0;
  }
  
  public static boolean d(@cgc View paramView)
  {
    return (paramView != null) && (paramView.getVisibility() == 0);
  }
  
  public static int e(@cgb View paramView)
  {
    paramView = paramView.getRootView();
    int k;
    int i;
    View localView;
    do
    {
      k = sNextGeneratedId.get();
      int j = k + 1;
      i = j;
      if (j > 16777215) {
        i = 1;
      }
      localView = paramView.findViewById(i);
    } while ((!sNextGeneratedId.compareAndSet(k, i)) || (localView != null));
    return k;
  }
  
  public static boolean e(int paramInt)
  {
    return (paramInt & 0x3 & 0xFFFFFFFE) != 0;
  }
  
  public static boolean e(Context paramContext)
  {
    try
    {
      paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
      if (paramContext.getWidth() < paramContext.getHeight()) {
        return true;
      }
    }
    catch (RuntimeException paramContext)
    {
      paramContext.printStackTrace();
      return true;
    }
    return false;
  }
  
  public static void f(Context paramContext)
  {
    if (paramContext == null)
    {
      Timber.e("ViewUtils", "Attempting to show keyboard with null context", new Object[0]);
      return;
    }
    ((InputMethodManager)paramContext.getSystemService("input_method")).toggleSoftInput(2, 1);
  }
  
  public static boolean f(int paramInt)
  {
    return (paramInt & 0x5 & 0xFFFFFFFE) != 0;
  }
  
  public static void g(Context paramContext)
  {
    if (paramContext == null)
    {
      Timber.e("ViewUtils", "Attempting to show keyboard with null context", new Object[0]);
      return;
    }
    ((InputMethodManager)paramContext.getSystemService("input_method")).toggleSoftInput(1, 1);
  }
  
  public static int h(Context paramContext)
  {
    if (amIsImmersiveModeOn) {
      return c(paramContext);
    }
    return b(paramContext);
  }
  
  public final void a(View paramView, boolean paramBoolean)
  {
    TitleBarManager.Visibility localVisibility;
    if (paramBoolean)
    {
      localVisibility = TitleBarManager.Visibility.VISIBLE;
      mBus.a(new bel(localVisibility));
      if (!paramBoolean) {
        break label66;
      }
      mSoftNavManager.c();
      label36:
      if (mSoftNavBarUtils.a()) {
        if (!paramBoolean) {
          break label76;
        }
      }
    }
    label66:
    label76:
    for (int i = 0;; i = 2)
    {
      paramView.setSystemUiVisibility(i);
      return;
      localVisibility = TitleBarManager.Visibility.HIDDEN;
      break;
      mSoftNavManager.b();
      break label36;
    }
  }
}

/* Location:
 * Qualified Name:     avh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */