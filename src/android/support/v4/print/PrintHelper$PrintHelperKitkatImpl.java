package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;

final class PrintHelper$PrintHelperKitkatImpl
  implements PrintHelper.PrintHelperVersionImpl
{
  private final PrintHelperKitkat mPrintHelper;
  
  PrintHelper$PrintHelperKitkatImpl(Context paramContext)
  {
    mPrintHelper = new PrintHelperKitkat(paramContext);
  }
  
  public final int getColorMode()
  {
    return mPrintHelper.getColorMode();
  }
  
  public final int getOrientation()
  {
    return mPrintHelper.getOrientation();
  }
  
  public final int getScaleMode()
  {
    return mPrintHelper.getScaleMode();
  }
  
  public final void printBitmap(String paramString, Bitmap paramBitmap, final PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback)
  {
    PrintHelperKitkat.OnPrintFinishCallback local1 = null;
    if (paramOnPrintFinishCallback != null) {
      local1 = new PrintHelperKitkat.OnPrintFinishCallback()
      {
        public final void onFinish() {}
      };
    }
    mPrintHelper.printBitmap(paramString, paramBitmap, local1);
  }
  
  public final void printBitmap(String paramString, Uri paramUri, final PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback)
  {
    PrintHelperKitkat.OnPrintFinishCallback local2 = null;
    if (paramOnPrintFinishCallback != null) {
      local2 = new PrintHelperKitkat.OnPrintFinishCallback()
      {
        public final void onFinish() {}
      };
    }
    mPrintHelper.printBitmap(paramString, paramUri, local2);
  }
  
  public final void setColorMode(int paramInt)
  {
    mPrintHelper.setColorMode(paramInt);
  }
  
  public final void setOrientation(int paramInt)
  {
    mPrintHelper.setOrientation(paramInt);
  }
  
  public final void setScaleMode(int paramInt)
  {
    mPrintHelper.setScaleMode(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.print.PrintHelper.PrintHelperKitkatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */