.class final Laes$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 160
    iput-object p1, p0, Laes$1;->a:Laes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Laes$1;->a:Laes;

    iget-object v0, v0, Laes;->d:Laeq;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Laeq;->r_()V

    .line 167
    :cond_0
    return-void
.end method
