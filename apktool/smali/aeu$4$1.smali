.class final Laeu$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeu$4;


# direct methods
.method constructor <init>(Laeu$4;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Laeu$4$1;->a:Laeu$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Laeu$4$1;->a:Laeu$4;

    iget-object v0, v0, Laeu$4;->a:Laeu;

    invoke-virtual {v0}, Laeu;->b()V

    .line 268
    iget-object v0, p0, Laeu$4$1;->a:Laeu$4;

    iget-object v0, v0, Laeu$4;->a:Laeu;

    invoke-virtual {v0}, Laeu;->a()V

    .line 269
    return-void
.end method
