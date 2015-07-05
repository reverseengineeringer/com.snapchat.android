.class public final enum Lcom/snapchat/android/scan/SnapScan$ImageFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/scan/SnapScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/scan/SnapScan$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/scan/SnapScan$ImageFormat;

.field public static final enum ARGB_8888:Lcom/snapchat/android/scan/SnapScan$ImageFormat;

.field public static final enum NV21:Lcom/snapchat/android/scan/SnapScan$ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    const-string v1, "NV21"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/scan/SnapScan$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->NV21:Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    .line 18
    new-instance v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    const-string v1, "ARGB_8888"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/scan/SnapScan$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->ARGB_8888:Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    sget-object v1, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->NV21:Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->ARGB_8888:Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->$VALUES:[Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/scan/SnapScan$ImageFormat;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/scan/SnapScan$ImageFormat;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/snapchat/android/scan/SnapScan$ImageFormat;->$VALUES:[Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    invoke-virtual {v0}, [Lcom/snapchat/android/scan/SnapScan$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/scan/SnapScan$ImageFormat;

    return-object v0
.end method
