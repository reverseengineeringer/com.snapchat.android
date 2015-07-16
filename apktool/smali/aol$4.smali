.class final Laol$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laol;


# direct methods
.method constructor <init>(Laol;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Laol$4;->a:Laol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Laol$4;->a:Laol;

    invoke-static {v1}, Laol;->b(Laol;)Laka;

    move-result-object v1

    aput-object v1, v0, v2

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Laol$4;->a:Laol;

    invoke-static {v1}, Laol;->b(Laol;)Laka;

    move-result-object v1

    aput-object v1, v0, v2

    .line 347
    iget-object v0, p0, Laol$4;->a:Laol;

    invoke-static {v0}, Laol;->e(Laol;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->b()V

    goto :goto_0
.end method
