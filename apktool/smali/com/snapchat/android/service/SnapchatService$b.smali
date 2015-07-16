.class final Lcom/snapchat/android/service/SnapchatService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/service/SnapchatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/service/SnapchatService;

.field private final b:Lanh;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/service/SnapchatService;Lanh;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/snapchat/android/service/SnapchatService$b;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Lcom/snapchat/android/service/SnapchatService$b;->b:Lanh;

    .line 349
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$b;->b:Lanh;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService$b;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v1}, Lcom/snapchat/android/service/SnapchatService;->a(Lcom/snapchat/android/service/SnapchatService;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lanh;->a(Landroid/content/Context;)V

    .line 354
    invoke-static {}, Lcom/snapchat/android/service/SnapchatService;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/service/SnapchatService$a;

    iget-object v2, p0, Lcom/snapchat/android/service/SnapchatService$b;->a:Lcom/snapchat/android/service/SnapchatService;

    iget-object v3, p0, Lcom/snapchat/android/service/SnapchatService$b;->b:Lanh;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/service/SnapchatService$a;-><init>(Lcom/snapchat/android/service/SnapchatService;Lanh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 358
    new-instance v1, Los;

    iget-object v2, p0, Lcom/snapchat/android/service/SnapchatService$b;->b:Lanh;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Los;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ProcessRunnable halted "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/snapchat/android/service/SnapchatService;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/service/SnapchatService$b$1;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/service/SnapchatService$b$1;-><init>(Lcom/snapchat/android/service/SnapchatService$b;Ljava/lang/RuntimeException;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$b;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v0}, Lcom/snapchat/android/service/SnapchatService;->b(Lcom/snapchat/android/service/SnapchatService;)Lban;

    move-result-object v0

    invoke-virtual {v0, v1}, Lban;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
