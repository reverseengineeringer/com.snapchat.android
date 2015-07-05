.class final Laeu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 180
    iput-object p1, p0, Laeu$1;->a:Laeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Laeu$1;->a:Laeu;

    iget-object v0, v0, Laeu;->e:Laeq;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Laeq;->r_()V

    .line 190
    :cond_0
    iget-object v0, p0, Laeu$1;->a:Laeu;

    iget-boolean v0, v0, Laeu;->d:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Laeu$1;->a:Laeu;

    iget-object v0, v0, Laeu;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 193
    :cond_1
    return-void
.end method
