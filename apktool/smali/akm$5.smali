.class final Lakm$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 307
    iput-object p1, p0, Lakm$5;->this$0:Lakm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 310
    const-string v0, "ChatVideoItemProxy"

    const-string v1, "[%d] Chat video playback completed %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lakm$5;->this$0:Lakm;

    invoke-static {v4}, Lakm;->a(Lakm;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lakm$5;->this$0:Lakm;

    invoke-static {v3}, Lakm;->b(Lakm;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lakm$5;->this$0:Lakm;

    invoke-static {v0, v5}, Lakm;->a(Lakm;Z)Z

    .line 312
    invoke-virtual {p1, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 313
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 314
    return-void
.end method
