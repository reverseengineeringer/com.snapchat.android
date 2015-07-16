.class final Lalh$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laww;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lalh;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lalh;


# direct methods
.method constructor <init>(Lalh;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lalh$6;->this$0:Lalh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lawm;Lawv;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lalh$6;->this$0:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p1, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    .line 369
    iget-object v0, p1, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lalh$6;->this$0:Lalh;

    invoke-static {v0}, Lalh;->j(Lalh;)Z

    .line 371
    iget-object v0, p0, Lalh$6;->this$0:Lalh;

    invoke-static {v0, v2}, Lalh;->b(Lalh;Z)Z

    .line 372
    iget-object v0, p0, Lalh$6;->this$0:Lalh;

    invoke-static {v0}, Lalh;->e(Lalh;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lalh$6;->this$0:Lalh;

    invoke-virtual {v0}, Lalh;->c()V

    .line 379
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 367
    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lalh$6;->this$0:Lalh;

    invoke-static {v0, v1}, Lalh;->b(Lalh;Z)Z

    .line 377
    iget-object v0, p0, Lalh$6;->this$0:Lalh;

    invoke-static {v0}, Lalh;->g(Lalh;)Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->ERROR:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    goto :goto_1
.end method
