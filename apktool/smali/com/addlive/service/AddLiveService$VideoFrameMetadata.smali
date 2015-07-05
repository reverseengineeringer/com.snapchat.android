.class public Lcom/addlive/service/AddLiveService$VideoFrameMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/service/AddLiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoFrameMetadata"
.end annotation


# instance fields
.field private height:I

.field private info:Landroid/hardware/Camera$CameraInfo;

.field private orientation:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->height:I

    return v0
.end method

.method public getInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->info:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->orientation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1125
    iget v0, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 1113
    iput p1, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->height:I

    .line 1114
    return-void
.end method

.method public setInfo(Landroid/hardware/Camera$CameraInfo;)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->info:Landroid/hardware/Camera$CameraInfo;

    .line 1118
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 1121
    iput p1, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->orientation:I

    .line 1122
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 1109
    iput p1, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->width:I

    .line 1110
    return-void
.end method
