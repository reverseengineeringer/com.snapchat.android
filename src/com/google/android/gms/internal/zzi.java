package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public abstract class zzi
  extends zzh
{
  private static long startTime = 0L;
  private static Method zzkA;
  private static Method zzkB;
  private static Method zzkC;
  private static Method zzkD;
  private static Method zzkE;
  private static Method zzkF;
  private static Method zzkG;
  private static Method zzkH;
  private static String zzkI;
  private static String zzkJ;
  private static String zzkK;
  private static zzo zzkL;
  static boolean zzkM = false;
  private static Method zzkz;
  
  protected zzi(Context paramContext, zzm paramzzm, zzn paramzzn)
  {
    super(paramContext, paramzzm, paramzzn);
  }
  
  static String zza(Context paramContext, zzm paramzzm)
  {
    if (zzkJ != null) {
      return zzkJ;
    }
    if (zzkC == null) {
      throw new zza();
    }
    try
    {
      paramContext = (ByteBuffer)zzkC.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        throw new zza();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new zza(paramContext);
      paramContext = paramzzm.zza(paramContext.array(), true);
      zzkJ = paramContext;
      return paramContext;
    }
    catch (InvocationTargetException paramContext)
    {
      throw new zza(paramContext);
    }
  }
  
  static ArrayList<Long> zza(MotionEvent paramMotionEvent, DisplayMetrics paramDisplayMetrics)
  {
    if ((zzkD == null) || (paramMotionEvent == null)) {
      throw new zza();
    }
    try
    {
      paramMotionEvent = (ArrayList)zzkD.invoke(null, new Object[] { paramMotionEvent, paramDisplayMetrics });
      return paramMotionEvent;
    }
    catch (IllegalAccessException paramMotionEvent)
    {
      throw new zza(paramMotionEvent);
    }
    catch (InvocationTargetException paramMotionEvent)
    {
      throw new zza(paramMotionEvent);
    }
  }
  
  /* Error */
  protected static void zza(String paramString, Context paramContext, zzm paramzzm)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 33	com/google/android/gms/internal/zzi:zzkM	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +36 -> 44
    //   11: new 83	com/google/android/gms/internal/zzo
    //   14: dup
    //   15: aload_2
    //   16: aconst_null
    //   17: invokespecial 86	com/google/android/gms/internal/zzo:<init>	(Lcom/google/android/gms/internal/zzm;Ljava/security/SecureRandom;)V
    //   20: putstatic 88	com/google/android/gms/internal/zzi:zzkL	Lcom/google/android/gms/internal/zzo;
    //   23: aload_0
    //   24: putstatic 90	com/google/android/gms/internal/zzi:zzkI	Ljava/lang/String;
    //   27: aload_1
    //   28: invokestatic 94	com/google/android/gms/internal/zzi:zzg	(Landroid/content/Context;)V
    //   31: invokestatic 98	com/google/android/gms/internal/zzi:zzw	()Ljava/lang/Long;
    //   34: invokevirtual 104	java/lang/Long:longValue	()J
    //   37: putstatic 31	com/google/android/gms/internal/zzi:startTime	J
    //   40: iconst_1
    //   41: putstatic 33	com/google/android/gms/internal/zzi:zzkM	Z
    //   44: ldc 2
    //   46: monitorexit
    //   47: return
    //   48: astore_0
    //   49: ldc 2
    //   51: monitorexit
    //   52: aload_0
    //   53: athrow
    //   54: astore_0
    //   55: goto -11 -> 44
    //   58: astore_0
    //   59: goto -15 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	paramString	String
    //   0	62	1	paramContext	Context
    //   0	62	2	paramzzm	zzm
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	7	48	finally
    //   11	44	48	finally
    //   11	44	54	java/lang/UnsupportedOperationException
    //   11	44	58	com/google/android/gms/internal/zzi$zza
  }
  
  static String zzb(Context paramContext, zzm paramzzm)
  {
    if (zzkK != null) {
      return zzkK;
    }
    if (zzkF == null) {
      throw new zza();
    }
    try
    {
      paramContext = (ByteBuffer)zzkF.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        throw new zza();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new zza(paramContext);
      paramContext = paramzzm.zza(paramContext.array(), true);
      zzkK = paramContext;
      return paramContext;
    }
    catch (InvocationTargetException paramContext)
    {
      throw new zza(paramContext);
    }
  }
  
  private static String zzb(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      paramArrayOfByte = new String(zzkL.zzc(paramArrayOfByte, paramString), "UTF-8");
      return paramArrayOfByte;
    }
    catch (zzo.zza paramArrayOfByte)
    {
      throw new zza(paramArrayOfByte);
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new zza(paramArrayOfByte);
    }
  }
  
  static String zzd(Context paramContext)
  {
    if (zzkE == null) {
      throw new zza();
    }
    try
    {
      paramContext = (String)zzkE.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        throw new zza();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new zza(paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      throw new zza(paramContext);
    }
    return paramContext;
  }
  
  static ArrayList<Long> zze(Context paramContext)
  {
    if (zzkG == null) {
      throw new zza();
    }
    try
    {
      paramContext = (ArrayList)zzkG.invoke(null, new Object[] { paramContext });
      if ((paramContext == null) || (paramContext.size() != 2)) {
        throw new zza();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new zza(paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      throw new zza(paramContext);
    }
    return paramContext;
  }
  
  static int[] zzf(Context paramContext)
  {
    if (zzkH == null) {
      throw new zza();
    }
    try
    {
      paramContext = (int[])zzkH.invoke(null, new Object[] { paramContext });
      return paramContext;
    }
    catch (IllegalAccessException paramContext)
    {
      throw new zza(paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      throw new zza(paramContext);
    }
  }
  
  private static void zzg(Context paramContext)
  {
    try
    {
      localObject1 = zzkL.zzb(zzq.getKey());
      localObject2 = zzkL.zzc((byte[])localObject1, zzq.zzE());
      localFile2 = paramContext.getCacheDir();
      localFile1 = localFile2;
      if (localFile2 == null)
      {
        localFile2 = paramContext.getDir("dex", 0);
        localFile1 = localFile2;
        if (localFile2 == null) {
          throw new zza();
        }
      }
    }
    catch (FileNotFoundException paramContext)
    {
      Object localObject1;
      Object localObject2;
      File localFile1;
      throw new zza(paramContext);
      File localFile2 = File.createTempFile("ads", ".jar", localFile1);
      Object localObject3 = new FileOutputStream(localFile2);
      ((FileOutputStream)localObject3).write((byte[])localObject2, 0, localObject2.length);
      ((FileOutputStream)localObject3).close();
      try
      {
        Object localObject4 = new DexClassLoader(localFile2.getAbsolutePath(), localFile1.getAbsolutePath(), null, paramContext.getClassLoader());
        paramContext = ((DexClassLoader)localObject4).loadClass(zzb((byte[])localObject1, zzq.zzH()));
        localObject2 = ((DexClassLoader)localObject4).loadClass(zzb((byte[])localObject1, zzq.zzT()));
        localObject3 = ((DexClassLoader)localObject4).loadClass(zzb((byte[])localObject1, zzq.zzN()));
        Class localClass1 = ((DexClassLoader)localObject4).loadClass(zzb((byte[])localObject1, zzq.zzL()));
        Class localClass2 = ((DexClassLoader)localObject4).loadClass(zzb((byte[])localObject1, zzq.zzV()));
        Class localClass3 = ((DexClassLoader)localObject4).loadClass(zzb((byte[])localObject1, zzq.zzJ()));
        Class localClass4 = ((DexClassLoader)localObject4).loadClass(zzb((byte[])localObject1, zzq.zzR()));
        Class localClass5 = ((DexClassLoader)localObject4).loadClass(zzb((byte[])localObject1, zzq.zzP()));
        localObject4 = ((DexClassLoader)localObject4).loadClass(zzb((byte[])localObject1, zzq.zzF()));
        zzkz = paramContext.getMethod(zzb((byte[])localObject1, zzq.zzI()), new Class[0]);
        zzkA = ((Class)localObject2).getMethod(zzb((byte[])localObject1, zzq.zzU()), new Class[0]);
        zzkB = ((Class)localObject3).getMethod(zzb((byte[])localObject1, zzq.zzO()), new Class[0]);
        zzkC = localClass1.getMethod(zzb((byte[])localObject1, zzq.zzM()), new Class[] { Context.class });
        zzkD = localClass2.getMethod(zzb((byte[])localObject1, zzq.zzW()), new Class[] { MotionEvent.class, DisplayMetrics.class });
        zzkE = localClass3.getMethod(zzb((byte[])localObject1, zzq.zzK()), new Class[] { Context.class });
        zzkF = localClass4.getMethod(zzb((byte[])localObject1, zzq.zzS()), new Class[] { Context.class });
        zzkG = localClass5.getMethod(zzb((byte[])localObject1, zzq.zzQ()), new Class[] { Context.class });
        zzkH = ((Class)localObject4).getMethod(zzb((byte[])localObject1, zzq.zzG()), new Class[] { Context.class });
        return;
      }
      finally
      {
        localObject1 = localFile2.getName();
        localFile2.delete();
        new File(localFile1, ((String)localObject1).replace(".jar", ".dex")).delete();
      }
    }
    catch (IOException paramContext)
    {
      throw new zza(paramContext);
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new zza(paramContext);
    }
    catch (zzo.zza paramContext)
    {
      throw new zza(paramContext);
    }
    catch (NoSuchMethodException paramContext)
    {
      throw new zza(paramContext);
    }
    catch (NullPointerException paramContext)
    {
      throw new zza(paramContext);
    }
  }
  
  static String zzv()
  {
    if (zzkI == null) {
      throw new zza();
    }
    return zzkI;
  }
  
  static Long zzw()
  {
    if (zzkz == null) {
      throw new zza();
    }
    try
    {
      Long localLong = (Long)zzkz.invoke(null, new Object[0]);
      return localLong;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new zza(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new zza(localInvocationTargetException);
    }
  }
  
  static String zzx()
  {
    if (zzkB == null) {
      throw new zza();
    }
    try
    {
      String str = (String)zzkB.invoke(null, new Object[0]);
      return str;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new zza(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new zza(localInvocationTargetException);
    }
  }
  
  static Long zzy()
  {
    if (zzkA == null) {
      throw new zza();
    }
    try
    {
      Long localLong = (Long)zzkA.invoke(null, new Object[0]);
      return localLong;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new zza(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new zza(localInvocationTargetException);
    }
  }
  
  /* Error */
  protected void zzb(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: invokestatic 309	com/google/android/gms/internal/zzi:zzx	()Ljava/lang/String;
    //   5: invokevirtual 312	com/google/android/gms/internal/zzi:zza	(ILjava/lang/String;)V
    //   8: aload_0
    //   9: iconst_2
    //   10: invokestatic 314	com/google/android/gms/internal/zzi:zzv	()Ljava/lang/String;
    //   13: invokevirtual 312	com/google/android/gms/internal/zzi:zza	(ILjava/lang/String;)V
    //   16: invokestatic 98	com/google/android/gms/internal/zzi:zzw	()Ljava/lang/Long;
    //   19: invokevirtual 104	java/lang/Long:longValue	()J
    //   22: lstore_2
    //   23: aload_0
    //   24: bipush 25
    //   26: lload_2
    //   27: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   30: getstatic 31	com/google/android/gms/internal/zzi:startTime	J
    //   33: lconst_0
    //   34: lcmp
    //   35: ifeq +23 -> 58
    //   38: aload_0
    //   39: bipush 17
    //   41: lload_2
    //   42: getstatic 31	com/google/android/gms/internal/zzi:startTime	J
    //   45: lsub
    //   46: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   49: aload_0
    //   50: bipush 23
    //   52: getstatic 31	com/google/android/gms/internal/zzi:startTime	J
    //   55: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   58: aload_1
    //   59: invokestatic 319	com/google/android/gms/internal/zzi:zze	(Landroid/content/Context;)Ljava/util/ArrayList;
    //   62: astore 4
    //   64: aload_0
    //   65: bipush 31
    //   67: aload 4
    //   69: iconst_0
    //   70: invokevirtual 323	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   73: checkcast 100	java/lang/Long
    //   76: invokevirtual 104	java/lang/Long:longValue	()J
    //   79: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   82: aload_0
    //   83: bipush 32
    //   85: aload 4
    //   87: iconst_1
    //   88: invokevirtual 323	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   91: checkcast 100	java/lang/Long
    //   94: invokevirtual 104	java/lang/Long:longValue	()J
    //   97: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   100: aload_0
    //   101: bipush 33
    //   103: invokestatic 325	com/google/android/gms/internal/zzi:zzy	()Ljava/lang/Long;
    //   106: invokevirtual 104	java/lang/Long:longValue	()J
    //   109: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   112: aload_0
    //   113: bipush 27
    //   115: aload_1
    //   116: aload_0
    //   117: getfield 329	com/google/android/gms/internal/zzi:zzkx	Lcom/google/android/gms/internal/zzm;
    //   120: invokestatic 331	com/google/android/gms/internal/zzi:zza	(Landroid/content/Context;Lcom/google/android/gms/internal/zzm;)Ljava/lang/String;
    //   123: invokevirtual 312	com/google/android/gms/internal/zzi:zza	(ILjava/lang/String;)V
    //   126: aload_0
    //   127: bipush 29
    //   129: aload_1
    //   130: aload_0
    //   131: getfield 329	com/google/android/gms/internal/zzi:zzkx	Lcom/google/android/gms/internal/zzm;
    //   134: invokestatic 333	com/google/android/gms/internal/zzi:zzb	(Landroid/content/Context;Lcom/google/android/gms/internal/zzm;)Ljava/lang/String;
    //   137: invokevirtual 312	com/google/android/gms/internal/zzi:zza	(ILjava/lang/String;)V
    //   140: aload_1
    //   141: invokestatic 335	com/google/android/gms/internal/zzi:zzf	(Landroid/content/Context;)[I
    //   144: astore_1
    //   145: aload_0
    //   146: iconst_5
    //   147: aload_1
    //   148: iconst_0
    //   149: iaload
    //   150: i2l
    //   151: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   154: aload_0
    //   155: bipush 6
    //   157: aload_1
    //   158: iconst_1
    //   159: iaload
    //   160: i2l
    //   161: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   164: return
    //   165: astore_1
    //   166: return
    //   167: astore_1
    //   168: return
    //   169: astore 4
    //   171: goto -31 -> 140
    //   174: astore 4
    //   176: goto -50 -> 126
    //   179: astore 4
    //   181: goto -69 -> 112
    //   184: astore 4
    //   186: goto -86 -> 100
    //   189: astore 4
    //   191: goto -133 -> 58
    //   194: astore 4
    //   196: goto -180 -> 16
    //   199: astore 4
    //   201: goto -193 -> 8
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	204	0	this	zzi
    //   0	204	1	paramContext	Context
    //   22	20	2	l	long
    //   62	24	4	localArrayList	ArrayList
    //   169	1	4	localzza1	zza
    //   174	1	4	localzza2	zza
    //   179	1	4	localzza3	zza
    //   184	1	4	localzza4	zza
    //   189	1	4	localzza5	zza
    //   194	1	4	localzza6	zza
    //   199	1	4	localzza7	zza
    // Exception table:
    //   from	to	target	type
    //   0	8	165	java/io/IOException
    //   8	16	165	java/io/IOException
    //   16	58	165	java/io/IOException
    //   58	100	165	java/io/IOException
    //   100	112	165	java/io/IOException
    //   112	126	165	java/io/IOException
    //   126	140	165	java/io/IOException
    //   140	164	165	java/io/IOException
    //   140	164	167	com/google/android/gms/internal/zzi$zza
    //   126	140	169	com/google/android/gms/internal/zzi$zza
    //   112	126	174	com/google/android/gms/internal/zzi$zza
    //   100	112	179	com/google/android/gms/internal/zzi$zza
    //   58	100	184	com/google/android/gms/internal/zzi$zza
    //   16	58	189	com/google/android/gms/internal/zzi$zza
    //   8	16	194	com/google/android/gms/internal/zzi$zza
    //   0	8	199	com/google/android/gms/internal/zzi$zza
  }
  
  /* Error */
  protected void zzc(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_2
    //   2: invokestatic 314	com/google/android/gms/internal/zzi:zzv	()Ljava/lang/String;
    //   5: invokevirtual 312	com/google/android/gms/internal/zzi:zza	(ILjava/lang/String;)V
    //   8: aload_0
    //   9: iconst_1
    //   10: invokestatic 309	com/google/android/gms/internal/zzi:zzx	()Ljava/lang/String;
    //   13: invokevirtual 312	com/google/android/gms/internal/zzi:zza	(ILjava/lang/String;)V
    //   16: aload_0
    //   17: bipush 25
    //   19: invokestatic 98	com/google/android/gms/internal/zzi:zzw	()Ljava/lang/Long;
    //   22: invokevirtual 104	java/lang/Long:longValue	()J
    //   25: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   28: aload_0
    //   29: getfield 339	com/google/android/gms/internal/zzi:zzkv	Landroid/view/MotionEvent;
    //   32: aload_0
    //   33: getfield 343	com/google/android/gms/internal/zzi:zzkw	Landroid/util/DisplayMetrics;
    //   36: invokestatic 345	com/google/android/gms/internal/zzi:zza	(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    //   39: astore_1
    //   40: aload_0
    //   41: bipush 14
    //   43: aload_1
    //   44: iconst_0
    //   45: invokevirtual 323	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   48: checkcast 100	java/lang/Long
    //   51: invokevirtual 104	java/lang/Long:longValue	()J
    //   54: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   57: aload_0
    //   58: bipush 15
    //   60: aload_1
    //   61: iconst_1
    //   62: invokevirtual 323	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   65: checkcast 100	java/lang/Long
    //   68: invokevirtual 104	java/lang/Long:longValue	()J
    //   71: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   74: aload_1
    //   75: invokevirtual 137	java/util/ArrayList:size	()I
    //   78: iconst_3
    //   79: if_icmplt +20 -> 99
    //   82: aload_0
    //   83: bipush 16
    //   85: aload_1
    //   86: iconst_2
    //   87: invokevirtual 323	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   90: checkcast 100	java/lang/Long
    //   93: invokevirtual 104	java/lang/Long:longValue	()J
    //   96: invokevirtual 317	com/google/android/gms/internal/zzi:zza	(IJ)V
    //   99: return
    //   100: astore_1
    //   101: return
    //   102: astore_1
    //   103: return
    //   104: astore_1
    //   105: goto -77 -> 28
    //   108: astore_1
    //   109: goto -93 -> 16
    //   112: astore_1
    //   113: goto -105 -> 8
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	zzi
    //   0	116	1	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   0	8	100	java/io/IOException
    //   8	16	100	java/io/IOException
    //   16	28	100	java/io/IOException
    //   28	99	100	java/io/IOException
    //   28	99	102	com/google/android/gms/internal/zzi$zza
    //   16	28	104	com/google/android/gms/internal/zzi$zza
    //   8	16	108	com/google/android/gms/internal/zzi$zza
    //   0	8	112	com/google/android/gms/internal/zzi$zza
  }
  
  static class zza
    extends Exception
  {
    public zza() {}
    
    public zza(Throwable paramThrowable)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */