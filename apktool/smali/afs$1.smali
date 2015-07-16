.class final Lafs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 194
    iput-object p1, p0, Lafs$1;->a:Lafs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lafs$1;->a:Lafs;

    iget v1, v0, Lafs;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lafs;->g:I

    .line 198
    iget-object v0, p0, Lafs$1;->a:Lafs;

    iget-object v0, v0, Lafs;->d:Lafq;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lafq;->p_()V

    .line 202
    :cond_0
    return-void
.end method
