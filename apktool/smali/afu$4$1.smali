.class final Lafu$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafu$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafu$4;


# direct methods
.method constructor <init>(Lafu$4;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lafu$4$1;->a:Lafu$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lafu$4$1;->a:Lafu$4;

    iget-object v0, v0, Lafu$4;->a:Lafu;

    invoke-virtual {v0}, Lafu;->b()V

    .line 303
    iget-object v0, p0, Lafu$4$1;->a:Lafu$4;

    iget-object v0, v0, Lafu$4;->a:Lafu;

    invoke-virtual {v0}, Lafu;->a()V

    .line 304
    return-void
.end method
