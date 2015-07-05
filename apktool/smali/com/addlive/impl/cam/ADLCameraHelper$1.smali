.class Lcom/addlive/impl/cam/ADLCameraHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/impl/cam/ADLCameraHelper;->configure(Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/impl/cam/ADLCameraHelper;

.field final synthetic val$result:Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;

.field final synthetic val$syncLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/addlive/impl/cam/ADLCameraHelper;Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/addlive/impl/cam/ADLCameraHelper$1;->this$0:Lcom/addlive/impl/cam/ADLCameraHelper;

    iput-object p2, p0, Lcom/addlive/impl/cam/ADLCameraHelper$1;->val$syncLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/addlive/impl/cam/ADLCameraHelper$1;->val$result:Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/addlive/impl/cam/ADLCameraHelper$1;->this$0:Lcom/addlive/impl/cam/ADLCameraHelper;

    iget-object v1, p0, Lcom/addlive/impl/cam/ADLCameraHelper$1;->val$syncLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/addlive/impl/cam/ADLCameraHelper$1;->val$result:Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;

    # invokes: Lcom/addlive/impl/cam/ADLCameraHelper;->configInternal(Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V
    invoke-static {v0, v1, v2}, Lcom/addlive/impl/cam/ADLCameraHelper;->access$100(Lcom/addlive/impl/cam/ADLCameraHelper;Ljava/util/concurrent/CountDownLatch;Lcom/addlive/impl/cam/ADLCameraHelper$AsyncResult;)V

    .line 124
    return-void
.end method
