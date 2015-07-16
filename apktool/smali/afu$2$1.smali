.class final Lafu$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafu$2;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafq;

.field final synthetic b:Lafu$2;


# direct methods
.method constructor <init>(Lafu$2;Lafq;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lafu$2$1;->b:Lafu$2;

    iput-object p2, p0, Lafu$2$1;->a:Lafq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lafu$2$1;->a:Lafq;

    invoke-interface {v0}, Lafq;->b()V

    .line 254
    return-void
.end method
