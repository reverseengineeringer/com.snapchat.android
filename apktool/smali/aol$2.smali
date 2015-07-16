.class final Laol$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 301
    iput-object p1, p0, Laol$2;->a:Laol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Laok;->b(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 306
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 307
    iget-object v0, p0, Laol$2;->a:Laol;

    invoke-static {v0}, Laol;->a(Laol;)V

    .line 309
    :cond_0
    return v3
.end method
