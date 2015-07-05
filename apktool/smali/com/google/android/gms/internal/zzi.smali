.class public abstract Lcom/google/android/gms/internal/zzi;
.super Lcom/google/android/gms/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzi$zza;
    }
.end annotation


# static fields
.field private static startTime:J

.field private static zzkA:Ljava/lang/reflect/Method;

.field private static zzkB:Ljava/lang/reflect/Method;

.field private static zzkC:Ljava/lang/reflect/Method;

.field private static zzkD:Ljava/lang/reflect/Method;

.field private static zzkE:Ljava/lang/reflect/Method;

.field private static zzkF:Ljava/lang/reflect/Method;

.field private static zzkG:Ljava/lang/reflect/Method;

.field private static zzkH:Ljava/lang/reflect/Method;

.field private static zzkI:Ljava/lang/String;

.field private static zzkJ:Ljava/lang/String;

.field private static zzkK:Ljava/lang/String;

.field private static zzkL:Lcom/google/android/gms/internal/zzo;

.field static zzkM:Z

.field private static zzkz:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzi;->startTime:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzi;->zzkM:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzm;Lcom/google/android/gms/internal/zzn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzm;Lcom/google/android/gms/internal/zzn;)V

    return-void
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzm;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkJ:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkJ:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkC:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkC:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzm;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzi;->zzkJ:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zza(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkD:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static declared-synchronized zza(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/zzm;)V
    .locals 4

    const-class v1, Lcom/google/android/gms/internal/zzi;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzi;->zzkM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzo;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcom/google/android/gms/internal/zzo;-><init>(Lcom/google/android/gms/internal/zzm;Ljava/security/SecureRandom;)V

    sput-object v0, Lcom/google/android/gms/internal/zzi;->zzkL:Lcom/google/android/gms/internal/zzo;

    sput-object p0, Lcom/google/android/gms/internal/zzi;->zzkI:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzi;->zzg(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzi;->zzw()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/zzi;->startTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzi;->zzkM:Z
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzm;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkK:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkK:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkF:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkF:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzm;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzi;->zzkK:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzb([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzi;->zzkL:Lcom/google/android/gms/internal/zzo;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/zzo;->zzc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzo$zza; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzd(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkE:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkE:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method static zze(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkG:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkG:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method static zzf(Landroid/content/Context;)[I
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkH:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkH:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzg(Landroid/content/Context;)V
    .locals 14

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkL:Lcom/google/android/gms/internal/zzo;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzo;->zzb(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkL:Lcom/google/android/gms/internal/zzo;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzo;->zzc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "dex"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/zzo$zza; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v1, v0

    :try_start_1
    const-string v0, "ads"

    const-string v4, ".jar"

    invoke-static {v0, v4, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/internal/zzo$zza; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v3, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzH()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzT()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzN()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzL()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzV()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzJ()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzR()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzP()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzI()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v3, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zzi;->zzkz:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzU()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v5, v3, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zzi;->zzkA:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzO()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zzi;->zzkB:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzM()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v5, v6

    invoke-virtual {v7, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zzi;->zzkC:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzW()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v5, v6

    invoke-virtual {v8, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zzi;->zzkD:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzK()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v9, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zzi;->zzkE:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzS()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v10, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zzi;->zzkF:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzQ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v11, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/zzi;->zzkG:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzq;->zzG()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzi;->zzb([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzi;->zzkH:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const-string v3, ".jar"

    const-string v4, ".dex"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    const-string v4, ".jar"

    const-string v5, ".dex"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/gms/internal/zzo$zza; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzv()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkI:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkI:Ljava/lang/String;

    return-object v0
.end method

.method static zzw()Ljava/lang/Long;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkz:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkz:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzx()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkB:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkB:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static zzy()Ljava/lang/Long;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkA:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzi;->zzkA:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzi$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzi$zza;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected zzb(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzi;->zzx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzi;->zzv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/zzi;->zzw()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V

    sget-wide v2, Lcom/google/android/gms/internal/zzi;->startTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    sget-wide v4, Lcom/google/android/gms/internal/zzi;->startTime:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V

    const/16 v0, 0x17

    sget-wide v2, Lcom/google/android/gms/internal/zzi;->startTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/google/android/gms/internal/zzi;->zze(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x1f

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V

    const/16 v2, 0x20

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    const/16 v0, 0x21

    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/zzi;->zzy()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    const/16 v0, 0x1b

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzi;->zzkx:Lcom/google/android/gms/internal/zzm;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzi;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    const/16 v0, 0x1d

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzi;->zzkx:Lcom/google/android/gms/internal/zzm;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzi;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(ILjava/lang/String;)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/internal/zzi;->zzf(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_1

    :catch_8
    move-exception v0

    goto/16 :goto_0
.end method

.method protected zzc(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzi;->zzv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzi;->zzx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/16 v0, 0x19

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/zzi;->zzw()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzi;->zzkv:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzi;->zzkw:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V

    const/16 v2, 0xf

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const/16 v2, 0x10

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzi;->zza(IJ)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzi$zza; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
