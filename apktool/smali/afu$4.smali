.class final Lafu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafu;


# direct methods
.method constructor <init>(Lafu;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lafu$4;->a:Lafu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 288
    const-string v0, "Error=%s extra=%d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Laok;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lafu$4;->a:Lafu;

    iget v1, v1, Lafu;->f:I

    if-lez v1, :cond_1

    .line 295
    iget-object v0, p0, Lafu$4;->a:Lafu;

    iget v1, v0, Lafu;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lafu;->f:I

    .line 296
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lafu$4;->a:Lafu;

    iget v1, v1, Lafu;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 298
    iget-object v0, p0, Lafu$4;->a:Lafu;

    iget-object v0, v0, Lafu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lafu$4$1;

    invoke-direct {v1, p0}, Lafu$4$1;-><init>(Lafu$4;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->post(Ljava/lang/Runnable;)Z

    .line 319
    :cond_0
    :goto_0
    return v3

    .line 309
    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 312
    iget-object v1, p0, Lafu$4;->a:Lafu;

    iget-object v1, v1, Lafu;->e:Lafq;

    .line 313
    if-eqz v1, :cond_0

    .line 314
    invoke-interface {v1, v0}, Lafq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
