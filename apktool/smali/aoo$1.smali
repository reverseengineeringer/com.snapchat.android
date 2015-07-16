.class public final Laoo$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoo;
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

.field final synthetic b:Laoo;


# direct methods
.method public constructor <init>(Laoo;[B)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Laoo$1;->b:Laoo;

    iput-object p2, p0, Laoo$1;->a:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/snapchat/android/scan/SnapScanResult;
    .locals 4

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->c(Laoo;)Lcom/snapchat/android/scan/SnapScan;

    sget-object v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->NV21:Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    iget-object v1, p0, Laoo$1;->b:Laoo;

    invoke-static {v1}, Laoo;->a(Laoo;)I

    move-result v1

    iget-object v2, p0, Laoo$1;->b:Laoo;

    invoke-static {v2}, Laoo;->b(Laoo;)I

    move-result v2

    iget-object v3, p0, Laoo$1;->a:[B

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/scan/SnapScan;->a(Lcom/snapchat/android/scan/SnapScan$ImageFormat;II[B)Lcom/snapchat/android/scan/SnapScanResult;

    move-result-object v0

    .line 143
    iget-object v1, p0, Laoo$1;->b:Laoo;

    invoke-static {v1}, Laoo;->d(Laoo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-static {}, Laoo;->b()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Laoo$1;->a()Lcom/snapchat/android/scan/SnapScanResult;

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

    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->e(Laoo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Laoo;->b()Ljava/lang/String;

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

    invoke-static {}, Laoo;->b()Ljava/lang/String;

    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-virtual {v0}, Laoo;->a()V

    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->f(Laoo;)Laoo$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->f(Laoo;)Laoo$a;

    :cond_1
    sget-object v0, Lcom/snapchat/android/util/Property;->ENABLE_SNAPSCAN_DEBUG:Lcom/snapchat/android/util/Property;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Property;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->g(Laoo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Laoo;->b(J)D

    move-result-wide v0

    invoke-static {}, Laoo;->b()Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v2, p0, Laoo$1;->b:Laoo;

    iget-object v3, p0, Laoo$1;->b:Laoo;

    invoke-static {v3}, Laoo;->h(Laoo;)I

    move-result v3

    int-to-double v4, v3

    div-double v0, v4, v0

    invoke-static {v2, v0, v1}, Laoo;->a(Laoo;D)D

    invoke-static {}, Laoo;->b()Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Laoo$1;->b:Laoo;

    invoke-static {v1}, Laoo;->i(Laoo;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Laoo$1;->b:Laoo;

    invoke-static {v1}, Laoo;->h(Laoo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {}, Laoo;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "== SNAPCODE DETECTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeMessage()[B

    move-result-object v1

    invoke-static {v1}, Lavz;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laoo;->b()Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/Object;

    iget-object v1, p0, Laoo$1;->b:Laoo;

    iget-wide v2, v1, Laoo;->j:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v6

    :cond_2
    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->j(Laoo;)Laop;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->j(Laoo;)Laop;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->getSnapcodeMessage()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Laop;->a(I[B)V

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->hasScannerViewImage()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->j(Laoo;)Laop;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->getScannerViewBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Laop;->b(Landroid/graphics/Bitmap;)V

    :cond_3
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCODE_SCANNED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    :cond_4
    :goto_1
    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->k(Laoo;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->j(Laoo;)Laop;

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

    iget-object v0, p0, Laoo$1;->b:Laoo;

    invoke-static {v0}, Laoo;->j(Laoo;)Laop;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/scan/SnapScanResult;->getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->getScannerViewBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Laop;->b(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Laoo;->b()Ljava/lang/String;

    goto :goto_1
.end method
