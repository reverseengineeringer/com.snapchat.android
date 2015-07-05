.class final Lakm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lakm;->c()V
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
    .line 152
    iput-object p1, p0, Lakm$2;->this$0:Lakm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 155
    iget-object v0, p0, Lakm$2;->this$0:Lakm;

    invoke-static {v0}, Lakm;->e(Lakm;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 156
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Starting chat video playback after onSeekComplete %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lakm$2;->this$0:Lakm;

    invoke-static {v4}, Lakm;->a(Lakm;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lakm$2;->this$0:Lakm;

    invoke-static {v4}, Lakm;->b(Lakm;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lakm$2;->this$0:Lakm;

    invoke-static {v0}, Lakm;->f(Lakm;)Lcom/snapchat/android/ui/TextureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 159
    iget-object v0, p0, Lakm$2;->this$0:Lakm;

    invoke-static {v0}, Lakm;->g(Lakm;)Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->PLAYING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    .line 160
    iget-object v0, p0, Lakm$2;->this$0:Lakm;

    invoke-static {v0, v5}, Lakm;->a(Lakm;I)I

    .line 161
    iget-object v0, p0, Lakm$2;->this$0:Lakm;

    invoke-static {v0}, Lakm;->h(Lakm;)Lakl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lakm$2;->this$0:Lakm;

    invoke-static {v0}, Lakm;->h(Lakm;)Lakl;

    move-result-object v0

    invoke-interface {v0}, Lakl;->g()V

    .line 165
    :cond_0
    return-void
.end method
