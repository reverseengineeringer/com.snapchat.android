.class final Lakm$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakm;->i()V
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
    .line 265
    iput-object p1, p0, Lakm$3;->this$0:Lakm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 268
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Chat video prepared %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v3}, Lakm;->a(Lakm;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v3}, Lakm;->b(Lakm;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 270
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 271
    if-lez v0, :cond_0

    if-gtz v1, :cond_2

    .line 274
    :cond_0
    iget-object v2, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v2}, Lakm;->f(Lakm;)Lcom/snapchat/android/ui/TextureVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/TextureVideoView;->a()V

    .line 275
    const-string v2, "[%d] Video %s could not be loaded due to invalid dimensions: %d x %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v4}, Lakm;->a(Lakm;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v4}, Lakm;->b(Lakm;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v1, v0, v6}, Lakm;->a(Lakm;Ljava/lang/String;I)V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 280
    :cond_2
    iget-object v0, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v0, v7}, Lakm;->a(Lakm;I)I

    .line 282
    iget-object v0, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v0}, Lakm;->i(Lakm;)Z

    .line 283
    iget-object v0, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v0, v5}, Lakm;->a(Lakm;Z)Z

    .line 285
    iget-object v0, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v0}, Lakm;->b(Lakm;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->M()Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 289
    :cond_3
    iget-object v0, p0, Lakm$3;->this$0:Lakm;

    invoke-static {v0}, Lakm;->e(Lakm;)I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 290
    iget-object v0, p0, Lakm$3;->this$0:Lakm;

    invoke-virtual {v0}, Lakm;->c()V

    goto :goto_0
.end method
