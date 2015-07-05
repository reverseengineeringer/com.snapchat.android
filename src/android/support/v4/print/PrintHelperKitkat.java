package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.CancellationSignal.OnCancelListener;
import android.print.PrintAttributes;
import android.print.PrintAttributes.Builder;
import android.print.PrintAttributes.MediaSize;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentInfo.Builder;
import android.print.PrintManager;
import java.io.FileNotFoundException;

final class PrintHelperKitkat
{
  public static final int COLOR_MODE_COLOR = 2;
  public static final int COLOR_MODE_MONOCHROME = 1;
  private static final String LOG_TAG = "PrintHelperKitkat";
  private static final int MAX_PRINT_SIZE = 3500;
  public static final int ORIENTATION_LANDSCAPE = 1;
  public static final int ORIENTATION_PORTRAIT = 2;
  public static final int SCALE_MODE_FILL = 2;
  public static final int SCALE_MODE_FIT = 1;
  int mColorMode = 2;
  final Context mContext;
  BitmapFactory.Options mDecodeOptions = null;
  final Object mLock = new Object();
  int mOrientation = 1;
  int mScaleMode = 2;
  
  PrintHelperKitkat(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private static Matrix getMatrix(int paramInt1, int paramInt2, RectF paramRectF, int paramInt3)
  {
    Matrix localMatrix = new Matrix();
    float f = paramRectF.width() / paramInt1;
    if (paramInt3 == 2) {}
    for (f = Math.max(f, paramRectF.height() / paramInt2);; f = Math.min(f, paramRectF.height() / paramInt2))
    {
      localMatrix.postScale(f, f);
      localMatrix.postTranslate((paramRectF.width() - paramInt1 * f) / 2.0F, (paramRectF.height() - f * paramInt2) / 2.0F);
      return localMatrix;
    }
  }
  
  /* Error */
  private Bitmap loadBitmap(Uri paramUri, BitmapFactory.Options paramOptions)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: ifnull +10 -> 13
    //   6: aload_0
    //   7: getfield 56	android/support/v4/print/PrintHelperKitkat:mContext	Landroid/content/Context;
    //   10: ifnonnull +13 -> 23
    //   13: new 102	java/lang/IllegalArgumentException
    //   16: dup
    //   17: ldc 104
    //   19: invokespecial 107	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   22: athrow
    //   23: aload_0
    //   24: getfield 56	android/support/v4/print/PrintHelperKitkat:mContext	Landroid/content/Context;
    //   27: invokevirtual 113	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   30: aload_1
    //   31: invokevirtual 119	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   34: astore_1
    //   35: aload_1
    //   36: astore_3
    //   37: aload_1
    //   38: aconst_null
    //   39: aload_2
    //   40: invokestatic 125	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   43: astore_2
    //   44: aload_1
    //   45: ifnull +7 -> 52
    //   48: aload_1
    //   49: invokevirtual 130	java/io/InputStream:close	()V
    //   52: aload_2
    //   53: areturn
    //   54: astore_1
    //   55: aload_3
    //   56: ifnull +7 -> 63
    //   59: aload_3
    //   60: invokevirtual 130	java/io/InputStream:close	()V
    //   63: aload_1
    //   64: athrow
    //   65: astore_1
    //   66: aload_2
    //   67: areturn
    //   68: astore_2
    //   69: goto -6 -> 63
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	PrintHelperKitkat
    //   0	72	1	paramUri	Uri
    //   0	72	2	paramOptions	BitmapFactory.Options
    //   1	59	3	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   23	35	54	finally
    //   37	44	54	finally
    //   48	52	65	java/io/IOException
    //   59	63	68	java/io/IOException
  }
  
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
  
  final Bitmap loadConstrainedBitmap$1c6d3aaf(Uri arg1)
  {
    int i = 1;
    if ((??? == null) || (mContext == null)) {
      throw new IllegalArgumentException("bad argument to getScaledBitmap");
    }
    ??? = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    loadBitmap(???, (BitmapFactory.Options)???);
    int k = outWidth;
    int m = outHeight;
    if ((k <= 0) || (m <= 0)) {}
    do
    {
      return null;
      int j = Math.max(k, m);
      while (j > 3500)
      {
        j >>>= 1;
        i <<= 1;
      }
    } while ((i <= 0) || (Math.min(k, m) / i <= 0));
    BitmapFactory.Options localOptions;
    synchronized (mLock)
    {
      mDecodeOptions = new BitmapFactory.Options();
      mDecodeOptions.inMutable = true;
      mDecodeOptions.inSampleSize = i;
      localOptions = mDecodeOptions;
    }
    try
    {
      ??? = loadBitmap(???, localOptions);
      synchronized (mLock)
      {
        mDecodeOptions = null;
        return (Bitmap)???;
      }
      ??? = finally;
      throw ???;
    }
    finally {}
  }
  
  public final void printBitmap(final String paramString, final Bitmap paramBitmap, final OnPrintFinishCallback paramOnPrintFinishCallback)
  {
    if (paramBitmap == null) {
      return;
    }
    final int i = mScaleMode;
    PrintManager localPrintManager = (PrintManager)mContext.getSystemService("print");
    Object localObject = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
    if (paramBitmap.getWidth() > paramBitmap.getHeight()) {
      localObject = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
    }
    localObject = new PrintAttributes.Builder().setMediaSize((PrintAttributes.MediaSize)localObject).setColorMode(mColorMode).build();
    localPrintManager.print(paramString, new PrintDocumentAdapter()
    {
      private PrintAttributes mAttributes;
      
      public final void onFinish() {}
      
      public final void onLayout(PrintAttributes paramAnonymousPrintAttributes1, PrintAttributes paramAnonymousPrintAttributes2, CancellationSignal paramAnonymousCancellationSignal, PrintDocumentAdapter.LayoutResultCallback paramAnonymousLayoutResultCallback, Bundle paramAnonymousBundle)
      {
        boolean bool = true;
        mAttributes = paramAnonymousPrintAttributes2;
        paramAnonymousCancellationSignal = new PrintDocumentInfo.Builder(paramString).setContentType(1).setPageCount(1).build();
        if (!paramAnonymousPrintAttributes2.equals(paramAnonymousPrintAttributes1)) {}
        for (;;)
        {
          paramAnonymousLayoutResultCallback.onLayoutFinished(paramAnonymousCancellationSignal, bool);
          return;
          bool = false;
        }
      }
      
      /* Error */
      public final void onWrite(android.print.PageRange[] paramAnonymousArrayOfPageRange, android.os.ParcelFileDescriptor paramAnonymousParcelFileDescriptor, CancellationSignal paramAnonymousCancellationSignal, android.print.PrintDocumentAdapter.WriteResultCallback paramAnonymousWriteResultCallback)
      {
        // Byte code:
        //   0: new 76	android/print/pdf/PrintedPdfDocument
        //   3: dup
        //   4: aload_0
        //   5: getfield 25	android/support/v4/print/PrintHelperKitkat$1:this$0	Landroid/support/v4/print/PrintHelperKitkat;
        //   8: getfield 80	android/support/v4/print/PrintHelperKitkat:mContext	Landroid/content/Context;
        //   11: aload_0
        //   12: getfield 42	android/support/v4/print/PrintHelperKitkat$1:mAttributes	Landroid/print/PrintAttributes;
        //   15: invokespecial 83	android/print/pdf/PrintedPdfDocument:<init>	(Landroid/content/Context;Landroid/print/PrintAttributes;)V
        //   18: astore_1
        //   19: aload_1
        //   20: iconst_1
        //   21: invokevirtual 87	android/print/pdf/PrintedPdfDocument:startPage	(I)Landroid/graphics/pdf/PdfDocument$Page;
        //   24: astore_3
        //   25: new 89	android/graphics/RectF
        //   28: dup
        //   29: aload_3
        //   30: invokevirtual 95	android/graphics/pdf/PdfDocument$Page:getInfo	()Landroid/graphics/pdf/PdfDocument$PageInfo;
        //   33: invokevirtual 101	android/graphics/pdf/PdfDocument$PageInfo:getContentRect	()Landroid/graphics/Rect;
        //   36: invokespecial 104	android/graphics/RectF:<init>	(Landroid/graphics/Rect;)V
        //   39: astore 5
        //   41: aload_0
        //   42: getfield 29	android/support/v4/print/PrintHelperKitkat$1:val$bitmap	Landroid/graphics/Bitmap;
        //   45: invokevirtual 110	android/graphics/Bitmap:getWidth	()I
        //   48: aload_0
        //   49: getfield 29	android/support/v4/print/PrintHelperKitkat$1:val$bitmap	Landroid/graphics/Bitmap;
        //   52: invokevirtual 113	android/graphics/Bitmap:getHeight	()I
        //   55: aload 5
        //   57: aload_0
        //   58: getfield 31	android/support/v4/print/PrintHelperKitkat$1:val$fittingMode	I
        //   61: invokestatic 117	android/support/v4/print/PrintHelperKitkat:access$000$75eaee36	(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
        //   64: astore 5
        //   66: aload_3
        //   67: invokevirtual 121	android/graphics/pdf/PdfDocument$Page:getCanvas	()Landroid/graphics/Canvas;
        //   70: aload_0
        //   71: getfield 29	android/support/v4/print/PrintHelperKitkat$1:val$bitmap	Landroid/graphics/Bitmap;
        //   74: aload 5
        //   76: aconst_null
        //   77: invokevirtual 127	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
        //   80: aload_1
        //   81: aload_3
        //   82: invokevirtual 131	android/print/pdf/PrintedPdfDocument:finishPage	(Landroid/graphics/pdf/PdfDocument$Page;)V
        //   85: aload_1
        //   86: new 133	java/io/FileOutputStream
        //   89: dup
        //   90: aload_2
        //   91: invokevirtual 139	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
        //   94: invokespecial 142	java/io/FileOutputStream:<init>	(Ljava/io/FileDescriptor;)V
        //   97: invokevirtual 146	android/print/pdf/PrintedPdfDocument:writeTo	(Ljava/io/OutputStream;)V
        //   100: aload 4
        //   102: iconst_1
        //   103: anewarray 148	android/print/PageRange
        //   106: dup
        //   107: iconst_0
        //   108: getstatic 152	android/print/PageRange:ALL_PAGES	Landroid/print/PageRange;
        //   111: aastore
        //   112: invokevirtual 158	android/print/PrintDocumentAdapter$WriteResultCallback:onWriteFinished	([Landroid/print/PageRange;)V
        //   115: aload_1
        //   116: invokevirtual 161	android/print/pdf/PrintedPdfDocument:close	()V
        //   119: aload_2
        //   120: ifnull +7 -> 127
        //   123: aload_2
        //   124: invokevirtual 162	android/os/ParcelFileDescriptor:close	()V
        //   127: return
        //   128: astore_3
        //   129: aload 4
        //   131: aconst_null
        //   132: invokevirtual 166	android/print/PrintDocumentAdapter$WriteResultCallback:onWriteFailed	(Ljava/lang/CharSequence;)V
        //   135: goto -20 -> 115
        //   138: astore_3
        //   139: aload_1
        //   140: invokevirtual 161	android/print/pdf/PrintedPdfDocument:close	()V
        //   143: aload_2
        //   144: ifnull +7 -> 151
        //   147: aload_2
        //   148: invokevirtual 162	android/os/ParcelFileDescriptor:close	()V
        //   151: aload_3
        //   152: athrow
        //   153: astore_1
        //   154: return
        //   155: astore_1
        //   156: goto -5 -> 151
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	159	0	this	1
        //   0	159	1	paramAnonymousArrayOfPageRange	android.print.PageRange[]
        //   0	159	2	paramAnonymousParcelFileDescriptor	android.os.ParcelFileDescriptor
        //   0	159	3	paramAnonymousCancellationSignal	CancellationSignal
        //   0	159	4	paramAnonymousWriteResultCallback	android.print.PrintDocumentAdapter.WriteResultCallback
        //   39	36	5	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   85	115	128	java/io/IOException
        //   19	85	138	finally
        //   85	115	138	finally
        //   129	135	138	finally
        //   123	127	153	java/io/IOException
        //   147	151	155	java/io/IOException
      }
    }, (PrintAttributes)localObject);
  }
  
  public final void printBitmap(final String paramString, final Uri paramUri, final OnPrintFinishCallback paramOnPrintFinishCallback)
  {
    paramUri = new PrintDocumentAdapter()
    {
      AsyncTask<Uri, Boolean, Bitmap> loadBitmap;
      private PrintAttributes mAttributes;
      Bitmap mBitmap = null;
      
      private void cancelLoad()
      {
        synchronized (mLock)
        {
          if (mDecodeOptions != null)
          {
            mDecodeOptions.requestCancelDecode();
            mDecodeOptions = null;
          }
          return;
        }
      }
      
      public final void onFinish()
      {
        super.onFinish();
        cancelLoad();
        loadBitmap.cancel(true);
      }
      
      public final void onLayout(final PrintAttributes paramAnonymousPrintAttributes1, final PrintAttributes paramAnonymousPrintAttributes2, final CancellationSignal paramAnonymousCancellationSignal, final PrintDocumentAdapter.LayoutResultCallback paramAnonymousLayoutResultCallback, Bundle paramAnonymousBundle)
      {
        boolean bool = true;
        if (paramAnonymousCancellationSignal.isCanceled())
        {
          paramAnonymousLayoutResultCallback.onLayoutCancelled();
          mAttributes = paramAnonymousPrintAttributes2;
          return;
        }
        if (mBitmap != null)
        {
          paramAnonymousCancellationSignal = new PrintDocumentInfo.Builder(paramString).setContentType(1).setPageCount(1).build();
          if (!paramAnonymousPrintAttributes2.equals(paramAnonymousPrintAttributes1)) {}
          for (;;)
          {
            paramAnonymousLayoutResultCallback.onLayoutFinished(paramAnonymousCancellationSignal, bool);
            return;
            bool = false;
          }
        }
        loadBitmap = new AsyncTask()
        {
          private Bitmap doInBackground$4055529b()
          {
            try
            {
              Bitmap localBitmap = loadConstrainedBitmap$1c6d3aaf(val$imageFile);
              return localBitmap;
            }
            catch (FileNotFoundException localFileNotFoundException) {}
            return null;
          }
          
          private void onCancelled$10723a7()
          {
            paramAnonymousLayoutResultCallback.onLayoutCancelled();
          }
          
          private void onPostExecute(Bitmap paramAnonymous2Bitmap)
          {
            boolean bool = true;
            super.onPostExecute(paramAnonymous2Bitmap);
            mBitmap = paramAnonymous2Bitmap;
            if (paramAnonymous2Bitmap != null)
            {
              paramAnonymous2Bitmap = new PrintDocumentInfo.Builder(val$jobName).setContentType(1).setPageCount(1).build();
              if (!paramAnonymousPrintAttributes2.equals(paramAnonymousPrintAttributes1)) {}
              for (;;)
              {
                paramAnonymousLayoutResultCallback.onLayoutFinished(paramAnonymous2Bitmap, bool);
                return;
                bool = false;
              }
            }
            paramAnonymousLayoutResultCallback.onLayoutFailed(null);
          }
          
          protected final void onPreExecute()
          {
            paramAnonymousCancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener()
            {
              public final void onCancel()
              {
                PrintHelperKitkat.2.this.cancelLoad();
                cancel(false);
              }
            });
          }
        };
        loadBitmap.execute(new Uri[0]);
        mAttributes = paramAnonymousPrintAttributes2;
      }
      
      /* Error */
      public final void onWrite(android.print.PageRange[] paramAnonymousArrayOfPageRange, android.os.ParcelFileDescriptor paramAnonymousParcelFileDescriptor, CancellationSignal paramAnonymousCancellationSignal, android.print.PrintDocumentAdapter.WriteResultCallback paramAnonymousWriteResultCallback)
      {
        // Byte code:
        //   0: new 133	android/print/pdf/PrintedPdfDocument
        //   3: dup
        //   4: aload_0
        //   5: getfield 34	android/support/v4/print/PrintHelperKitkat$2:this$0	Landroid/support/v4/print/PrintHelperKitkat;
        //   8: getfield 137	android/support/v4/print/PrintHelperKitkat:mContext	Landroid/content/Context;
        //   11: aload_0
        //   12: getfield 92	android/support/v4/print/PrintHelperKitkat$2:mAttributes	Landroid/print/PrintAttributes;
        //   15: invokespecial 140	android/print/pdf/PrintedPdfDocument:<init>	(Landroid/content/Context;Landroid/print/PrintAttributes;)V
        //   18: astore_1
        //   19: aload_1
        //   20: iconst_1
        //   21: invokevirtual 144	android/print/pdf/PrintedPdfDocument:startPage	(I)Landroid/graphics/pdf/PdfDocument$Page;
        //   24: astore_3
        //   25: new 146	android/graphics/RectF
        //   28: dup
        //   29: aload_3
        //   30: invokevirtual 152	android/graphics/pdf/PdfDocument$Page:getInfo	()Landroid/graphics/pdf/PdfDocument$PageInfo;
        //   33: invokevirtual 158	android/graphics/pdf/PdfDocument$PageInfo:getContentRect	()Landroid/graphics/Rect;
        //   36: invokespecial 161	android/graphics/RectF:<init>	(Landroid/graphics/Rect;)V
        //   39: astore 5
        //   41: aload_0
        //   42: getfield 47	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
        //   45: invokevirtual 167	android/graphics/Bitmap:getWidth	()I
        //   48: aload_0
        //   49: getfield 47	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
        //   52: invokevirtual 170	android/graphics/Bitmap:getHeight	()I
        //   55: aload 5
        //   57: aload_0
        //   58: getfield 42	android/support/v4/print/PrintHelperKitkat$2:val$fittingMode	I
        //   61: invokestatic 174	android/support/v4/print/PrintHelperKitkat:access$000$75eaee36	(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
        //   64: astore 5
        //   66: aload_3
        //   67: invokevirtual 178	android/graphics/pdf/PdfDocument$Page:getCanvas	()Landroid/graphics/Canvas;
        //   70: aload_0
        //   71: getfield 47	android/support/v4/print/PrintHelperKitkat$2:mBitmap	Landroid/graphics/Bitmap;
        //   74: aload 5
        //   76: aconst_null
        //   77: invokevirtual 184	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
        //   80: aload_1
        //   81: aload_3
        //   82: invokevirtual 188	android/print/pdf/PrintedPdfDocument:finishPage	(Landroid/graphics/pdf/PdfDocument$Page;)V
        //   85: aload_1
        //   86: new 190	java/io/FileOutputStream
        //   89: dup
        //   90: aload_2
        //   91: invokevirtual 196	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
        //   94: invokespecial 199	java/io/FileOutputStream:<init>	(Ljava/io/FileDescriptor;)V
        //   97: invokevirtual 203	android/print/pdf/PrintedPdfDocument:writeTo	(Ljava/io/OutputStream;)V
        //   100: aload 4
        //   102: iconst_1
        //   103: anewarray 205	android/print/PageRange
        //   106: dup
        //   107: iconst_0
        //   108: getstatic 209	android/print/PageRange:ALL_PAGES	Landroid/print/PageRange;
        //   111: aastore
        //   112: invokevirtual 215	android/print/PrintDocumentAdapter$WriteResultCallback:onWriteFinished	([Landroid/print/PageRange;)V
        //   115: aload_1
        //   116: invokevirtual 218	android/print/pdf/PrintedPdfDocument:close	()V
        //   119: aload_2
        //   120: ifnull +7 -> 127
        //   123: aload_2
        //   124: invokevirtual 219	android/os/ParcelFileDescriptor:close	()V
        //   127: return
        //   128: astore_3
        //   129: aload 4
        //   131: aconst_null
        //   132: invokevirtual 223	android/print/PrintDocumentAdapter$WriteResultCallback:onWriteFailed	(Ljava/lang/CharSequence;)V
        //   135: goto -20 -> 115
        //   138: astore_3
        //   139: aload_1
        //   140: invokevirtual 218	android/print/pdf/PrintedPdfDocument:close	()V
        //   143: aload_2
        //   144: ifnull +7 -> 151
        //   147: aload_2
        //   148: invokevirtual 219	android/os/ParcelFileDescriptor:close	()V
        //   151: aload_3
        //   152: athrow
        //   153: astore_1
        //   154: return
        //   155: astore_1
        //   156: goto -5 -> 151
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	159	0	this	2
        //   0	159	1	paramAnonymousArrayOfPageRange	android.print.PageRange[]
        //   0	159	2	paramAnonymousParcelFileDescriptor	android.os.ParcelFileDescriptor
        //   0	159	3	paramAnonymousCancellationSignal	CancellationSignal
        //   0	159	4	paramAnonymousWriteResultCallback	android.print.PrintDocumentAdapter.WriteResultCallback
        //   39	36	5	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   85	115	128	java/io/IOException
        //   19	85	138	finally
        //   85	115	138	finally
        //   129	135	138	finally
        //   123	127	153	java/io/IOException
        //   147	151	155	java/io/IOException
      }
    };
    paramOnPrintFinishCallback = (PrintManager)mContext.getSystemService("print");
    PrintAttributes.Builder localBuilder = new PrintAttributes.Builder();
    localBuilder.setColorMode(mColorMode);
    if (mOrientation == 1) {
      localBuilder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
    }
    for (;;)
    {
      paramOnPrintFinishCallback.print(paramString, paramUri, localBuilder.build());
      return;
      if (mOrientation == 2) {
        localBuilder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
      }
    }
  }
  
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
  
  public static abstract interface OnPrintFinishCallback
  {
    public abstract void onFinish();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.print.PrintHelperKitkat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */