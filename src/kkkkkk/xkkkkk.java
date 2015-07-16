package kkkkkk;

import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;
import java.util.ListIterator;
import java.util.zip.ZipFile;

public final class xkkkkk
{
  public static int b043A043A043Aкк043A = 2;
  public static int b043Aк043Aкк043A = 11;
  public static int bк043A043Aкк043A = 1;
  
  public static int b041D041DН041D041D041D()
  {
    return 46;
  }
  
  public static int b041DН041D041D041D041D()
  {
    return 0;
  }
  
  private static void bН041D041D041D041D041D(ClassLoader paramClassLoader, List<File> paramList)
    throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException
  {
    int i = paramList.size();
    Field localField = kxxxkk.b041EООООО(paramClassLoader, kkxkkk.b041AККК041AК("VGZN", '\035', '\003', '\002'));
    StringBuilder localStringBuilder = new StringBuilder((String)localField.get(paramClassLoader));
    String[] arrayOfString = new String[i];
    File[] arrayOfFile = new File[i];
    ZipFile[] arrayOfZipFile = new ZipFile[i];
    DexFile[] arrayOfDexFile = new DexFile[i];
    paramList = paramList.listIterator();
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      String str = localFile.getAbsolutePath();
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
      localStringBuilder.append(':').append(str);
      i = paramList.previousIndex();
      arrayOfString[i] = str;
      arrayOfFile[i] = localFile;
      arrayOfZipFile[i] = new ZipFile(localFile);
      arrayOfDexFile[i] = DexFile.loadDex(str, str + kkxkkk.bК041A041A041AКК("｢ﾘﾙﾬ", 'Ì', '\001'), 0);
      i = b043Aк043Aкк043A;
      switch (i * (bк043A043Aкк043A + i) % b043A043A043Aкк043A)
      {
      }
      b043Aк043Aкк043A = 99;
      bк043A043Aкк043A = 40;
      if ((b043Aк043Aкк043A + bк043A043Aкк043A) * b043Aк043Aкк043A % b043A043A043Aкк043A != b041DН041D041D041D041D())
      {
        b043Aк043Aкк043A = 2;
        bк043A043Aкк043A = b041D041DН041D041D041D();
      }
    }
    localField.set(paramClassLoader, localStringBuilder.toString());
    kxxxkk.bО041EОООО(paramClassLoader, kkxkkk.bК041A041A041AКК("'\n\033.\"-", 'F', '\001'), arrayOfString);
    kxxxkk.bО041EОООО(paramClassLoader, kkxkkk.bК041A041A041AКК("ȸȑȴȷȰȾ", '', '\002'), arrayOfFile);
    kxxxkk.bО041EОООО(paramClassLoader, kkxkkk.bК041A041A041AКК("ÜÉØßâ", 'o', '\003'), arrayOfZipFile);
    kxxxkk.bО041EОООО(paramClassLoader, kkxkkk.b041AККК041AК("＜ﻳ４ＧＢ", 'Ó', '~', '\001'), arrayOfDexFile);
  }
  
  public static int bНН041D041D041D041D()
  {
    return 1;
  }
}

/* Location:
 * Qualified Name:     kkkkkk.xkkkkk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */