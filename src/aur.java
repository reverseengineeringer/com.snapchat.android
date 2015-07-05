import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Build.VERSION;
import android.preference.PreferenceManager;
import android.provider.MediaStore.Images.Media;
import android.util.DisplayMetrics;
import android.util.Pair;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.commons.io.FileUtils;

@avl
public final class aur
{
  private static final int IGNORED_COMPRESSION_VALUE = 90;
  private static final int IPHONE_5S_HEIGHT = 1136;
  private static final int IPHONE_5S_WIDTH = 640;
  private static final int RAW_THUMBNAIL_ENCODING_QUALITY = 60;
  private static final int RAW_THUMBNAIL_SIZE = 256;
  private static final int STORY_THUMBNAIL_SIZE = 102;
  private static final String TAG = "SnapMediaUtils";
  private static final nh sMemoryAnalytics = new nh();
  
  public static Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0)) {
      return null;
    }
    try
    {
      paramConfig = Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
      return paramConfig;
    }
    catch (OutOfMemoryError paramConfig)
    {
      nh.a("safeCreateBitmap(int, int, Bitmap.Config)", paramConfig);
    }
    return null;
  }
  
  @Deprecated
  @avl
  public static Bitmap a(Context paramContext, int paramInt)
  {
    return a(paramContext, paramInt, true);
  }
  
  @Deprecated
  @avl
  public static Bitmap a(Context paramContext, int paramInt, boolean paramBoolean)
  {
    if (paramContext == null) {
      throw new NullPointerException();
    }
    paramContext = paramContext.getResources();
    if (paramContext == null) {}
    do
    {
      return null;
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      inScaled = paramBoolean;
      try
      {
        paramContext = BitmapFactory.decodeResource(paramContext, paramInt, localOptions);
        return paramContext;
      }
      catch (OutOfMemoryError paramContext)
      {
        nh.a("safeDecodeResource(Context, int, boolean)", paramContext);
        return null;
      }
      catch (Exception paramContext) {}
    } while (!ReleaseManager.e());
    throw new RuntimeException("Could not get drawable! Bad resource perchance?", paramContext);
  }
  
  @Deprecated
  public static Bitmap a(@cgb Context paramContext, @cgb byte[] paramArrayOfByte)
  {
    Bitmap.Config localConfig = Bitmap.Config.ARGB_8888;
    return bmBitmap;
  }
  
  @cgc
  public static Bitmap a(@cgb Bitmap paramBitmap, int paramInt)
  {
    Object localObject = paramBitmap;
    if (paramBitmap.getWidth() > paramBitmap.getHeight())
    {
      localObject = new Matrix();
      paramInt = avh.a(paramInt);
      ((Matrix)localObject).postRotate(paramInt);
      localObject = a(paramBitmap, (Matrix)localObject);
      paramBitmap.recycle();
      if ((ReleaseManager.f()) && (((Bitmap)localObject).getWidth() > paramBitmap.getHeight())) {
        throw new RuntimeException("bitmapToPortrait failed. degrees = " + paramInt + ". input = " + paramBitmap.getWidth() + "x" + paramBitmap.getHeight());
      }
    }
    return (Bitmap)localObject;
  }
  
  @cgc
  public static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 <= 0) || (paramInt3 <= 0)) {
      return null;
    }
    try
    {
      paramBitmap = Bitmap.createBitmap(paramBitmap, 0, paramInt1, paramInt2, paramInt3);
      return paramBitmap;
    }
    catch (OutOfMemoryError paramBitmap)
    {
      nh.a("safeCreateBitmap(Bitmap, int, int, int, int)", paramBitmap);
    }
    return null;
  }
  
  public static Bitmap a(Bitmap paramBitmap, Context paramContext)
  {
    Object localObject = f(paramBitmap, paramContext);
    int i = ((Integer)first).intValue();
    int j = ((Integer)second).intValue();
    int k = avh.h(paramContext);
    localObject = paramContext.getResources().getDisplayMetrics();
    if ((widthPixels < paramBitmap.getWidth()) && (i > 0))
    {
      j = Math.min(paramBitmap.getHeight(), k);
      paramContext = Bitmap.createBitmap(paramBitmap, i, 0, widthPixels, j);
    }
    do
    {
      do
      {
        return paramContext;
        paramContext = paramBitmap;
      } while (k >= paramBitmap.getHeight());
      paramContext = paramBitmap;
    } while (j <= 0);
    return Bitmap.createBitmap(paramBitmap, 0, j, Math.min(paramBitmap.getWidth(), widthPixels), k);
  }
  
  @avl
  @cgb
  private static Bitmap a(@cgb Bitmap paramBitmap, @cgc Matrix paramMatrix)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    try
    {
      paramMatrix = Bitmap.createBitmap(paramBitmap, 0, 0, i, j, paramMatrix, true);
      return paramMatrix;
    }
    catch (OutOfMemoryError paramMatrix)
    {
      nh.a("safeTransformBitmap(Bitmap, Matrix)", paramMatrix);
    }
    return paramBitmap;
  }
  
  public static Bitmap a(@cgc Uri paramUri, Context paramContext)
  {
    if (paramUri == null) {}
    for (;;)
    {
      return null;
      try
      {
        paramUri = MediaStore.Images.Media.getBitmap(paramContext.getContentResolver(), paramUri);
        if (paramUri != null) {
          if (paramUri.getWidth() > paramUri.getHeight())
          {
            Object localObject = new Matrix();
            ((Matrix)localObject).postRotate(90.0F);
            localObject = a(paramUri, (Matrix)localObject);
            if (localObject != paramUri) {
              paramUri.recycle();
            }
            return e((Bitmap)localObject, paramContext);
          }
        }
      }
      catch (FileNotFoundException paramUri)
      {
        for (;;)
        {
          Timber.a("SnapMediaUtils", paramUri);
          paramUri = null;
        }
      }
      catch (IOException paramUri)
      {
        for (;;)
        {
          Timber.a("SnapMediaUtils", paramUri);
          paramUri = null;
        }
      }
      catch (IllegalArgumentException paramUri)
      {
        for (;;)
        {
          Timber.a("SnapMediaUtils", paramUri);
          paramUri = null;
        }
      }
      catch (OutOfMemoryError paramUri)
      {
        for (;;)
        {
          nh.a("scaledPortraitBitmapFromUri(Uri, Context)", paramUri);
          paramUri = null;
        }
      }
    }
    return e(paramUri, paramContext);
  }
  
  @Deprecated
  public static BitmapFactory.Options a(DisplayMetrics paramDisplayMetrics, int paramInt1, int paramInt2)
  {
    return a(paramDisplayMetrics, paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
  }
  
  @Deprecated
  public static BitmapFactory.Options a(DisplayMetrics paramDisplayMetrics, int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = false;
    inSampleSize = b(paramDisplayMetrics, paramInt1, paramInt2);
    inMutable = true;
    inPreferredConfig = paramConfig;
    outHeight = paramInt2;
    outWidth = paramInt1;
    return localOptions;
  }
  
  public static byte[] a(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 90, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static byte[] a(Bitmap paramBitmap1, @cgc Bitmap paramBitmap2)
  {
    paramBitmap1 = g(paramBitmap1);
    if (paramBitmap2 != null)
    {
      paramBitmap2 = g(paramBitmap2);
      new Canvas(paramBitmap1).drawBitmap(paramBitmap2, 0.0F, 0.0F, null);
      paramBitmap2.recycle();
    }
    paramBitmap2 = a(paramBitmap1);
    paramBitmap1.recycle();
    return paramBitmap2;
  }
  
  public static byte[] a(String paramString)
  {
    paramString = Uri.parse(paramString).getPath();
    if (paramString == null) {
      return null;
    }
    paramString = new File(paramString);
    try
    {
      paramString = FileUtils.readFileToByteArray(paramString);
      return paramString;
    }
    catch (IOException paramString)
    {
      Timber.a("SnapMediaUtils", paramString);
    }
    return null;
  }
  
  @Deprecated
  private static int b(DisplayMetrics paramDisplayMetrics, int paramInt1, int paramInt2)
  {
    int m = Math.min(widthPixels, 3379);
    int n = Math.min(heightPixels, 3379);
    int k = 1;
    int j = 1;
    int i = k;
    if (paramInt1 > m)
    {
      i = k;
      if (paramInt2 > n)
      {
        paramInt2 /= 2;
        k = paramInt1 / 2;
        paramInt1 = j;
        while ((paramInt2 / paramInt1 > n) && (k / paramInt1 > m)) {
          paramInt1 *= 2;
        }
        i = paramInt1;
        if (paramInt2 / paramInt1 == n)
        {
          i = paramInt1;
          if (k / paramInt1 == m) {
            i = paramInt1 * 2;
          }
        }
      }
    }
    return i;
  }
  
  public static Matrix b(Bitmap paramBitmap, Context paramContext)
  {
    paramBitmap = f(paramBitmap, paramContext);
    int i = ((Integer)first).intValue();
    int j = ((Integer)second).intValue();
    paramBitmap = new Matrix();
    paramBitmap.setTranslate(i * -1, j * -1);
    return paramBitmap;
  }
  
  @Deprecated
  @avl
  @cgb
  public static avo b(Context paramContext, byte[] paramArrayOfByte)
  {
    Object localObject1 = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, (BitmapFactory.Options)localObject1);
    int i = outWidth;
    int j = outHeight;
    if ((i <= 0) || (j <= 0)) {
      return new avo();
    }
    localObject1 = a(paramContext.getResources().getDisplayMetrics(), i, j);
    inBitmap = avq.a().a((BitmapFactory.Options)localObject1, true);
    boolean bool1;
    try
    {
      localObject2 = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, (BitmapFactory.Options)localObject1);
      if (inBitmap == null) {
        break label135;
      }
      bool1 = true;
    }
    catch (OutOfMemoryError paramContext)
    {
      for (;;)
      {
        nh.a("safeDecodeByteArray(Context, byte[], Bitmap.Config)", paramContext);
        return new avo();
        bool1 = false;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      label135:
      localObject2 = inBitmap;
      Timber.a("SnapMediaUtils", localIllegalArgumentException);
      Timber.f("SnapMediaUtils", "input width: %d height: %d exactDimensions: %b", new Object[] { Integer.valueOf(i), Integer.valueOf(j), Boolean.valueOf(true) });
      k = outWidth;
      m = outHeight;
      if (inPreferredConfig != null) {
        break label386;
      }
    }
    Object localObject2 = new avo((Bitmap)localObject2, bool1);
    return (avo)localObject2;
    int k;
    int m;
    localObject1 = "null";
    label217:
    Timber.f("SnapMediaUtils", "options width: %d height: %d config: %s", new Object[] { Integer.valueOf(k), Integer.valueOf(m), localObject1 });
    boolean bool2;
    if (localObject2 != null)
    {
      k = ((Bitmap)localObject2).getWidth();
      m = ((Bitmap)localObject2).getHeight();
      bool1 = ((Bitmap)localObject2).isMutable();
      bool2 = ((Bitmap)localObject2).isRecycled();
      if (((Bitmap)localObject2).getConfig() != null) {
        break label399;
      }
    }
    label386:
    label399:
    for (localObject1 = "null";; localObject1 = ((Bitmap)localObject2).getConfig().name())
    {
      Timber.f("SnapMediaUtils", "reused bitmap width: %d height: %d mutable: %b, recycled: %b config: %s", new Object[] { Integer.valueOf(k), Integer.valueOf(m), Boolean.valueOf(bool1), Boolean.valueOf(bool2), localObject1 });
      paramContext = a(paramContext.getResources().getDisplayMetrics(), i, j);
      inBitmap = null;
      paramContext = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, paramContext);
      if (paramContext == null) {
        break;
      }
      return new avo(paramContext, false);
      localObject1 = inPreferredConfig.name();
      break label217;
    }
  }
  
  public static byte[] b(@cgb Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 60, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  @cgb
  public static Bitmap c(@cgb Bitmap paramBitmap, @cgb Context paramContext)
  {
    int i = avh.a(PreferenceManager.getDefaultSharedPreferences(paramContext).getInt(SharedPreferenceKey.SNAP_CAPTURE_ROTATION.getKey(), 0)) - avh.a(avh.d(paramContext));
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    float f1 = Math.min(paramBitmap.getWidth(), paramBitmap.getHeight());
    float f2 = Math.max(paramBitmap.getWidth(), paramBitmap.getHeight());
    int j = avh.h(paramContext);
    float f3 = Math.min(widthPixels, j);
    float f4 = Math.max(widthPixels, j);
    if (f2 / f1 > f4 / f3) {}
    for (f1 = f3 / f1;; f1 = f4 / f2)
    {
      paramContext = new Matrix();
      if (i != 0) {
        paramContext.postRotate(i);
      }
      if (f1 != 1.0F) {
        paramContext.postScale(f1, f1);
      }
      if (!paramContext.isIdentity()) {
        break;
      }
      return paramBitmap;
    }
    return a(paramBitmap, paramContext);
  }
  
  public static byte[] c(Bitmap paramBitmap)
  {
    return a(paramBitmap, null);
  }
  
  public static Bitmap d(Bitmap paramBitmap, Context paramContext)
  {
    int i = avh.a(PreferenceManager.getDefaultSharedPreferences(paramContext).getInt(SharedPreferenceKey.SNAP_CAPTURE_ROTATION.getKey(), 0));
    int j = avh.a(avh.d(paramContext));
    if (i == j) {
      return paramBitmap;
    }
    paramContext = new Matrix();
    paramContext.postRotate(i - j);
    return a(paramBitmap, paramContext);
  }
  
  public static byte[] d(@cgb Bitmap paramBitmap)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    double d = Math.min(j / 256, i / 256);
    paramBitmap = Bitmap.createScaledBitmap(paramBitmap, (int)(i / d), (int)(j / d), true);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 60, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static Bitmap e(@cgb Bitmap paramBitmap)
  {
    if (paramBitmap.getWidth() / paramBitmap.getHeight() > 0.5633803F) {}
    for (float f = 1136.0F / paramBitmap.getHeight(); f <= 1.0F; f = 640.0F / paramBitmap.getWidth()) {
      return paramBitmap;
    }
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(f, f);
    return a(paramBitmap, localMatrix);
  }
  
  private static Bitmap e(Bitmap paramBitmap, Context paramContext)
  {
    Object localObject = paramContext.getResources().getDisplayMetrics();
    float f1 = widthPixels;
    float f2 = heightPixels;
    float f3 = paramBitmap.getWidth();
    float f4 = paramBitmap.getHeight();
    if (f4 / f3 > f2 / f1)
    {
      f1 /= f3;
      if (f1 != 1.0F) {
        break label74;
      }
    }
    for (;;)
    {
      return a(paramBitmap, paramContext);
      f1 = f2 / f4;
      break;
      label74:
      localObject = new Matrix();
      ((Matrix)localObject).postScale(f1, f1);
      localObject = a(paramBitmap, (Matrix)localObject);
      if (paramBitmap != localObject) {
        avq.a().a(paramBitmap);
      }
      paramBitmap = (Bitmap)localObject;
    }
  }
  
  @TargetApi(19)
  public static int f(@cgc Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return 0;
    }
    if (Build.VERSION.SDK_INT >= 19) {
      return paramBitmap.getAllocationByteCount();
    }
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }
  
  private static Pair<Integer, Integer> f(Bitmap paramBitmap, Context paramContext)
  {
    int k = 0;
    boolean bool = avh.e(SnapchatApplication.b());
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    int m = widthPixels;
    int n = avh.h(paramContext);
    int j = n;
    int i = m;
    if (!bool)
    {
      j = n;
      i = m;
      if (m < n)
      {
        i = avh.h(paramContext);
        j = widthPixels;
      }
    }
    if (i < paramBitmap.getWidth())
    {
      j = (paramBitmap.getWidth() - i) / 2;
      i = 0;
    }
    for (;;)
    {
      return Pair.create(Integer.valueOf(j), Integer.valueOf(i));
      if (j < paramBitmap.getHeight())
      {
        i = (paramBitmap.getHeight() - j) / 2;
        j = k;
      }
      else
      {
        i = 0;
        j = k;
      }
    }
  }
  
  private static Bitmap g(@cgb Bitmap paramBitmap)
  {
    Bitmap localBitmap = Bitmap.createScaledBitmap(paramBitmap, 102, (int)(paramBitmap.getHeight() / paramBitmap.getWidth() * 102.0F), true);
    int i = localBitmap.getHeight() / 2 - localBitmap.getWidth() / 2;
    if (i >= 0) {}
    for (paramBitmap = Bitmap.createBitmap(localBitmap, 0, i, localBitmap.getWidth(), localBitmap.getWidth());; paramBitmap = Bitmap.createBitmap(localBitmap, -i, 0, localBitmap.getHeight(), localBitmap.getHeight()))
    {
      localBitmap.recycle();
      return paramBitmap;
    }
  }
}

/* Location:
 * Qualified Name:     aur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */