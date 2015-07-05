.class public final Lanr$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/snapchat/android/scan/SnapScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lanr;


# direct methods
.method public constructor <init>(Lanr;[B)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lanr$1;->b:Lanr;

    iput-object p2, p0, Lanr$1;->a:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/snapchat/android/scan/SnapScanResult;
    .locals 4

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->c(Lanr;)Lcom/snapchat/android/scan/SnapScan;

    sget-object v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->NV21:Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    iget-object v1, p0, Lanr$1;->b:Lanr;

    invoke-static {v1}, Lanr;->a(Lanr;)I

    move-result v1

    iget-object v2, p0, Lanr$1;->b:Lanr;

    invoke-static {v2}, Lanr;->b(Lanr;)I

    move-result v2

    iget-object v3, p0, Lanr$1;->a:[B

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/scan/SnapScan;->a(Lcom/snapchat/android/scan/SnapScan$ImageFormat;II[B)Lcom/snapchat/android/scan/SnapScanResult;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lanr$1;->b:Lanr;

    invoke-static {v1}, Lanr;->d(Lanr;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-static {}, Lanr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lanr$1;->a()Lcom/snapchat/android/scan/SnapScanResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 136
    check-cast p1, Lcom/snapchat/android/scan/SnapScanResult;

    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->e(Lanr;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lanr;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scanner was disabled during last processed frame."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->hasScannedData()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lanr;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopped scanning - Result found."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-virtual {v0}, Lanr;->a()V

    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->f(Lanr;)Lanr$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->f(Lanr;)Lanr$a;

    :cond_1
    sget-object v0, Lcom/snapchat/android/util/Property;->ENABLE_SNAPSCAN_DEBUG:Lcom/snapchat/android/util/Property;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Property;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->g(Lanr;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lanr;->b(J)D

    move-result-wide v0

    invoke-static {}, Lanr;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "== Elapsed Seconds: %.4f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lanr$1;->b:Lanr;

    iget-object v3, p0, Lanr$1;->b:Lanr;

    invoke-static {v3}, Lanr;->h(Lanr;)I

    move-result v3

    int-to-double v4, v3

    div-double v0, v4, v0

    invoke-static {v2, v0, v1}, Lanr;->a(Lanr;D)D

    invoke-static {}, Lanr;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "== SCANNING frame rate: %.4f [Total Scanned Frame Count: %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lanr$1;->b:Lanr;

    invoke-static {v3}, Lanr;->i(Lanr;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lanr$1;->b:Lanr;

    invoke-static {v3}, Lanr;->h(Lanr;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lanr;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "== SNAPCODE DETECTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeMessage()[B

    move-result-object v2

    invoke-static {v2}, Lavb;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lanr;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scan Succeed. | fps: %.4f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lanr$1;->b:Lanr;

    iget-wide v4, v3, Lanr;->k:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->j(Lanr;)Lans;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->j(Lanr;)Lans;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeMessage()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lans;->a(I[B)V

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->hasScannerViewImage()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->j(Lanr;)Lans;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->getScannerViewBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lans;->b(Landroid/graphics/Bitmap;)V

    :cond_3
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCODE_SCANNED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->k(Lanr;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->j(Lanr;)Lans;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->hasScannerViewImage()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lanr$1;->b:Lanr;

    invoke-static {v0}, Lanr;->j(Lanr;)Lans;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->getScannerViewBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lans;->b(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lanr;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected null SnapScanResult."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
