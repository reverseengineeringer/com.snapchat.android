.class final Lxd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxd;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lxd;


# direct methods
.method constructor <init>(Lxd;I)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lxd$2;->b:Lxd;

    iput p2, p0, Lxd$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lxd$2;->b:Lxd;

    iget-object v0, v0, Lxd;->a:Lxc;

    iget v1, p0, Lxd$2;->a:I

    invoke-interface {v0, v1}, Lxc;->b(I)V

    .line 55
    return-void
.end method
