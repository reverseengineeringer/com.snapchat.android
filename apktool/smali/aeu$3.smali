.class final Laeu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 234
    iput-object p1, p0, Laeu$3;->a:Laeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Laeu$3;->a:Laeu;

    iget-object v0, v0, Laeu;->e:Laeq;

    .line 238
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Laeu$3;->a:Laeu;

    iget-boolean v1, v1, Laeu;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 242
    invoke-interface {v0}, Laeq;->b()V

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
