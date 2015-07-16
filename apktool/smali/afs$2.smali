.class final Lafs$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lafs$2;->a:Lafs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lafs$2;->a:Lafs;

    const/4 v1, 0x0

    iput v1, v0, Lafs;->g:I

    .line 210
    iget-object v0, p0, Lafs$2;->a:Lafs;

    iget-object v0, v0, Lafs;->d:Lafq;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lafq;->b()V

    .line 214
    :cond_0
    return-void
.end method
