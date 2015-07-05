package android.support.v4.print;

import android.graphics.Bitmap;
import android.net.Uri;

final class PrintHelper$PrintHelperStubImpl
  implements PrintHelper.PrintHelperVersionImpl
{
  int mColorMode = 2;
  int mOrientation = 1;
  int mScaleMode = 2;
  
  public final int getColorMode()
  {
    return mColorMode;
  }
  
  public final int getOrientation()
  {
    return mOrientation;
  }
  
  public final int getScaleMode()
  {
    return mScaleMode;
  }
  
  public final void printBitmap(String paramString, Bitmap paramBitmap, PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback) {}
  
  public final void printBitmap(String paramString, Uri paramUri, PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback) {}
  
  public final void setColorMode(int paramInt)
  {
    mColorMode = paramInt;
  }
  
  public final void setOrientation(int paramInt)
  {
    mOrientation = paramInt;
  }
  
  public final void setScaleMode(int paramInt)
  {
    mScaleMode = paramInt;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.print.PrintHelper.PrintHelperStubImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */