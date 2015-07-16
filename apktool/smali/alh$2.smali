.class final Lalh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lalh;->c()V
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
    .line 152
    iput-object p1, p0, Lalh$2;->this$0:Lalh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 155
    iget-object v0, p0, Lalh$2;->this$0:Lalh;

    invoke-static {v0}, Lalh;->e(Lalh;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lalh$2;->this$0:Lalh;

    invoke-static {v2}, Lalh;->a(Lalh;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lalh$2;->this$0:Lalh;

    invoke-static {v2}, Lalh;->b(Lalh;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 158
    iget-object v0, p0, Lalh$2;->this$0:Lalh;

    invoke-static {v0}, Lalh;->f(Lalh;)Lcom/snapchat/android/ui/TextureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 159
    iget-object v0, p0, Lalh$2;->this$0:Lalh;

    invoke-static {v0}, Lalh;->g(Lalh;)Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->PLAYING:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V

    .line 160
    iget-object v0, p0, Lalh$2;->this$0:Lalh;

    invoke-static {v0, v3}, Lalh;->a(Lalh;I)I

    .line 161
    iget-object v0, p0, Lalh$2;->this$0:Lalh;

    invoke-static {v0}, Lalh;->h(Lalh;)Lalg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lalh$2;->this$0:Lalh;

    invoke-static {v0}, Lalh;->h(Lalh;)Lalg;

    move-result-object v0

    invoke-interface {v0}, Lalg;->g()V

    .line 165
    :cond_0
    return-void
.end method
