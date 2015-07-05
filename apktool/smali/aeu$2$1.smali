.class final Laeu$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu$2;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeq;

.field final synthetic b:Laeu$2;


# direct methods
.method constructor <init>(Laeu$2;Laeq;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Laeu$2$1;->b:Laeu$2;

    iput-object p2, p0, Laeu$2$1;->a:Laeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Laeu$2$1;->a:Laeq;

    invoke-interface {v0}, Laeq;->b()V

    .line 219
    return-void
.end method
