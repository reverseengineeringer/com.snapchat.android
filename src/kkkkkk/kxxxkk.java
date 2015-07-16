package kkkkkk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;

public final class kxxxkk
{
  public static int b044E044Eююю044E = 0;
  public static int b044Eю044Eюю044E = 2;
  public static int bю044Eююю044E = 62;
  public static int bюю044Eюю044E = 1;
  
  /* Error */
  public kxxxkk()
  {
    // Byte code:
    //   0: getstatic 28	kkkkkk/kxxxkk:bю044Eююю044E	I
    //   3: getstatic 30	kkkkkk/kxxxkk:bюю044Eюю044E	I
    //   6: iadd
    //   7: getstatic 28	kkkkkk/kxxxkk:bю044Eююю044E	I
    //   10: imul
    //   11: getstatic 32	kkkkkk/kxxxkk:b044Eю044Eюю044E	I
    //   14: irem
    //   15: getstatic 34	kkkkkk/kxxxkk:b044E044Eююю044E	I
    //   18: if_icmpeq +13 -> 31
    //   21: bipush 47
    //   23: putstatic 28	kkkkkk/kxxxkk:bю044Eююю044E	I
    //   26: bipush 65
    //   28: putstatic 34	kkkkkk/kxxxkk:b044E044Eююю044E	I
    //   31: iconst_1
    //   32: tableswitch	default:+24->56, 0:+-1->31, 1:+95->127
    //   56: getstatic 28	kkkkkk/kxxxkk:bю044Eююю044E	I
    //   59: istore_1
    //   60: iload_1
    //   61: getstatic 30	kkkkkk/kxxxkk:bюю044Eюю044E	I
    //   64: iload_1
    //   65: iadd
    //   66: imul
    //   67: getstatic 32	kkkkkk/kxxxkk:b044Eю044Eюю044E	I
    //   70: irem
    //   71: tableswitch	default:+17->88, 0:+28->99
    //   88: bipush 93
    //   90: putstatic 28	kkkkkk/kxxxkk:bю044Eююю044E	I
    //   93: invokestatic 38	kkkkkk/kxxxkk:b041EО041EООО	()I
    //   96: putstatic 34	kkkkkk/kxxxkk:b044E044Eююю044E	I
    //   99: iconst_1
    //   100: tableswitch	default:+24->124, 0:+-69->31, 1:+27->127
    //   124: goto -68 -> 56
    //   127: aload_0
    //   128: invokespecial 40	java/lang/Object:<init>	()V
    //   131: return
    //   132: astore_2
    //   133: aload_2
    //   134: athrow
    //   135: astore_2
    //   136: aload_2
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	kxxxkk
    //   59	8	1	i	int
    //   132	2	2	localException1	Exception
    //   135	2	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	26	132	java/lang/Exception
    //   127	131	132	java/lang/Exception
    //   26	31	135	java/lang/Exception
  }
  
  private static Field b041E041E041EООО(Object paramObject, String paramString)
    throws NoSuchFieldException
  {
    Class localClass = paramObject.getClass();
    while (localClass != null) {
      try
      {
        Field localField = localClass.getDeclaredField(paramString);
        if (!localField.isAccessible()) {
          localField.setAccessible(true);
        }
        return localField;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        localClass = localClass.getSuperclass();
      }
    }
    paramString = new StringBuilder().append(kkxkkk.bК041A041A041AКК("¦ÉÅÌÄ", '0', '\006')).append(paramString);
    if ((bю044Eююю044E + bОО041EООО()) * bю044Eююю044E % b044Eю044Eюю044E != b044E044Eююю044E)
    {
      bю044Eююю044E = b041EО041EООО();
      b044E044Eююю044E = b041EО041EООО();
      if ((bю044Eююю044E + bюю044Eюю044E) * bю044Eююю044E % b044Eю044Eюю044E != b044E044Eююю044E)
      {
        bю044Eююю044E = b041EО041EООО();
        b044E044Eююю044E = 86;
      }
    }
    switch (0)
    {
    case 1: 
    default: 
      for (;;)
      {
        switch (1)
        {
        }
      }
    }
    throw new NoSuchFieldException(kkxkkk.b041AККК041AК("DDDD", '', 'v', '\000') + paramObject.getClass());
  }
  
  public static int b041EО041EООО()
  {
    return 46;
  }
  
  public static ApplicationInfo b041EОО041EОО(Context paramContext)
  {
    throw new Runtime("d2j fail translate: java.lang.IndexOutOfBoundsException: fromIndex < 0: -1\n\tat java.util.BitSet.nextSetBit(BitSet.java:709)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.makeSureAllElementAreAssigned(FillArrayTransformer.java:505)\n\tat com.googlecode.dex2jar.ir.ts.array.FillArrayTransformer.transformReportChanged(FillArrayTransformer.java:123)\n\tat com.googlecode.dex2jar.ir.ts.StatedTransformer.transform(StatedTransformer.java:10)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:149)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  private static void bО041E041EООО(Object paramObject, String paramString, Object[] paramArrayOfObject)
    throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException
  {
    paramString = b041E041E041EООО(paramObject, paramString);
    Object[] arrayOfObject1 = (Object[])paramString.get(paramObject);
    Object[] arrayOfObject2 = (Object[])Array.newInstance(arrayOfObject1.getClass().getComponentType(), arrayOfObject1.length + paramArrayOfObject.length);
    if ((bю044Eююю044E + bюю044Eюю044E) * bю044Eююю044E % b044Eю044Eюю044E != b044E044Eююю044E)
    {
      bю044Eююю044E = 94;
      b044E044Eююю044E = b041EО041EООО();
    }
    switch (1)
    {
    case 0: 
    default: 
      for (;;)
      {
        switch (0)
        {
        }
      }
    }
    System.arraycopy(arrayOfObject1, 0, arrayOfObject2, 0, arrayOfObject1.length);
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject2, arrayOfObject1.length, paramArrayOfObject.length);
    paramString.set(paramObject, arrayOfObject2);
  }
  
  public static void bО041EО041EОО(ClassLoader paramClassLoader, File paramFile, List<File> paramList)
    throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException
  {
    try
    {
      if (!paramList.isEmpty())
      {
        if (Build.VERSION.SDK_INT >= 19)
        {
          xxxkkk.b041DН041DН041D041D(paramClassLoader, paramList, paramFile);
          return;
        }
        if (Build.VERSION.SDK_INT >= 14)
        {
          kxxkkk.b041D041D041D041DН041D(paramClassLoader, paramList, paramFile);
          switch (0)
          {
          case 1: 
          default: 
            for (;;)
            {
              switch (1)
              {
              }
            }
          }
          try
          {
            int i = bю044Eююю044E;
            int j = bОО041EООО();
            if ((bю044Eююю044E + bОО041EООО()) * bю044Eююю044E % b044Eю044Eюю044E != b044E044Eююю044E)
            {
              bю044Eююю044E = 53;
              b044E044Eююю044E = 33;
            }
            int k = bю044Eююю044E;
            int m = b044Eю044Eюю044E;
            int n = b044E044Eююю044E;
            if ((i + j) * k % m == n) {
              return;
            }
            bю044Eююю044E = b041EО041EООО();
            b044E044Eююю044E = b041EО041EООО();
            return;
          }
          catch (Exception paramClassLoader)
          {
            throw paramClassLoader;
          }
        }
        xkkkkk.bН041DН041D041D041D(paramClassLoader, paramList);
        return;
      }
    }
    catch (Exception paramClassLoader)
    {
      throw paramClassLoader;
    }
  }
  
  public static int bОО041EООО()
  {
    return 1;
  }
  
  private static Method bООО041EОО(Object paramObject, String paramString, Class<?>... paramVarArgs)
    throws NoSuchMethodException
  {
    try
    {
      Object localObject = paramObject.getClass();
      try
      {
        throw new NullPointerException();
      }
      catch (Exception localException1)
      {
        bю044Eююю044E = 81;
        while (localObject != null) {
          try
          {
            Method localMethod = ((Class)localObject).getDeclaredMethod(paramString, paramVarArgs);
            if (!localMethod.isAccessible()) {
              localMethod.setAccessible(true);
            }
            return localMethod;
          }
          catch (NoSuchMethodException localNoSuchMethodException)
          {
            localObject = ((Class)localObject).getSuperclass();
            try
            {
              throw new NullPointerException();
            }
            catch (Exception localException2)
            {
              bю044Eююю044E = b041EО041EООО();
            }
          }
        }
        localObject = new StringBuilder();
        try
        {
          localObject = ((StringBuilder)localObject).append(kkxkkk.bК041A041A041AКК("ìĄēćĎă¿", '', '\003'));
          paramString = ((StringBuilder)localObject).append(paramString).append(kkxkkk.bК041A041A041AКК("ĄśōŘŌĄŔŅŖŅőŉŘŉŖŗĄ", 'r', '\006')).append(Arrays.asList(paramVarArgs));
          paramObject = new NoSuchMethodException(kkxkkk.bК041A041A041AКК("ȘɦɧɬȘɞɧɭɦɜȘɡɦȘ", 'ü', '\006') + paramObject.getClass());
        }
        catch (Exception paramObject)
        {
          throw ((Throwable)paramObject);
        }
        throw ((Throwable)paramObject);
      }
      switch (1)
      {
      }
    }
    catch (Exception paramObject)
    {
      throw ((Throwable)paramObject);
    }
    for (;;)
    {
      switch (0)
      {
      }
    }
  }
}

/* Location:
 * Qualified Name:     kkkkkk.kxxxkk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */