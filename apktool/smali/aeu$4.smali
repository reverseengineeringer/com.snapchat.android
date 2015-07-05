.class final Laeu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeu;


# direct methods
.method constructor <init>(Laeu;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Laeu$4;->a:Laeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    const-string v0, "Error=%s extra=%d"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lann;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "VideoViewController"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v1, p0, Laeu$4;->a:Laeu;

    iget v1, v1, Laeu;->f:I

    if-lez v1, :cond_1

    .line 260
    iget-object v0, p0, Laeu$4;->a:Laeu;

    iget v1, v0, Laeu;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Laeu;->f:I

    .line 261
    const-string v0, "VideoViewController"

    const-string v1, "Retrying the media player following an error, %d retries remain"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Laeu$4;->a:Laeu;

    iget v3, v3, Laeu;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Laeu$4;->a:Laeu;

    iget-object v0, v0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Laeu$4$1;

    invoke-direct {v1, p0}, Laeu$4$1;-><init>(Laeu$4;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_0
    :goto_0
    return v6

    .line 274
    :cond_1
    const-string v1, "VideoViewController"

    const-string v2, "Aborting retry following an error, %d retries were attempted"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Laeu$4;->a:Laeu;

    iget-object v1, v1, Laeu;->e:Laeq;

    .line 278
    if-eqz v1, :cond_0

    .line 279
    invoke-interface {v1, v0}, Laeq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
