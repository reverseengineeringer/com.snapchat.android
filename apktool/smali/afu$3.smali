.class final Lafu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 269
    iput-object p1, p0, Lafu$3;->a:Lafu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lafu$3;->a:Lafu;

    iget-object v0, v0, Lafu;->e:Lafq;

    .line 273
    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lafu$3;->a:Lafu;

    iget-boolean v1, v1, Lafu;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 277
    invoke-interface {v0}, Lafq;->b()V

    .line 280
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
