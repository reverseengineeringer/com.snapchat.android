package com.flurry.sdk;

import java.io.File;
import java.io.FilenameFilter;

final class ea$1
  implements FilenameFilter
{
  public final boolean accept(File paramFile, String paramString)
  {
    return paramString.startsWith(".flurryagent.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ea.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */