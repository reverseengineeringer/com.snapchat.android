.class public final enum Lcom/addlive/service/VideoCaptureDevice;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/service/VideoCaptureDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/service/VideoCaptureDevice;

.field public static final enum BACK_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

.field public static final enum FRONT_CAMERA:Lcom/addlive/service/VideoCaptureDevice;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/addlive/service/VideoCaptureDevice;

    const-string v1, "FRONT_CAMERA"

    const-string v2, "front_cam"

    invoke-direct {v0, v1, v3, v2}, Lcom/addlive/service/VideoCaptureDevice;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/VideoCaptureDevice;->FRONT_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    .line 34
    new-instance v0, Lcom/addlive/service/VideoCaptureDevice;

    const-string v1, "BACK_CAMERA"

    const-string v2, "back_cam"

    invoke-direct {v0, v1, v4, v2}, Lcom/addlive/service/VideoCaptureDevice;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/VideoCaptureDevice;->BACK_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/addlive/service/VideoCaptureDevice;

    sget-object v1, Lcom/addlive/service/VideoCaptureDevice;->FRONT_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    aput-object v1, v0, v3

    sget-object v1, Lcom/addlive/service/VideoCaptureDevice;->BACK_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    aput-object v1, v0, v4

    sput-object v0, Lcom/addlive/service/VideoCaptureDevice;->$VALUES:[Lcom/addlive/service/VideoCaptureDevice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/addlive/service/VideoCaptureDevice;->id:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/service/VideoCaptureDevice;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/addlive/service/VideoCaptureDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/VideoCaptureDevice;

    return-object v0
.end method

.method public static values()[Lcom/addlive/service/VideoCaptureDevice;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/addlive/service/VideoCaptureDevice;->$VALUES:[Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v0}, [Lcom/addlive/service/VideoCaptureDevice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/service/VideoCaptureDevice;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/addlive/service/VideoCaptureDevice;->id:Ljava/lang/String;

    return-object v0
.end method
