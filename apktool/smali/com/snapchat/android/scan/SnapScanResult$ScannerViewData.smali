.class public Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/scan/SnapScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScannerViewData"
.end annotation


# instance fields
.field private final a:Z

.field private final b:[B

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Z[BII)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->a:Z

    .line 38
    iput-object p2, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->b:[B

    .line 39
    iput p3, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->c:I

    .line 40
    iput p4, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->d:I

    .line 41
    return-void
.end method


# virtual methods
.method public getScannerViewBitmapImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->b:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->c:I

    if-lez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [I

    .line 55
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 57
    iget v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->c:I

    iget v2, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->d:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScannerViewImage()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->b:[B

    return-object v0
.end method

.method public hasScannerViewImage()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;->a:Z

    return v0
.end method
