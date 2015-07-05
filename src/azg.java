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
import com.snapchat.android.Timber;
import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.ui.FrivolousAnimationView;
import com.snapchat.android.util.debug.BugReportActivity;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public final class azg
  implements azv.a
{
  public static final int INTENT_REQUEST_CODE = 43351;
  public static final String SCREENSHOT_FILE_PREFIX = "snapchat_shake2report_screenshot_";
  private static final String TAG = "BugReportGenerator";
  private ReleaseManager mReleaseManager;
  
  public azg(ReleaseManager paramReleaseManager)
  {
    mReleaseManager = paramReleaseManager;
  }
  
  public static String a(int paramInt)
  {
    return "snapchat_shake2report_screenshot_" + paramInt + ".jpg";
  }
  
  public static String a(@cgb Activity paramActivity, @cgc Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return null;
    }
    new azs();
    String str = a(azs.a(paramActivity));
    try
    {
      paramActivity = paramActivity.openFileOutput(str, 0);
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 50, paramActivity);
      bfo.a(paramActivity);
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
  
  public final void a(final Activity paramActivity, final azv paramazv)
  {
    Timber.b("BugReportGenerator", "Activated Shake To Report", new Object[0]);
    bgp.a(auh.SERIAL_EXECUTOR_FOR_DEBUGGING, new Runnable()
    {
      public final void run()
      {
        azg localazg = azg.this;
        Activity localActivity = paramActivity;
        azv localazv = paramazv;
        View localView = localActivity.getWindow().getDecorView();
        HashMap localHashMap = new HashMap();
        localazg.a(localView, localHashMap);
        if (((localActivity instanceof LandingPageActivity)) && (((LandingPageActivity)localActivity).d()))
        {
          bgp.a(1000L);
          bgp.a(new azg.6(localazg, localView, localHashMap, localActivity, localazv));
          return;
        }
        bgp.a(new azg.7(localazg, localView, localHashMap, localActivity, localazv));
      }
    });
  }
  
  final void a(final Activity paramActivity, final azv paramazv, @cgc final Bitmap paramBitmap)
  {
    String str = a(paramActivity, paramBitmap);
    try
    {
      azk.a(paramActivity, false);
      if (paramBitmap != null)
      {
        paramBitmap = str;
        bgp.a(new Runnable()
        {
          public final void run()
          {
            azg localazg = azg.this;
            Activity localActivity = paramActivity;
            azv localazv = paramazv;
            String str = paramBitmap;
            if ((localActivity.isFinishing()) || (!ReleaseManager.c()))
            {
              Toast.makeText(SnapchatApplication.b(), "Previous activity " + localActivity.getClass().getSimpleName() + " already finished. Could not attach bug report.", 1).show();
              return;
            }
            new AlertDialog.Builder(localActivity).setTitle("Shake To Report").setMessage("Please describe the issue in the coming pop-up screen. Every bug/request you file will help prevent a user from experiencing that pain!").setCancelable(true).setPositiveButton("Send Feedback", new azg.5(localazg, localActivity, str)).setNegativeButton("Cancel", new azg.4(localazg, localazv)).setOnCancelListener(new azg.3(localazg, localazv)).show();
          }
        });
        return;
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Timber.a("BugReportGenerator", localIOException);
        continue;
        paramBitmap = null;
      }
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
  
  final void b(final Activity paramActivity, final azv paramazv, @cgc final Bitmap paramBitmap)
  {
    if (bgp.c())
    {
      bgp.a(auh.SERIAL_EXECUTOR_FOR_DEBUGGING, new Runnable()
      {
        public final void run()
        {
          a(paramActivity, paramazv, paramBitmap);
        }
      });
      return;
    }
    a(paramActivity, paramazv, paramBitmap);
  }
  
  final void b(@cgc View paramView, @cgc Map<FrivolousAnimationView, Boolean> paramMap)
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
 * Qualified Name:     azg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */