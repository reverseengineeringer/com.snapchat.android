.class final Ljavax/validation/Validation$GetValidationProviderListAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetValidationProviderListAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/List",
        "<",
        "Ljavax/validation/spi/ValidationProvider",
        "<*>;>;>;"
    }
.end annotation


# static fields
.field private static final providersPerClassloader:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/List",
            "<",
            "Ljavax/validation/spi/ValidationProvider",
            "<*>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavax/validation/Validation$GetValidationProviderListAction;->providersPerClassloader:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized cacheValidationProviders(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljavax/validation/spi/ValidationProvider",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljavax/validation/Validation$GetValidationProviderListAction;->providersPerClassloader:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCachedValidationProviders(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavax/validation/spi/ValidationProvider",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljavax/validation/Validation$GetValidationProviderListAction;->providersPerClassloader:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 369
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getValidationProviderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/validation/spi/ValidationProvider",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljavax/validation/Validation$GetValidationProviderListAction;

    invoke-direct {v0}, Ljavax/validation/Validation$GetValidationProviderListAction;-><init>()V

    .line 312
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 316
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {v0}, Ljavax/validation/Validation$GetValidationProviderListAction;->run()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadProviders(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavax/validation/spi/ValidationProvider",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 351
    const-class v0, Ljavax/validation/spi/ValidationProvider;

    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v2

    goto :goto_0

    .line 364
    :cond_0
    return-object v1
.end method

.method private run()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/validation/spi/ValidationProvider",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 323
    invoke-direct {p0, v1}, Ljavax/validation/Validation$GetValidationProviderListAction;->getCachedValidationProviders(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-object v0

    .line 329
    :cond_1
    invoke-static {v1}, Ljavax/validation/Validation$GetValidationProviderListAction;->loadProviders(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    const-class v0, Ljavax/validation/Validation$DefaultValidationProviderResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 334
    invoke-direct {p0, v1}, Ljavax/validation/Validation$GetValidationProviderListAction;->getCachedValidationProviders(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    .line 337
    if-nez v0, :cond_0

    .line 341
    invoke-static {v1}, Ljavax/validation/Validation$GetValidationProviderListAction;->loadProviders(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    .line 345
    :cond_2
    invoke-direct {p0, v1, v0}, Ljavax/validation/Validation$GetValidationProviderListAction;->cacheValidationProviders(Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljavax/validation/Validation$GetValidationProviderListAction;->run()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
