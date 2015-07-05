.class Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/cam/ADLCameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncResult"
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field isSuccess:Z

.field final synthetic this$0:Lcom/addlive/impl/cam/ADLCameraHelper;


# direct methods
.method private constructor <init>(Lcom/addlive/impl/cam/ADLCameraHelper;)V
    .locals 1

    .prologue
    .line 444
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->this$0:Lcom/addlive/impl/cam/ADLCameraHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->isSuccess:Z

    .line 447
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;->error:Ljava/lang/String;

    .line 448
    return-void
.end method

.method synthetic constructor <init>(Lcom/addlive/impl/cam/ADLCameraHelper;Lcom/addlive/impl/cam/ADLCameraHelper$1;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;-><init>(Lcom/addlive/impl/cam/ADLCameraHelper;)V

    return-void
.end method
