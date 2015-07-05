package net.hockeyapp.android;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Toast;
import bvi;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Stack;
import net.hockeyapp.android.views.PaintView;

public class PaintActivity
  extends Activity
{
  private PaintView a;
  private String b;
  
  private String a(Uri paramUri, String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    Cursor localCursor = getApplicationContext().getContentResolver().query(paramUri, new String[] { "_data" }, null, null, null);
    paramUri = (Uri)localObject2;
    if (localCursor != null) {
      paramUri = (Uri)localObject1;
    }
    try
    {
      if (localCursor.moveToFirst()) {
        paramUri = localCursor.getString(0);
      }
      localCursor.close();
      if (paramUri == null) {
        return paramString;
      }
    }
    finally
    {
      localCursor.close();
    }
    return new File(paramUri).getName();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (Uri)getIntent().getExtras().getParcelable("imageUri");
    b = a(paramBundle, paramBundle.getLastPathSegment());
    int j = getResourcesgetDisplayMetricswidthPixels;
    int k = getResourcesgetDisplayMetricsheightPixels;
    if (j > k) {}
    for (int i = 0;; i = 1)
    {
      int m = PaintView.a(getContentResolver(), paramBundle);
      setRequestedOrientation(m);
      if (i == m) {
        break;
      }
      return;
    }
    a = new PaintView(this, paramBundle, j, k);
    paramBundle = new LinearLayout(this);
    paramBundle.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    paramBundle.setGravity(17);
    paramBundle.setOrientation(1);
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    localLinearLayout.setGravity(17);
    localLinearLayout.setOrientation(0);
    paramBundle.addView(localLinearLayout);
    localLinearLayout.addView(a);
    setContentView(paramBundle);
    Toast.makeText(this, bvi.a(1536), 1000).show();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    paramMenu.add(0, 1, 0, bvi.a(1537));
    paramMenu.add(0, 2, 0, bvi.a(1538));
    paramMenu.add(0, 3, 0, bvi.a(1539));
    return true;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (!a.a.empty()))
    {
      paramKeyEvent = new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          default: 
            return;
          }
          finish();
        }
      };
      new AlertDialog.Builder(this).setMessage(bvi.a(1540)).setPositiveButton(bvi.a(1542), paramKeyEvent).setNegativeButton(bvi.a(1541), paramKeyEvent).show();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool = true;
    switch (paramMenuItem.getItemId())
    {
    default: 
      bool = super.onOptionsItemSelected(paramMenuItem);
    case 1: 
    case 2: 
      do
      {
        return bool;
        Object localObject = new File(getCacheDir(), "HockeyApp");
        ((File)localObject).mkdir();
        paramMenuItem = new File((File)localObject, b);
        int i = 1;
        while (paramMenuItem.exists())
        {
          paramMenuItem = new File((File)localObject, b + "_" + i);
          i += 1;
        }
        a.setDrawingCacheEnabled(true);
        new AsyncTask()
        {
          private Void a(File... paramAnonymousVarArgs)
          {
            try
            {
              paramAnonymousVarArgs = new FileOutputStream(paramAnonymousVarArgs[0]);
              a.compress(Bitmap.CompressFormat.JPEG, 100, paramAnonymousVarArgs);
              paramAnonymousVarArgs.close();
              return null;
            }
            catch (Exception paramAnonymousVarArgs)
            {
              for (;;)
              {
                paramAnonymousVarArgs.printStackTrace();
              }
            }
          }
        }.execute(new File[] { paramMenuItem });
        localObject = new Intent();
        ((Intent)localObject).putExtra("imageUri", Uri.fromFile(paramMenuItem));
        if (getParent() == null) {
          setResult(-1, (Intent)localObject);
        }
        for (;;)
        {
          finish();
          return true;
          getParent().setResult(-1, (Intent)localObject);
        }
        paramMenuItem = a;
      } while (a.empty());
      a.pop();
      paramMenuItem.invalidate();
      return true;
    }
    paramMenuItem = a;
    a.clear();
    paramMenuItem.invalidate();
    return true;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    return true;
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.PaintActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */