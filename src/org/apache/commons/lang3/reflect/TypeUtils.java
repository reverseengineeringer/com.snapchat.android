package org.apache.commons.lang3.reflect;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;
import org.apache.commons.lang3.builder.Builder;

public class TypeUtils
{
  public static final WildcardType WILDCARD_ALL = wildcardType().withUpperBounds(new Type[] { Object.class }).build();
  
  private static StringBuilder appendAllTo(StringBuilder paramStringBuilder, String paramString, Type... paramVarArgs)
  {
    Validate.notEmpty(Validate.noNullElements(paramVarArgs));
    if (paramVarArgs.length > 0)
    {
      paramStringBuilder.append(toString(paramVarArgs[0]));
      int i = 1;
      while (i < paramVarArgs.length)
      {
        paramStringBuilder.append(paramString).append(toString(paramVarArgs[i]));
        i += 1;
      }
    }
    return paramStringBuilder;
  }
  
  private static String classToString(Class<?> paramClass)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramClass.getEnclosingClass() != null) {
      localStringBuilder.append(classToString(paramClass.getEnclosingClass())).append('.').append(paramClass.getSimpleName());
    }
    for (;;)
    {
      if (paramClass.getTypeParameters().length > 0)
      {
        localStringBuilder.append('<');
        appendAllTo(localStringBuilder, ", ", paramClass.getTypeParameters());
        localStringBuilder.append('>');
      }
      return localStringBuilder.toString();
      localStringBuilder.append(paramClass.getName());
    }
  }
  
  public static boolean containsTypeVariables(Type paramType)
  {
    if ((paramType instanceof TypeVariable)) {}
    label72:
    do
    {
      do
      {
        return true;
        if (!(paramType instanceof Class)) {
          break;
        }
      } while (((Class)paramType).getTypeParameters().length > 0);
      return false;
      if ((paramType instanceof ParameterizedType))
      {
        paramType = ((ParameterizedType)paramType).getActualTypeArguments();
        int j = paramType.length;
        int i = 0;
        for (;;)
        {
          if (i >= j) {
            break label72;
          }
          if (containsTypeVariables(paramType[i])) {
            break;
          }
          i += 1;
        }
        return false;
      }
      if (!(paramType instanceof WildcardType)) {
        break;
      }
      paramType = (WildcardType)paramType;
    } while ((containsTypeVariables(getImplicitLowerBounds(paramType)[0])) || (containsTypeVariables(getImplicitUpperBounds(paramType)[0])));
    return false;
    return false;
  }
  
  public static Map<TypeVariable<?>, Type> determineTypeArguments(Class<?> paramClass, ParameterizedType paramParameterizedType)
  {
    for (;;)
    {
      Validate.notNull(paramClass, "cls is null", new Object[0]);
      Validate.notNull(paramParameterizedType, "superType is null", new Object[0]);
      localObject = getRawType(paramParameterizedType);
      if (!isAssignable(paramClass, (Class)localObject)) {
        return null;
      }
      if (paramClass.equals(localObject)) {
        return getTypeArguments(paramParameterizedType, (Class)localObject, null);
      }
      localObject = getClosestParentType(paramClass, (Class)localObject);
      if (!(localObject instanceof Class)) {
        break;
      }
      paramClass = (Class)localObject;
    }
    Object localObject = (ParameterizedType)localObject;
    paramParameterizedType = determineTypeArguments(getRawType((ParameterizedType)localObject), paramParameterizedType);
    mapTypeVariablesToArguments(paramClass, (ParameterizedType)localObject, paramParameterizedType);
    return paramParameterizedType;
  }
  
  private static boolean equals(GenericArrayType paramGenericArrayType, Type paramType)
  {
    return ((paramType instanceof GenericArrayType)) && (equals(paramGenericArrayType.getGenericComponentType(), ((GenericArrayType)paramType).getGenericComponentType()));
  }
  
  private static boolean equals(ParameterizedType paramParameterizedType, Type paramType)
  {
    if ((paramType instanceof ParameterizedType))
    {
      paramType = (ParameterizedType)paramType;
      if ((equals(paramParameterizedType.getRawType(), paramType.getRawType())) && (equals(paramParameterizedType.getOwnerType(), paramType.getOwnerType()))) {
        return equals(paramParameterizedType.getActualTypeArguments(), paramType.getActualTypeArguments());
      }
    }
    return false;
  }
  
  public static boolean equals(Type paramType1, Type paramType2)
  {
    if (ObjectUtils.equals(paramType1, paramType2)) {
      return true;
    }
    if ((paramType1 instanceof ParameterizedType)) {
      return equals((ParameterizedType)paramType1, paramType2);
    }
    if ((paramType1 instanceof GenericArrayType)) {
      return equals((GenericArrayType)paramType1, paramType2);
    }
    if ((paramType1 instanceof WildcardType)) {
      return equals((WildcardType)paramType1, paramType2);
    }
    return false;
  }
  
  private static boolean equals(WildcardType paramWildcardType, Type paramType)
  {
    if ((paramType instanceof WildcardType)) {
      paramType = (WildcardType)paramType;
    }
    return (equals(paramWildcardType.getLowerBounds(), paramType.getLowerBounds())) && (equals(getImplicitUpperBounds(paramWildcardType), getImplicitUpperBounds(paramType)));
  }
  
  private static boolean equals(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
  {
    int i;
    if (paramArrayOfType1.length == paramArrayOfType2.length) {
      i = 0;
    }
    while (i < paramArrayOfType1.length)
    {
      if (!equals(paramArrayOfType1[i], paramArrayOfType2[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static Type[] extractTypeArgumentsFrom(Map<TypeVariable<?>, Type> paramMap, TypeVariable<?>[] paramArrayOfTypeVariable)
  {
    Type[] arrayOfType = new Type[paramArrayOfTypeVariable.length];
    int k = paramArrayOfTypeVariable.length;
    int j = 0;
    int i = 0;
    while (j < k)
    {
      TypeVariable<?> localTypeVariable = paramArrayOfTypeVariable[j];
      Validate.isTrue(paramMap.containsKey(localTypeVariable), "missing argument mapping for %s", new Object[] { toString(localTypeVariable) });
      arrayOfType[i] = ((Type)paramMap.get(localTypeVariable));
      j += 1;
      i += 1;
    }
    return arrayOfType;
  }
  
  public static GenericArrayType genericArrayType(Type paramType)
  {
    return new GenericArrayTypeImpl((Type)Validate.notNull(paramType, "componentType is null", new Object[0]), null);
  }
  
  private static String genericArrayTypeToString(GenericArrayType paramGenericArrayType)
  {
    return String.format("%s[]", new Object[] { toString(paramGenericArrayType.getGenericComponentType()) });
  }
  
  public static Type getArrayComponentType(Type paramType)
  {
    Class localClass = null;
    if ((paramType instanceof Class))
    {
      paramType = (Class)paramType;
      if (paramType.isArray()) {
        localClass = paramType.getComponentType();
      }
    }
    while (!(paramType instanceof GenericArrayType)) {
      return localClass;
    }
    return ((GenericArrayType)paramType).getGenericComponentType();
  }
  
  private static Type getClosestParentType(Class<?> paramClass1, Class<?> paramClass2)
  {
    Object localObject;
    int i;
    Type localType;
    Class localClass;
    if (paramClass2.isInterface())
    {
      Type[] arrayOfType = paramClass1.getGenericInterfaces();
      localObject = null;
      int j = arrayOfType.length;
      i = 0;
      if (i < j)
      {
        localType = arrayOfType[i];
        if ((localType instanceof ParameterizedType))
        {
          localClass = getRawType((ParameterizedType)localType);
          label51:
          if ((!isAssignable(localClass, paramClass2)) || (!isAssignable((Type)localObject, localClass))) {
            break label137;
          }
          localObject = localType;
        }
      }
    }
    label137:
    for (;;)
    {
      i += 1;
      break;
      if ((localType instanceof Class))
      {
        localClass = (Class)localType;
        break label51;
      }
      throw new IllegalStateException("Unexpected generic interface type found: " + localType);
      if (localObject != null) {
        return (Type)localObject;
      }
      return paramClass1.getGenericSuperclass();
    }
  }
  
  public static Type[] getImplicitBounds(TypeVariable<?> paramTypeVariable)
  {
    Validate.notNull(paramTypeVariable, "typeVariable is null", new Object[0]);
    paramTypeVariable = paramTypeVariable.getBounds();
    if (paramTypeVariable.length == 0) {
      return new Type[] { Object.class };
    }
    return normalizeUpperBounds(paramTypeVariable);
  }
  
  public static Type[] getImplicitLowerBounds(WildcardType paramWildcardType)
  {
    Validate.notNull(paramWildcardType, "wildcardType is null", new Object[0]);
    Type[] arrayOfType = paramWildcardType.getLowerBounds();
    paramWildcardType = arrayOfType;
    if (arrayOfType.length == 0)
    {
      paramWildcardType = new Type[1];
      paramWildcardType[0] = null;
    }
    return paramWildcardType;
  }
  
  public static Type[] getImplicitUpperBounds(WildcardType paramWildcardType)
  {
    Validate.notNull(paramWildcardType, "wildcardType is null", new Object[0]);
    paramWildcardType = paramWildcardType.getUpperBounds();
    if (paramWildcardType.length == 0) {
      return new Type[] { Object.class };
    }
    return normalizeUpperBounds(paramWildcardType);
  }
  
  private static Class<?> getRawType(ParameterizedType paramParameterizedType)
  {
    paramParameterizedType = paramParameterizedType.getRawType();
    if (!(paramParameterizedType instanceof Class)) {
      throw new IllegalStateException("Wait... What!? Type of rawType: " + paramParameterizedType);
    }
    return (Class)paramParameterizedType;
  }
  
  public static Class<?> getRawType(Type paramType1, Type paramType2)
  {
    Object localObject;
    do
    {
      if ((paramType1 instanceof Class)) {
        return (Class)paramType1;
      }
      if ((paramType1 instanceof ParameterizedType)) {
        return getRawType((ParameterizedType)paramType1);
      }
      if (!(paramType1 instanceof TypeVariable)) {
        break;
      }
      if (paramType2 == null) {
        return null;
      }
      localObject = ((TypeVariable)paramType1).getGenericDeclaration();
      if (!(localObject instanceof Class)) {
        return null;
      }
      localObject = getTypeArguments(paramType2, (Class)localObject);
      if (localObject == null) {
        return null;
      }
      localObject = (Type)((Map)localObject).get(paramType1);
      paramType1 = (Type)localObject;
    } while (localObject != null);
    return null;
    if ((paramType1 instanceof GenericArrayType)) {
      return Array.newInstance(getRawType(((GenericArrayType)paramType1).getGenericComponentType(), paramType2), 0).getClass();
    }
    if ((paramType1 instanceof WildcardType)) {
      return null;
    }
    throw new IllegalArgumentException("unknown type: " + paramType1);
  }
  
  private static Map<TypeVariable<?>, Type> getTypeArguments(Class<?> paramClass1, Class<?> paramClass2, Map<TypeVariable<?>, Type> paramMap)
  {
    if (!isAssignable(paramClass1, paramClass2))
    {
      paramMap = null;
      return paramMap;
    }
    Object localObject = paramClass1;
    if (paramClass1.isPrimitive())
    {
      if (paramClass2.isPrimitive()) {
        return new HashMap();
      }
      localObject = ClassUtils.primitiveToWrapper(paramClass1);
    }
    if (paramMap == null) {}
    for (paramClass1 = new HashMap();; paramClass1 = new HashMap(paramMap))
    {
      paramMap = paramClass1;
      if (paramClass2.equals(localObject)) {
        break;
      }
      return getTypeArguments(getClosestParentType((Class)localObject, paramClass2), paramClass2, paramClass1);
    }
  }
  
  public static Map<TypeVariable<?>, Type> getTypeArguments(ParameterizedType paramParameterizedType)
  {
    return getTypeArguments(paramParameterizedType, getRawType(paramParameterizedType), null);
  }
  
  private static Map<TypeVariable<?>, Type> getTypeArguments(ParameterizedType paramParameterizedType, Class<?> paramClass, Map<TypeVariable<?>, Type> paramMap)
  {
    Class localClass = getRawType(paramParameterizedType);
    if (!isAssignable(localClass, paramClass)) {
      paramParameterizedType = null;
    }
    do
    {
      return paramParameterizedType;
      Object localObject = paramParameterizedType.getOwnerType();
      if ((localObject instanceof ParameterizedType))
      {
        localObject = (ParameterizedType)localObject;
        paramMap = getTypeArguments((ParameterizedType)localObject, getRawType((ParameterizedType)localObject), paramMap);
      }
      for (;;)
      {
        Type[] arrayOfType = paramParameterizedType.getActualTypeArguments();
        TypeVariable[] arrayOfTypeVariable = localClass.getTypeParameters();
        int i = 0;
        while (i < arrayOfTypeVariable.length)
        {
          localObject = arrayOfType[i];
          TypeVariable localTypeVariable = arrayOfTypeVariable[i];
          paramParameterizedType = (ParameterizedType)localObject;
          if (paramMap.containsKey(localObject)) {
            paramParameterizedType = (Type)paramMap.get(localObject);
          }
          paramMap.put(localTypeVariable, paramParameterizedType);
          i += 1;
        }
        if (paramMap == null) {
          paramMap = new HashMap();
        } else {
          paramMap = new HashMap(paramMap);
        }
      }
      paramParameterizedType = paramMap;
    } while (paramClass.equals(localClass));
    return getTypeArguments(getClosestParentType(localClass, paramClass), paramClass, paramMap);
  }
  
  public static Map<TypeVariable<?>, Type> getTypeArguments(Type paramType, Class<?> paramClass)
  {
    return getTypeArguments(paramType, paramClass, null);
  }
  
  private static Map<TypeVariable<?>, Type> getTypeArguments(Type paramType, Class<?> paramClass, Map<TypeVariable<?>, Type> paramMap)
  {
    Type localType;
    for (;;)
    {
      if ((paramType instanceof Class)) {
        return getTypeArguments((Class)paramType, paramClass, paramMap);
      }
      if ((paramType instanceof ParameterizedType)) {
        return getTypeArguments((ParameterizedType)paramType, paramClass, paramMap);
      }
      if (!(paramType instanceof GenericArrayType)) {
        break;
      }
      localType = ((GenericArrayType)paramType).getGenericComponentType();
      paramType = localType;
      if (paramClass.isArray())
      {
        paramClass = paramClass.getComponentType();
        paramType = localType;
      }
    }
    Type[] arrayOfType;
    int j;
    int i;
    if ((paramType instanceof WildcardType))
    {
      arrayOfType = getImplicitUpperBounds((WildcardType)paramType);
      j = arrayOfType.length;
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label127;
        }
        localType = arrayOfType[i];
        paramType = localType;
        if (isAssignable(localType, paramClass)) {
          break;
        }
        i += 1;
      }
      label127:
      return null;
    }
    if ((paramType instanceof TypeVariable))
    {
      arrayOfType = getImplicitBounds((TypeVariable)paramType);
      j = arrayOfType.length;
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label183;
        }
        localType = arrayOfType[i];
        paramType = localType;
        if (isAssignable(localType, paramClass)) {
          break;
        }
        i += 1;
      }
      label183:
      return null;
    }
    throw new IllegalStateException("found an unhandled type: " + paramType);
  }
  
  public static boolean isArrayType(Type paramType)
  {
    return ((paramType instanceof GenericArrayType)) || (((paramType instanceof Class)) && (((Class)paramType).isArray()));
  }
  
  private static boolean isAssignable(Type paramType, Class<?> paramClass)
  {
    for (;;)
    {
      if (paramType == null) {
        return (paramClass == null) || (!paramClass.isPrimitive());
      }
      if (paramClass == null) {
        return false;
      }
      if (paramClass.equals(paramType)) {
        return true;
      }
      if ((paramType instanceof Class)) {
        return ClassUtils.isAssignable((Class)paramType, paramClass);
      }
      if (!(paramType instanceof ParameterizedType)) {
        break;
      }
      paramType = getRawType((ParameterizedType)paramType);
    }
    if ((paramType instanceof TypeVariable))
    {
      paramType = ((TypeVariable)paramType).getBounds();
      int j = paramType.length;
      int i = 0;
      while (i < j)
      {
        if (isAssignable(paramType[i], paramClass)) {
          return true;
        }
        i += 1;
      }
      return false;
    }
    if ((paramType instanceof GenericArrayType)) {
      return (paramClass.equals(Object.class)) || ((paramClass.isArray()) && (isAssignable(((GenericArrayType)paramType).getGenericComponentType(), paramClass.getComponentType())));
    }
    if ((paramType instanceof WildcardType)) {
      return false;
    }
    throw new IllegalStateException("found an unhandled type: " + paramType);
  }
  
  private static boolean isAssignable(Type paramType, GenericArrayType paramGenericArrayType, Map<TypeVariable<?>, Type> paramMap)
  {
    if (paramType == null) {}
    Type localType;
    do
    {
      do
      {
        return true;
        if (paramGenericArrayType == null) {
          return false;
        }
      } while (paramGenericArrayType.equals(paramType));
      localType = paramGenericArrayType.getGenericComponentType();
      if (!(paramType instanceof Class)) {
        break;
      }
      paramType = (Class)paramType;
    } while ((paramType.isArray()) && (isAssignable(paramType.getComponentType(), localType, paramMap)));
    return false;
    if ((paramType instanceof GenericArrayType)) {
      return isAssignable(((GenericArrayType)paramType).getGenericComponentType(), localType, paramMap);
    }
    int j;
    int i;
    if ((paramType instanceof WildcardType))
    {
      paramType = getImplicitUpperBounds((WildcardType)paramType);
      j = paramType.length;
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label129;
        }
        if (isAssignable(paramType[i], paramGenericArrayType)) {
          break;
        }
        i += 1;
      }
      label129:
      return false;
    }
    if ((paramType instanceof TypeVariable))
    {
      paramType = getImplicitBounds((TypeVariable)paramType);
      j = paramType.length;
      i = 0;
      for (;;)
      {
        if (i >= j) {
          break label175;
        }
        if (isAssignable(paramType[i], paramGenericArrayType)) {
          break;
        }
        i += 1;
      }
      label175:
      return false;
    }
    if ((paramType instanceof ParameterizedType)) {
      return false;
    }
    throw new IllegalStateException("found an unhandled type: " + paramType);
  }
  
  private static boolean isAssignable(Type paramType, ParameterizedType paramParameterizedType, Map<TypeVariable<?>, Type> paramMap)
  {
    if (paramType == null) {
      return true;
    }
    if (paramParameterizedType == null) {
      return false;
    }
    if (paramParameterizedType.equals(paramType)) {
      return true;
    }
    Object localObject1 = getRawType(paramParameterizedType);
    paramType = getTypeArguments(paramType, (Class)localObject1, null);
    if (paramType == null) {
      return false;
    }
    if (paramType.isEmpty()) {
      return true;
    }
    paramParameterizedType = getTypeArguments(paramParameterizedType, (Class)localObject1, paramMap);
    localObject1 = paramParameterizedType.keySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (TypeVariable)((Iterator)localObject1).next();
      Type localType = unrollVariableAssignments((TypeVariable)localObject2, paramParameterizedType);
      localObject2 = unrollVariableAssignments((TypeVariable)localObject2, paramType);
      if ((localObject2 != null) && (!localType.equals(localObject2)) && ((!(localType instanceof WildcardType)) || (!isAssignable((Type)localObject2, localType, paramMap)))) {
        return false;
      }
    }
    return true;
  }
  
  public static boolean isAssignable(Type paramType1, Type paramType2)
  {
    return isAssignable(paramType1, paramType2, null);
  }
  
  private static boolean isAssignable(Type paramType1, Type paramType2, Map<TypeVariable<?>, Type> paramMap)
  {
    if ((paramType2 == null) || ((paramType2 instanceof Class))) {
      return isAssignable(paramType1, (Class)paramType2);
    }
    if ((paramType2 instanceof ParameterizedType)) {
      return isAssignable(paramType1, (ParameterizedType)paramType2, paramMap);
    }
    if ((paramType2 instanceof GenericArrayType)) {
      return isAssignable(paramType1, (GenericArrayType)paramType2, paramMap);
    }
    if ((paramType2 instanceof WildcardType)) {
      return isAssignable(paramType1, (WildcardType)paramType2, paramMap);
    }
    if ((paramType2 instanceof TypeVariable)) {
      return isAssignable(paramType1, (TypeVariable)paramType2, paramMap);
    }
    throw new IllegalStateException("found an unhandled type: " + paramType2);
  }
  
  private static boolean isAssignable(Type paramType, TypeVariable<?> paramTypeVariable, Map<TypeVariable<?>, Type> paramMap)
  {
    if (paramType == null) {
      return true;
    }
    if (paramTypeVariable == null) {
      return false;
    }
    if (paramTypeVariable.equals(paramType)) {
      return true;
    }
    if ((paramType instanceof TypeVariable))
    {
      Type[] arrayOfType = getImplicitBounds((TypeVariable)paramType);
      int j = arrayOfType.length;
      int i = 0;
      while (i < j)
      {
        if (isAssignable(arrayOfType[i], paramTypeVariable, paramMap)) {
          return true;
        }
        i += 1;
      }
    }
    if (((paramType instanceof Class)) || ((paramType instanceof ParameterizedType)) || ((paramType instanceof GenericArrayType)) || ((paramType instanceof WildcardType))) {
      return false;
    }
    throw new IllegalStateException("found an unhandled type: " + paramType);
  }
  
  private static boolean isAssignable(Type paramType, WildcardType paramWildcardType, Map<TypeVariable<?>, Type> paramMap)
  {
    if (paramType == null) {}
    for (;;)
    {
      return true;
      if (paramWildcardType == null) {
        return false;
      }
      if (!paramWildcardType.equals(paramType))
      {
        Type[] arrayOfType = getImplicitUpperBounds(paramWildcardType);
        paramWildcardType = getImplicitLowerBounds(paramWildcardType);
        int i;
        int j;
        if ((paramType instanceof WildcardType))
        {
          Object localObject = (WildcardType)paramType;
          paramType = getImplicitUpperBounds((WildcardType)localObject);
          localObject = getImplicitLowerBounds((WildcardType)localObject);
          int k = arrayOfType.length;
          i = 0;
          int m;
          while (i < k)
          {
            Type localType = substituteTypeVariables(arrayOfType[i], paramMap);
            m = paramType.length;
            j = 0;
            while (j < m)
            {
              if (!isAssignable(paramType[j], localType, paramMap)) {
                return false;
              }
              j += 1;
            }
            i += 1;
          }
          k = paramWildcardType.length;
          i = 0;
          while (i < k)
          {
            paramType = substituteTypeVariables(paramWildcardType[i], paramMap);
            m = localObject.length;
            j = 0;
            while (j < m)
            {
              if (!isAssignable(paramType, localObject[j], paramMap)) {
                return false;
              }
              j += 1;
            }
            i += 1;
          }
        }
        else
        {
          j = arrayOfType.length;
          i = 0;
          while (i < j)
          {
            if (!isAssignable(paramType, substituteTypeVariables(arrayOfType[i], paramMap), paramMap)) {
              return false;
            }
            i += 1;
          }
          j = paramWildcardType.length;
          i = 0;
          while (i < j)
          {
            if (!isAssignable(substituteTypeVariables(paramWildcardType[i], paramMap), paramType, paramMap)) {
              return false;
            }
            i += 1;
          }
        }
      }
    }
  }
  
  public static boolean isInstance(Object paramObject, Type paramType)
  {
    if (paramType == null) {}
    do
    {
      return false;
      if (paramObject != null) {
        break;
      }
    } while (((paramType instanceof Class)) && (((Class)paramType).isPrimitive()));
    return true;
    return isAssignable(paramObject.getClass(), paramType, null);
  }
  
  private static <T> void mapTypeVariablesToArguments(Class<T> paramClass, ParameterizedType paramParameterizedType, Map<TypeVariable<?>, Type> paramMap)
  {
    Object localObject1 = paramParameterizedType.getOwnerType();
    if ((localObject1 instanceof ParameterizedType)) {
      mapTypeVariablesToArguments(paramClass, (ParameterizedType)localObject1, paramMap);
    }
    localObject1 = paramParameterizedType.getActualTypeArguments();
    paramParameterizedType = getRawType(paramParameterizedType).getTypeParameters();
    paramClass = Arrays.asList(paramClass.getTypeParameters());
    int i = 0;
    while (i < localObject1.length)
    {
      Object localObject2 = paramParameterizedType[i];
      Object localObject3 = localObject1[i];
      if ((paramClass.contains(localObject3)) && (paramMap.containsKey(localObject2))) {
        paramMap.put((TypeVariable)localObject3, paramMap.get(localObject2));
      }
      i += 1;
    }
  }
  
  public static Type[] normalizeUpperBounds(Type[] paramArrayOfType)
  {
    Validate.notNull(paramArrayOfType, "null value specified for bounds array", new Object[0]);
    if (paramArrayOfType.length < 2) {
      return paramArrayOfType;
    }
    HashSet localHashSet = new HashSet(paramArrayOfType.length);
    int k = paramArrayOfType.length;
    int i = 0;
    Type localType1;
    if (i < k)
    {
      localType1 = paramArrayOfType[i];
      int m = paramArrayOfType.length;
      j = 0;
      label52:
      if (j >= m) {
        break label132;
      }
      Type localType2 = paramArrayOfType[j];
      if ((localType1 == localType2) || (!isAssignable(localType2, localType1, null))) {}
    }
    label132:
    for (int j = 1;; j = 0)
    {
      if (j == 0) {
        localHashSet.add(localType1);
      }
      i += 1;
      break;
      j += 1;
      break label52;
      return (Type[])localHashSet.toArray(new Type[localHashSet.size()]);
    }
  }
  
  public static final ParameterizedType parameterize(Class<?> paramClass, Map<TypeVariable<?>, Type> paramMap)
  {
    Validate.notNull(paramClass, "raw class is null", new Object[0]);
    Validate.notNull(paramMap, "typeArgMappings is null", new Object[0]);
    return parameterizeWithOwner(null, paramClass, extractTypeArgumentsFrom(paramMap, paramClass.getTypeParameters()));
  }
  
  public static final ParameterizedType parameterize(Class<?> paramClass, Type... paramVarArgs)
  {
    return parameterizeWithOwner(null, paramClass, paramVarArgs);
  }
  
  public static final ParameterizedType parameterizeWithOwner(Type paramType, Class<?> paramClass, Map<TypeVariable<?>, Type> paramMap)
  {
    Validate.notNull(paramClass, "raw class is null", new Object[0]);
    Validate.notNull(paramMap, "typeArgMappings is null", new Object[0]);
    return parameterizeWithOwner(paramType, paramClass, extractTypeArgumentsFrom(paramMap, paramClass.getTypeParameters()));
  }
  
  public static final ParameterizedType parameterizeWithOwner(Type paramType, Class<?> paramClass, Type... paramVarArgs)
  {
    Validate.notNull(paramClass, "raw class is null", new Object[0]);
    if (paramClass.getEnclosingClass() == null) {
      if (paramType == null)
      {
        bool = true;
        Validate.isTrue(bool, "no owner allowed for top-level %s", new Object[] { paramClass });
        paramType = null;
        label42:
        Validate.noNullElements(paramVarArgs, "null type argument at index %s", new Object[0]);
        if (paramClass.getTypeParameters().length != paramVarArgs.length) {
          break label154;
        }
      }
    }
    label154:
    for (boolean bool = true;; bool = false)
    {
      Validate.isTrue(bool, "invalid number of type parameters specified: expected %s, got %s", new Object[] { Integer.valueOf(paramClass.getTypeParameters().length), Integer.valueOf(paramVarArgs.length) });
      return new ParameterizedTypeImpl(paramClass, paramType, paramVarArgs, null);
      bool = false;
      break;
      if (paramType == null)
      {
        paramType = paramClass.getEnclosingClass();
        break label42;
      }
      Validate.isTrue(isAssignable(paramType, paramClass.getEnclosingClass()), "%s is invalid owner type for parameterized %s", new Object[] { paramType, paramClass });
      break label42;
    }
  }
  
  private static String parameterizedTypeToString(ParameterizedType paramParameterizedType)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Type localType = paramParameterizedType.getOwnerType();
    Class localClass = (Class)paramParameterizedType.getRawType();
    paramParameterizedType = paramParameterizedType.getActualTypeArguments();
    if (localType == null)
    {
      localStringBuilder.append(localClass.getName());
      appendAllTo(localStringBuilder.append('<'), ", ", paramParameterizedType).append('>');
      return localStringBuilder.toString();
    }
    if ((localType instanceof Class)) {
      localStringBuilder.append(((Class)localType).getName());
    }
    for (;;)
    {
      localStringBuilder.append('.').append(localClass.getSimpleName());
      break;
      localStringBuilder.append(localType.toString());
    }
  }
  
  private static Type substituteTypeVariables(Type paramType, Map<TypeVariable<?>, Type> paramMap)
  {
    if (((paramType instanceof TypeVariable)) && (paramMap != null))
    {
      Type localType = (Type)paramMap.get(paramType);
      paramMap = localType;
      if (localType == null) {
        throw new IllegalArgumentException("missing assignment type for type variable " + paramType);
      }
    }
    else
    {
      paramMap = paramType;
    }
    return paramMap;
  }
  
  public static String toLongString(TypeVariable<?> paramTypeVariable)
  {
    Validate.notNull(paramTypeVariable, "var is null", new Object[0]);
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramTypeVariable.getGenericDeclaration();
    if ((localObject instanceof Class))
    {
      localObject = (Class)localObject;
      if (((Class)localObject).getEnclosingClass() == null) {
        localStringBuilder.insert(0, ((Class)localObject).getName());
      }
    }
    for (;;)
    {
      return ':' + typeVariableToString(paramTypeVariable);
      localStringBuilder.insert(0, ((Class)localObject).getSimpleName()).insert(0, '.');
      localObject = ((Class)localObject).getEnclosingClass();
      break;
      if ((localObject instanceof Type)) {
        localStringBuilder.append(toString((Type)localObject));
      } else {
        localStringBuilder.append(localObject);
      }
    }
  }
  
  public static String toString(Type paramType)
  {
    Validate.notNull(paramType);
    if ((paramType instanceof Class)) {
      return classToString((Class)paramType);
    }
    if ((paramType instanceof ParameterizedType)) {
      return parameterizedTypeToString((ParameterizedType)paramType);
    }
    if ((paramType instanceof WildcardType)) {
      return wildcardTypeToString((WildcardType)paramType);
    }
    if ((paramType instanceof TypeVariable)) {
      return typeVariableToString((TypeVariable)paramType);
    }
    if ((paramType instanceof GenericArrayType)) {
      return genericArrayTypeToString((GenericArrayType)paramType);
    }
    throw new IllegalArgumentException(ObjectUtils.identityToString(paramType));
  }
  
  private static String typeVariableToString(TypeVariable<?> paramTypeVariable)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramTypeVariable.getName());
    Type[] arrayOfType = paramTypeVariable.getBounds();
    if ((arrayOfType.length > 0) && ((arrayOfType.length != 1) || (!Object.class.equals(arrayOfType[0]))))
    {
      localStringBuilder.append(" extends ");
      appendAllTo(localStringBuilder, " & ", paramTypeVariable.getBounds());
    }
    return localStringBuilder.toString();
  }
  
  public static boolean typesSatisfyVariables(Map<TypeVariable<?>, Type> paramMap)
  {
    Validate.notNull(paramMap, "typeVarAssigns is null", new Object[0]);
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      Object localObject1 = (TypeVariable)((Map.Entry)localObject2).getKey();
      localObject2 = (Type)((Map.Entry)localObject2).getValue();
      localObject1 = getImplicitBounds((TypeVariable)localObject1);
      int j = localObject1.length;
      int i = 0;
      while (i < j)
      {
        if (!isAssignable((Type)localObject2, substituteTypeVariables(localObject1[i], paramMap), paramMap)) {
          return false;
        }
        i += 1;
      }
    }
    return true;
  }
  
  private static Type[] unrollBounds(Map<TypeVariable<?>, Type> paramMap, Type[] paramArrayOfType)
  {
    int i = 0;
    if (i < paramArrayOfType.length)
    {
      Type localType = unrollVariables(paramMap, paramArrayOfType[i]);
      if (localType == null)
      {
        paramArrayOfType = (Type[])ArrayUtils.remove(paramArrayOfType, i);
        i -= 1;
      }
      for (;;)
      {
        i += 1;
        break;
        paramArrayOfType[i] = localType;
      }
    }
    return paramArrayOfType;
  }
  
  private static Type unrollVariableAssignments(TypeVariable<?> paramTypeVariable, Map<TypeVariable<?>, Type> paramMap)
  {
    Type localType;
    for (;;)
    {
      localType = (Type)paramMap.get(paramTypeVariable);
      if ((!(localType instanceof TypeVariable)) || (localType.equals(paramTypeVariable))) {
        break;
      }
      paramTypeVariable = (TypeVariable)localType;
    }
    return localType;
  }
  
  public static Type unrollVariables(Map<TypeVariable<?>, Type> paramMap, Type paramType)
  {
    for (Object localObject = paramMap;; localObject = paramMap)
    {
      paramMap = (Map<TypeVariable<?>, Type>)localObject;
      if (localObject == null) {
        paramMap = Collections.emptyMap();
      }
      localObject = paramType;
      if (!containsTypeVariables(paramType)) {
        break label147;
      }
      if (!(paramType instanceof TypeVariable)) {
        break;
      }
      paramType = (Type)paramMap.get(paramType);
    }
    if ((paramType instanceof ParameterizedType))
    {
      localObject = (ParameterizedType)paramType;
      paramType = paramMap;
      if (((ParameterizedType)localObject).getOwnerType() != null)
      {
        paramType = new HashMap(paramMap);
        paramType.putAll(getTypeArguments((ParameterizedType)localObject));
      }
      paramMap = ((ParameterizedType)localObject).getActualTypeArguments();
      int i = 0;
      while (i < paramMap.length)
      {
        Type localType = unrollVariables(paramType, paramMap[i]);
        if (localType != null) {
          paramMap[i] = localType;
        }
        i += 1;
      }
      localObject = parameterizeWithOwner(((ParameterizedType)localObject).getOwnerType(), (Class)((ParameterizedType)localObject).getRawType(), paramMap);
    }
    label147:
    do
    {
      return (Type)localObject;
      localObject = paramType;
    } while (!(paramType instanceof WildcardType));
    paramType = (WildcardType)paramType;
    return wildcardType().withUpperBounds(unrollBounds(paramMap, paramType.getUpperBounds())).withLowerBounds(unrollBounds(paramMap, paramType.getLowerBounds())).build();
  }
  
  public static WildcardTypeBuilder wildcardType()
  {
    return new WildcardTypeBuilder(null);
  }
  
  private static String wildcardTypeToString(WildcardType paramWildcardType)
  {
    StringBuilder localStringBuilder = new StringBuilder("?");
    Type[] arrayOfType = paramWildcardType.getLowerBounds();
    paramWildcardType = paramWildcardType.getUpperBounds();
    if (arrayOfType.length > 0) {
      appendAllTo(localStringBuilder.append(" super "), " & ", arrayOfType);
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if ((paramWildcardType.length != 1) || (!Object.class.equals(paramWildcardType[0]))) {
        appendAllTo(localStringBuilder.append(" extends "), " & ", paramWildcardType);
      }
    }
  }
  
  public static <T> Typed<T> wrap(Class<T> paramClass)
  {
    return wrap(paramClass);
  }
  
  public static <T> Typed<T> wrap(Type paramType)
  {
    new Typed()
    {
      public final Type getType()
      {
        return val$type;
      }
    };
  }
  
  static final class GenericArrayTypeImpl
    implements GenericArrayType
  {
    private final Type componentType;
    
    private GenericArrayTypeImpl(Type paramType)
    {
      componentType = paramType;
    }
    
    public final boolean equals(Object paramObject)
    {
      return (paramObject == this) || (((paramObject instanceof GenericArrayType)) && (TypeUtils.equals(this, (GenericArrayType)paramObject)));
    }
    
    public final Type getGenericComponentType()
    {
      return componentType;
    }
    
    public final int hashCode()
    {
      return componentType.hashCode() | 0x430;
    }
    
    public final String toString()
    {
      return TypeUtils.toString(this);
    }
  }
  
  static final class ParameterizedTypeImpl
    implements ParameterizedType
  {
    private final Class<?> raw;
    private final Type[] typeArguments;
    private final Type useOwner;
    
    private ParameterizedTypeImpl(Class<?> paramClass, Type paramType, Type[] paramArrayOfType)
    {
      raw = paramClass;
      useOwner = paramType;
      typeArguments = paramArrayOfType;
    }
    
    public final boolean equals(Object paramObject)
    {
      return (paramObject == this) || (((paramObject instanceof ParameterizedType)) && (TypeUtils.equals(this, (ParameterizedType)paramObject)));
    }
    
    public final Type[] getActualTypeArguments()
    {
      return (Type[])typeArguments.clone();
    }
    
    public final Type getOwnerType()
    {
      return useOwner;
    }
    
    public final Type getRawType()
    {
      return raw;
    }
    
    public final int hashCode()
    {
      return ((raw.hashCode() | 0x470) << 4 | ObjectUtils.hashCode(useOwner)) << 8 | Arrays.hashCode(typeArguments);
    }
    
    public final String toString()
    {
      return TypeUtils.toString(this);
    }
  }
  
  public static class WildcardTypeBuilder
    implements Builder<WildcardType>
  {
    private Type[] lowerBounds;
    private Type[] upperBounds;
    
    public WildcardType build()
    {
      return new TypeUtils.WildcardTypeImpl(upperBounds, lowerBounds, null);
    }
    
    public WildcardTypeBuilder withLowerBounds(Type... paramVarArgs)
    {
      lowerBounds = paramVarArgs;
      return this;
    }
    
    public WildcardTypeBuilder withUpperBounds(Type... paramVarArgs)
    {
      upperBounds = paramVarArgs;
      return this;
    }
  }
  
  static final class WildcardTypeImpl
    implements WildcardType
  {
    private static final Type[] EMPTY_BOUNDS = new Type[0];
    private final Type[] lowerBounds;
    private final Type[] upperBounds;
    
    private WildcardTypeImpl(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
    {
      upperBounds = ((Type[])ObjectUtils.defaultIfNull(paramArrayOfType1, EMPTY_BOUNDS));
      lowerBounds = ((Type[])ObjectUtils.defaultIfNull(paramArrayOfType2, EMPTY_BOUNDS));
    }
    
    public final boolean equals(Object paramObject)
    {
      return (paramObject == this) || (((paramObject instanceof WildcardType)) && (TypeUtils.equals(this, (WildcardType)paramObject)));
    }
    
    public final Type[] getLowerBounds()
    {
      return (Type[])lowerBounds.clone();
    }
    
    public final Type[] getUpperBounds()
    {
      return (Type[])upperBounds.clone();
    }
    
    public final int hashCode()
    {
      return (Arrays.hashCode(upperBounds) | 0x4900) << 8 | Arrays.hashCode(lowerBounds);
    }
    
    public final String toString()
    {
      return TypeUtils.toString(this);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.reflect.TypeUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */