.class public Lcom/snapchat/android/scan/SnapScan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/scan/SnapScan$ImageFormat;
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/snapchat/android/scan/SnapScan;->b()Z

    move-result v0

    sput-boolean v0, Lcom/snapchat/android/scan/SnapScan;->a:Z

    .line 24
    const-class v0, Lcom/snapchat/android/scan/SnapScan;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/scan/SnapScan;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/scan/SnapScanResult;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 34
    if-nez p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    sget-boolean v1, Lcom/snapchat/android/scan/SnapScan;->a:Z

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_2

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processBitmap: Cannot scan image format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 54
    sget-object v1, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->ARGB_8888:Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0x1e0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/snapchat/android/scan/SnapScan;->processFrame(III[BI)Lcom/snapchat/android/scan/SnapScanResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/scan/SnapScan$ImageFormat;II[B)Lcom/snapchat/android/scan/SnapScanResult;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    if-nez p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    if-eqz p3, :cond_0

    .line 78
    sget-boolean v1, Lcom/snapchat/android/scan/SnapScan;->a:Z

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->ordinal()I

    move-result v0

    const/16 v1, 0x1e0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/snapchat/android/scan/SnapScan;->processFrame(III[BI)Lcom/snapchat/android/scan/SnapScanResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/snapchat/android/scan/SnapScan;->a:Z

    return v0
.end method

.method private static declared-synchronized b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 97
    const-class v2, Lcom/snapchat/android/scan/SnapScan;

    monitor-enter v2

    :try_start_0
    const-string v1, "stlport_shared"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 98
    const-string v1, "snapscan"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    monitor-exit v2

    return v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    :try_start_1
    new-instance v3, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v4, "Failed to load the SnapScan lib!!!"

    invoke-direct {v3, v4}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static native processFrame(III[BI)Lcom/snapchat/android/scan/SnapScanResult;
.end method
