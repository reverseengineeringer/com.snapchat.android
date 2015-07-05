package org.apache.commons.lang3;

import java.io.Serializable;

public class ObjectUtils$Null
  implements Serializable
{
  private static final long serialVersionUID = 7092611880189329093L;
  
  private Object readResolve()
  {
    return ObjectUtils.NULL;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.ObjectUtils.Null
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */