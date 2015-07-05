.class public final Lbgn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lbgn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lbgn;

    invoke-direct {v0}, Lbgn;-><init>()V

    sput-object v0, Lbgn;->sInstance:Lbgn;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lbgn;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lbgn;->sInstance:Lbgn;

    return-object v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 28
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 29
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    new-array v3, v6, [Ljava/lang/String;

    const-string v2, "/sbin/su"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/su"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/data/local/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/system/sd/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/bin/failsafe/su"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/data/local/su"

    aput-object v4, v3, v2

    move v2, v1

    .line 39
    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v4, v3, v2

    .line 40
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    :goto_1
    return v0

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 42
    goto :goto_1
.end method

.method public static e()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/xbin/which"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "su"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 51
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method
