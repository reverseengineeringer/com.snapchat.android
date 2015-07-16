.class final Lael$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lael$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lael$b;

.field final synthetic b:Lael$1;


# direct methods
.method constructor <init>(Lael$1;Lael$b;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lael$1$2;->b:Lael$1;

    iput-object p2, p0, Lael$1$2;->a:Lael$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 305
    iget-object v0, p0, Lael$1$2;->b:Lael$1;

    iget-object v0, v0, Lael$1;->d:Lael;

    iget-object v0, v0, Lael;->a:Lafg;

    iget-object v1, p0, Lael$1$2;->b:Lael$1;

    iget-object v1, v1, Lael$1;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lael$1$2;->a:Lael$b;

    invoke-static {}, Lbhp;->a()V

    iget-object v3, v0, Lafg;->a:Lawn;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to load brand icon but bitmap loader not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Lawv$a;

    invoke-direct {v3}, Lawv$a;-><init>()V

    const v4, 0x7f0200c9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lawv$a;->mResId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lawv$a;->mRequestId:Ljava/lang/String;

    iput-object v1, v3, Lawv$a;->mImageView:Landroid/widget/ImageView;

    iput-boolean v5, v3, Lawv$a;->mRequireExactDimensions:Z

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    iput v4, v3, Lawv$a;->mWidth:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Lawv$a;->mHeight:I

    const/4 v4, 0x0

    iput-object v4, v3, Lawv$a;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3}, Lawv$a;->a()Lawv;

    move-result-object v3

    iget-object v4, v0, Lafg;->a:Lawn;

    new-array v5, v5, [Laww;

    const/4 v6, 0x0

    new-instance v7, Lafg$2;

    invoke-direct {v7, v0, v2, v1}, Lafg$2;-><init>(Lafg;Lafg$a;Landroid/widget/ImageView;)V

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Lawn;->a(Lawv;[Laww;)V

    .line 306
    :cond_1
    return-void
.end method
