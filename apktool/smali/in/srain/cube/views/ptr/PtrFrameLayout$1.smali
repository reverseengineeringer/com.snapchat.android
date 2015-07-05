.class final Lin/srain/cube/views/ptr/PtrFrameLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/srain/cube/views/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lbuu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/PtrFrameLayout;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$1;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 464
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$1;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    iget-object v0, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "mRefreshCompleteHook resume."

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$1;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 468
    return-void
.end method
