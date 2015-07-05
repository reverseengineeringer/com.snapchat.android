package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;

public final class PrintHelper
{
  public static final int COLOR_MODE_COLOR = 2;
  public static final int COLOR_MODE_MONOCHROME = 1;
  public static final int ORIENTATION_LANDSCAPE = 1;
  public static final int ORIENTATION_PORTRAIT = 2;
  public static final int SCALE_MODE_FILL = 2;
  public static final int SCALE_MODE_FIT = 1;
  PrintHelperVersionImpl mImpl;
  
  private PrintHelper(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 19) {}
    for (int i = 1; i != 0; i = 0)
    {
      mImpl = new PrintHelperKitkatImpl(paramContext);
      return;
    }
    mImpl = new PrintHelperStubImpl((byte)0);
  }
  
  private int getColorMode()
  {
    return mImpl.getColorMode();
  }
  
  private int getOrientation()
  {
    return mImpl.getOrientation();
  }
  
  private int getScaleMode()
  {
    return mImpl.getScaleMode();
  }
  
  private void printBitmap(String paramString, Bitmap paramBitmap)
  {
    mImpl.printBitmap(paramString, paramBitmap, null);
  }
  
  private void printBitmap(String paramString, Bitmap paramBitmap, OnPrintFinishCallback paramOnPrintFinishCallback)
  {
    mImpl.printBitmap(paramString, paramBitmap, paramOnPrintFinishCallback);
  }
  
  private void printBitmap(String paramString, Uri paramUri)
  {
    mImpl.printBitmap(paramString, paramUri, null);
  }
  
  private void printBitmap(String paramString, Uri paramUri, OnPrintFinishCallback paramOnPrintFinishCallback)
  {
    mImpl.printBitmap(paramString, paramUri, paramOnPrintFinishCallback);
  }
  
  private void setColorMode(int paramInt)
  {
    mImpl.setColorMode(paramInt);
  }
  
  private void setOrientation(int paramInt)
  {
    mImpl.setOrientation(paramInt);
  }
  
  private void setScaleMode(int paramInt)
  {
    mImpl.setScaleMode(paramInt);
  }
  
  private static boolean systemSupportsPrint()
  {
    return Build.VERSION.SDK_INT >= 19;
  }
  
  public static abstract interface OnPrintFinishCallback
  {
    public abstract void onFinish();
  }
  
  static final class PrintHelperKitkatImpl
    implements PrintHelper.PrintHelperVersionImpl
  {
    private final PrintHelperKitkat mPrintHelper;
    
    PrintHelperKitkatImpl(Context paramContext)
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
  
  static final class PrintHelperStubImpl
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
  
  static abstract interface PrintHelperVersionImpl
  {
    public abstract int getColorMode();
    
    public abstract int getOrientation();
    
    public abstract int getScaleMode();
    
    public abstract void printBitmap(String paramString, Bitmap paramBitmap, PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback);
    
    public abstract void printBitmap(String paramString, Uri paramUri, PrintHelper.OnPrintFinishCallback paramOnPrintFinishCallback);
    
    public abstract void setColorMode(int paramInt);
    
    public abstract void setOrientation(int paramInt);
    
    public abstract void setScaleMode(int paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.print.PrintHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */