package com.snapchat.android.analytics.handledexceptions;

import java.util.Iterator;
import java.util.List;

public final class IncompatibleVideoRecordedException
  extends Exception
{
  public IncompatibleVideoRecordedException(List<IncompatibleVideoType> paramList)
  {
    super(a(paramList));
  }
  
  private static String a(List<IncompatibleVideoType> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder("Incompatibilities: ");
    Iterator localIterator = paramList.iterator();
    for (paramList = ""; localIterator.hasNext(); paramList = " + ")
    {
      IncompatibleVideoType localIncompatibleVideoType = (IncompatibleVideoType)localIterator.next();
      localStringBuilder.append(paramList);
      localStringBuilder.append(localIncompatibleVideoType.name());
    }
    return localStringBuilder.toString();
  }
  
  public static enum IncompatibleVideoType
  {
    AMR_NB,  H263;
    
    private IncompatibleVideoType() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.handledexceptions.IncompatibleVideoRecordedException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */