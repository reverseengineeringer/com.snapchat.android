.class public Lcom/snapchat/android/scan/SnapScanResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/scan/SnapScanResult$ScannedData;,
        Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

.field private final b:Lcom/snapchat/android/scan/SnapScanResult$ScannedData;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;Lcom/snapchat/android/scan/SnapScanResult$ScannedData;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/snapchat/android/scan/SnapScanResult;->a:Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    .line 18
    iput-object p2, p0, Lcom/snapchat/android/scan/SnapScanResult;->b:Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    .line 19
    return-void
.end method


# virtual methods
.method public getScannedData()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScanResult;->b:Lcom/snapchat/android/scan/SnapScanResult$ScannedData;

    return-object v0
.end method

.method public getScannerViewData()Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScanResult;->a:Lcom/snapchat/android/scan/SnapScanResult$ScannerViewData;

    return-object v0
.end method
