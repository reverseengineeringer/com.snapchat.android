package net.hockeyapp.android;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.AsyncTask;
import java.io.File;
import java.io.FileOutputStream;

final class PaintActivity$2
  extends AsyncTask<File, Void, Void>
{
  PaintActivity$2(PaintActivity paramPaintActivity, Bitmap paramBitmap) {}
  
  private Void a(File... paramVarArgs)
  {
    try
    {
      paramVarArgs = new FileOutputStream(paramVarArgs[0]);
      a.compress(Bitmap.CompressFormat.JPEG, 100, paramVarArgs);
      paramVarArgs.close();
      return null;
    }
    catch (Exception paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.PaintActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */