.class final Laes$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laes;


# direct methods
.method constructor <init>(Laes;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Laes$2;->a:Laes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Laes$2;->a:Laes;

    iget-object v0, v0, Laes;->d:Laeq;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Laeq;->b()V

    .line 178
    :cond_0
    return-void
.end method
