.class final Lano$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lano;


# direct methods
.method constructor <init>(Lano;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lano$2;->a:Lano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 425
    invoke-static {}, Lano;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNAP-VIEW: onInfo: %s extra=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Lann;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 428
    iget-object v0, p0, Lano$2;->a:Lano;

    invoke-static {v0}, Lano;->a(Lano;)V

    .line 430
    :cond_0
    return v5
.end method
