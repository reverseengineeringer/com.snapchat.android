.class public final Lcom/snapchat/android/Timber;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/Timber$3;,
        Lcom/snapchat/android/Timber$LogType;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const-string v0, ""

    .line 257
    :goto_0
    return-object v0

    .line 252
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 253
    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 254
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 255
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 233
    add-int/lit16 v2, v0, 0xed8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 234
    add-int/lit16 v2, v0, 0xed8

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :goto_1
    add-int/lit16 v0, v0, 0xed8

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_1
    return-object v1
.end method

.method public static varargs a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v8, Lauh;->SERIAL_EXECUTOR_FOR_LOGGING:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/snapchat/android/Timber$1;

    move-object v1, p5

    move-object v2, p6

    move-object v3, p0

    move v4, p2

    move-object v5, p1

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/Timber$1;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/snapchat/android/Timber$LogType;ZLjava/lang/String;ZLjava/lang/Throwable;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v2, 0x17

    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0, p1, p2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->VERBOSE:Lcom/snapchat/android/Timber$LogType;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->ERROR_WITH_TRACE:Lcom/snapchat/android/Timber$LogType;

    const-string v5, ""

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    move-object v1, p0

    move v3, v2

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 100
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->CHAT:Lcom/snapchat/android/Timber$LogType;

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Lmh;)V
    .locals 2
    .param p0    # Lmh;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v0, Lauh;->SERIAL_EXECUTOR_FOR_LOGGING:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/Timber$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/Timber$2;-><init>(Lmh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->INFO:Lcom/snapchat/android/Timber$LogType;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->DEBUG:Lcom/snapchat/android/Timber$LogType;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 67
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->DEBUG:Lcom/snapchat/android/Timber$LogType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->WARNING:Lcom/snapchat/android/Timber$LogType;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->ERROR_WITHOUT_TRACE:Lcom/snapchat/android/Timber$LogType;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->CHAT:Lcom/snapchat/android/Timber$LogType;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 107
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->LOCATION_MANAGER:Lcom/snapchat/android/Timber$LogType;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v0, Lcom/snapchat/android/Timber$LogType;->BITMAP_POOL_MONITOR:Lcom/snapchat/android/Timber$LogType;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
