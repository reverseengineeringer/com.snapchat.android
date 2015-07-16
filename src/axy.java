import java.io.File;

public final class axy
{
  private static final long MIN_NUM_FREE_BYTES = 10L;
  public static File sExternalCacheDirectory;
  public static File sInternalCacheDirectory;
  
  public static void a(File paramFile1, File paramFile2)
  {
    sInternalCacheDirectory = paramFile1;
    sExternalCacheDirectory = paramFile2;
  }
}

/* Location:
 * Qualified Name:     axy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */