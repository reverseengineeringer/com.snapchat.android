.class final Lwi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwi;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lwi;


# direct methods
.method constructor <init>(Lwi;[B)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lwi$1;->b:Lwi;

    iput-object p2, p0, Lwi$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lwi$1;->b:Lwi;

    invoke-static {v0}, Lwi;->b(Lwi;)Lwc$a;

    move-result-object v0

    iget-object v1, p0, Lwi$1;->a:[B

    iget-object v2, p0, Lwi$1;->b:Lwi;

    invoke-static {v2}, Lwi;->a(Lwi;)Lwc$b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lwc$a;->a([BLwc$b;)V

    .line 35
    return-void
.end method
