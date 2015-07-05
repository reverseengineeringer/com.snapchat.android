package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class ConstructorConstructor
{
  private final Map<Type, InstanceCreator<?>> a;
  
  public ConstructorConstructor(Map<Type, InstanceCreator<?>> paramMap)
  {
    a = paramMap;
  }
  
  private <T> ObjectConstructor<T> a(final Class<? super T> paramClass)
  {
    try
    {
      paramClass = paramClass.getDeclaredConstructor(new Class[0]);
      if (!paramClass.isAccessible()) {
        paramClass.setAccessible(true);
      }
      paramClass = new ObjectConstructor()
      {
        public final T construct()
        {
          try
          {
            Object localObject = paramClass.newInstance(null);
            return (T)localObject;
          }
          catch (InstantiationException localInstantiationException)
          {
            throw new RuntimeException("Failed to invoke " + paramClass + " with no args", localInstantiationException);
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            throw new RuntimeException("Failed to invoke " + paramClass + " with no args", localInvocationTargetException.getTargetException());
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            throw new AssertionError(localIllegalAccessException);
          }
        }
      };
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  public final <T> ObjectConstructor<T> get(final TypeToken<T> paramTypeToken)
  {
    final Type localType = paramTypeToken.getType();
    final Class localClass = paramTypeToken.getRawType();
    paramTypeToken = (InstanceCreator)a.get(localType);
    Object localObject;
    if (paramTypeToken != null) {
      localObject = new ObjectConstructor()
      {
        public final T construct()
        {
          return (T)paramTypeToken.createInstance(localType);
        }
      };
    }
    do
    {
      return (ObjectConstructor<T>)localObject;
      paramTypeToken = (InstanceCreator)a.get(localClass);
      if (paramTypeToken != null) {
        new ObjectConstructor()
        {
          public final T construct()
          {
            return (T)paramTypeToken.createInstance(localType);
          }
        };
      }
      paramTypeToken = a(localClass);
      localObject = paramTypeToken;
    } while (paramTypeToken != null);
    if (Collection.class.isAssignableFrom(localClass)) {
      if (SortedSet.class.isAssignableFrom(localClass)) {
        paramTypeToken = new ObjectConstructor()
        {
          public final T construct()
          {
            return new TreeSet();
          }
        };
      }
    }
    for (;;)
    {
      localObject = paramTypeToken;
      if (paramTypeToken != null) {
        break;
      }
      new ObjectConstructor()
      {
        private final UnsafeAllocator d = UnsafeAllocator.create();
        
        public final T construct()
        {
          try
          {
            Object localObject = d.newInstance(localClass);
            return (T)localObject;
          }
          catch (Exception localException)
          {
            throw new RuntimeException("Unable to invoke no-args constructor for " + localType + ". Register an InstanceCreator with Gson for this type may fix this problem.", localException);
          }
        }
      };
      if (EnumSet.class.isAssignableFrom(localClass))
      {
        paramTypeToken = new ObjectConstructor()
        {
          public final T construct()
          {
            if ((localType instanceof ParameterizedType))
            {
              Type localType = ((ParameterizedType)localType).getActualTypeArguments()[0];
              if ((localType instanceof Class)) {
                return EnumSet.noneOf((Class)localType);
              }
              throw new JsonIOException("Invalid EnumSet type: " + localType.toString());
            }
            throw new JsonIOException("Invalid EnumSet type: " + localType.toString());
          }
        };
      }
      else if (Set.class.isAssignableFrom(localClass))
      {
        paramTypeToken = new ObjectConstructor()
        {
          public final T construct()
          {
            return new LinkedHashSet();
          }
        };
      }
      else if (Queue.class.isAssignableFrom(localClass))
      {
        paramTypeToken = new ObjectConstructor()
        {
          public final T construct()
          {
            return new LinkedList();
          }
        };
      }
      else
      {
        paramTypeToken = new ObjectConstructor()
        {
          public final T construct()
          {
            return new ArrayList();
          }
        };
        continue;
        if (Map.class.isAssignableFrom(localClass))
        {
          if (SortedMap.class.isAssignableFrom(localClass)) {
            paramTypeToken = new ObjectConstructor()
            {
              public final T construct()
              {
                return new TreeMap();
              }
            };
          } else if (((localType instanceof ParameterizedType)) && (!String.class.isAssignableFrom(TypeToken.get(((ParameterizedType)localType).getActualTypeArguments()[0]).getRawType()))) {
            paramTypeToken = new ObjectConstructor()
            {
              public final T construct()
              {
                return new LinkedHashMap();
              }
            };
          } else {
            paramTypeToken = new ObjectConstructor()
            {
              public final T construct()
              {
                return new LinkedTreeMap();
              }
            };
          }
        }
        else {
          paramTypeToken = null;
        }
      }
    }
  }
  
  public final String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.ConstructorConstructor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */