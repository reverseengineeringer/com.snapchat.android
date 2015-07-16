.class final Lalh$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lalh;->i()V
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
    .line 307
    iput-object p1, p0, Lalh$5;->this$0:Lalh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 310
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lalh$5;->this$0:Lalh;

    invoke-static {v2}, Lalh;->a(Lalh;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lalh$5;->this$0:Lalh;

    invoke-static {v1}, Lalh;->b(Lalh;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 311
    iget-object v0, p0, Lalh$5;->this$0:Lalh;

    invoke-static {v0, v3}, Lalh;->a(Lalh;Z)Z

    .line 312
    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 313
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 314
    return-void
.end method
