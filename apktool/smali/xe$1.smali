.class final Lxe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxe;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lxe;


# direct methods
.method constructor <init>(Lxe;[B)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lxe$1;->b:Lxe;

    iput-object p2, p0, Lxe$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lxe$1;->b:Lxe;

    invoke-static {v0}, Lxe;->b(Lxe;)Lwy$a;

    move-result-object v0

    iget-object v1, p0, Lxe$1;->a:[B

    iget-object v2, p0, Lxe$1;->b:Lxe;

    invoke-static {v2}, Lxe;->a(Lxe;)Lwy$b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lwy$a;->a([BLwy$b;)V

    .line 35
    return-void
.end method
