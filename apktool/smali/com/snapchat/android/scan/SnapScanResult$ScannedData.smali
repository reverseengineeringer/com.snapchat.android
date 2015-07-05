.class public Lcom/snapchat/android/scan/SnapScanResult$ScannedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/scan/SnapScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScannedData"
.end annotation


# instance fields
.field private final a:Z

.field private b:I

.field private final c:[B


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p1, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->a:Z

    .line 73
    iput p2, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->b:I

    .line 74
    iput-object p3, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->c:[B

    .line 75
    return-void
.end method


# virtual methods
.method public getSnapcodeMessage()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->c:[B

    return-object v0
.end method

.method public getSnapcodeVersion()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->b:I

    return v0
.end method

.method public hasScannedData()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/snapchat/android/scan/SnapScanResult$ScannedData;->a:Z

    return v0
.end method
