package android.support.v4.print;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentInfo.Builder;

final class PrintHelperKitkat$1
  extends PrintDocumentAdapter
{
  private PrintAttributes mAttributes;
  
  PrintHelperKitkat$1(PrintHelperKitkat paramPrintHelperKitkat, String paramString, Bitmap paramBitmap, int paramInt, PrintHelperKitkat.OnPrintFinishCallback paramOnPrintFinishCallback) {}
  
  public final void onFinish() {}
  
  public final void onLayout(PrintAttributes paramPrintAttributes1, PrintAttributes paramPrintAttributes2, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.LayoutResultCallback paramLayoutResultCallback, Bundle paramBundle)
  {
    boolean bool = true;
    mAttributes = paramPrintAttributes2;
    paramCancellationSignal = new PrintDocumentInfo.Builder(val$jobName).setContentType(1).setPageCount(1).build();
    if (!paramPrintAttributes2.equals(paramPrintAttributes1)) {}
    for (;;)
    {
      paramLayoutResultCallback.onLayoutFinished(paramCancellationSignal, bool);
      return;
      bool = false;
    }
  }
  
  /* Error */
  public final void onWrite(android.print.PageRange[] paramArrayOfPageRange, android.os.ParcelFileDescriptor paramParcelFileDescriptor, CancellationSignal paramCancellationSignal, android.print.PrintDocumentAdapter.WriteResultCallback paramWriteResultCallback)
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
    //   0	159	1	paramArrayOfPageRange	android.print.PageRange[]
    //   0	159	2	paramParcelFileDescriptor	android.os.ParcelFileDescriptor
    //   0	159	3	paramCancellationSignal	CancellationSignal
    //   0	159	4	paramWriteResultCallback	android.print.PrintDocumentAdapter.WriteResultCallback
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
}

/* Location:
 * Qualified Name:     android.support.v4.print.PrintHelperKitkat.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */