import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Toast;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.ui.FrivolousAnimationView;
import com.snapchat.android.util.debug.BugReportActivity;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public final class baf
  implements bau.a
{
  public static final int INTENT_REQUEST_CODE = 43351;
  public static final String SCREENSHOT_FILE_PREFIX = "snapchat_shake2report_screenshot_";
  private static final String TAG = "BugReportGenerator";
  private ReleaseManager mReleaseManager;
  
  public baf(ReleaseManager paramReleaseManager)
  {
    mReleaseManager = paramReleaseManager;
  }
  
  public static String a(int paramInt)
  {
    return "snapchat_shake2report_screenshot_" + paramInt + ".jpg";
  }
  
  public static String a(@chc Activity paramActivity, @chd Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return null;
    }
    new bar();
    String str = a(bar.a(paramActivity));
    try
    {
      paramActivity = paramActivity.openFileOutput(str, 0);
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 50, paramActivity);
      bgo.a(paramActivity);
      return str;
    }
    catch (FileNotFoundException paramActivity)
    {
      throw new RuntimeException(paramActivity);
    }
  }
  
  final View a(View paramView, Class paramClass)
  {
    View localView;
    if (paramView == null) {
      localView = null;
    }
    do
    {
      return localView;
      localView = paramView;
    } while (paramView.getClass() == paramClass);
    if ((paramView instanceof ViewGroup))
    {
      int j = ((ViewGroup)paramView).getChildCount();
      int i = 0;
      while (i < j)
      {
        localView = a(((ViewGroup)paramView).getChildAt(i), paramClass);
        if (localView != null) {
          return localView;
        }
        i += 1;
      }
    }
    return null;
  }
  
  public final void a(final Activity paramActivity, final bau parambau)
  {
    bhp.a(avf.SERIAL_EXECUTOR_FOR_DEBUGGING, new Runnable()
    {
      public final void run()
      {
        baf localbaf = baf.this;
        Activity localActivity = paramActivity;
        bau localbau = parambau;
        View localView = localActivity.getWindow().getDecorView();
        HashMap localHashMap = new HashMap();
        localbaf.a(localView, localHashMap);
        if (((localActivity instanceof LandingPageActivity)) && (((LandingPageActivity)localActivity).d()))
        {
          bhp.a(1000L);
          bhp.a(new baf.6(localbaf, localView, localHashMap, localActivity, localbau));
          return;
        }
        bhp.a(new baf.7(localbaf, localView, localHashMap, localActivity, localbau));
      }
    });
  }
  
  final void a(final Activity paramActivity, final bau parambau, @chd final Bitmap paramBitmap)
  {
    String str = a(paramActivity, paramBitmap);
    try
    {
      baj.a(paramActivity, false);
      if (paramBitmap != null) {}
      for (paramBitmap = str;; paramBitmap = null)
      {
        bhp.a(new Runnable()
        {
          public final void run()
          {
            baf localbaf = baf.this;
            Activity localActivity = paramActivity;
            bau localbau = parambau;
            String str = paramBitmap;
            if ((localActivity.isFinishing()) || (!ReleaseManager.c()))
            {
              Toast.makeText(SnapchatApplication.b(), "Previous activity " + localActivity.getClass().getSimpleName() + " already finished. Could not attach bug report.", 1).show();
              return;
            }
            new AlertDialog.Builder(localActivity).setTitle("Shake To Report").setMessage("Please describe the issue in the coming pop-up screen. Every bug/request you file will help prevent a user from experiencing that pain!").setCancelable(true).setPositiveButton("Send Feedback", new baf.5(localbaf, localActivity, str)).setNegativeButton("Cancel", new baf.4(localbaf, localbau)).setOnCancelListener(new baf.3(localbaf, localbau)).show();
          }
        });
        return;
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  final void a(View paramView, Map<FrivolousAnimationView, Boolean> paramMap)
  {
    if (paramView == null) {}
    for (;;)
    {
      return;
      if ((paramView instanceof FrivolousAnimationView))
      {
        paramMap.put((FrivolousAnimationView)paramView, Boolean.valueOf(paramView.isDrawingCacheEnabled()));
        paramView.setDrawingCacheEnabled(true);
      }
      if ((paramView instanceof ViewGroup))
      {
        int i = 0;
        while (i < ((ViewGroup)paramView).getChildCount())
        {
          a(((ViewGroup)paramView).getChildAt(i), paramMap);
          i += 1;
        }
      }
    }
  }
  
  final void b(final Activity paramActivity, final bau parambau, @chd final Bitmap paramBitmap)
  {
    if (bhp.c())
    {
      bhp.a(avf.SERIAL_EXECUTOR_FOR_DEBUGGING, new Runnable()
      {
        public final void run()
        {
          a(paramActivity, parambau, paramBitmap);
        }
      });
      return;
    }
    a(paramActivity, parambau, paramBitmap);
  }
  
  final void b(@chd View paramView, @chd Map<FrivolousAnimationView, Boolean> paramMap)
  {
    if ((paramView == null) || (paramMap == null)) {}
    for (;;)
    {
      return;
      if (((paramView instanceof FrivolousAnimationView)) && (paramMap.containsKey(paramView))) {
        paramView.setDrawingCacheEnabled(((Boolean)paramMap.get(paramView)).booleanValue());
      }
      if ((paramView instanceof ViewGroup))
      {
        int i = 0;
        while (i < ((ViewGroup)paramView).getChildCount())
        {
          View localView = ((ViewGroup)paramView).getChildAt(i);
          if (localView != null) {
            b(localView, paramMap);
          }
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     baf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */