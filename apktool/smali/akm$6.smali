.class final Lakm$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakm;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lakm;


# direct methods
.method constructor <init>(Lakm;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lakm$6;->this$0:Lakm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    const-string v3, "ChatVideoItemProxy"

    const-string v4, "[%d] Chat video overlay bitmap decoded, bitmap null? %b"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lakm$6;->this$0:Lakm;

    invoke-static {v0}, Lakm;->a(Lakm;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    iget-object v0, p1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lakm$6;->this$0:Lakm;

    invoke-static {v0}, Lakm;->j(Lakm;)Z

    .line 371
    iget-object v0, p0, Lakm$6;->this$0:Lakm;

    invoke-static {v0, v2}, Lakm;->b(Lakm;Z)Z

    .line 372
    iget-object v0, p0, Lakm$6;->this$0:Lakm;

    invoke-static {v0}, Lakm;->e(Lakm;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lakm$6;->this$0:Lakm;

    invoke-virtual {v0}, Lakm;->c()V

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
    iget-object v0, p0, Lakm$6;->this$0:Lakm;

    invoke-static {v0, v1}, Lakm;->b(Lakm;Z)Z

    .line 377
    iget-object v0, p0, Lakm$6;->this$0:Lakm;

    invoke-static {v0}, Lakm;->g(Lakm;)Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->ERROR:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    goto :goto_1
.end method
