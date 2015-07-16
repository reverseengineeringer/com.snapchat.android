.class final Lxd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxd;->a(Lwy$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwy$b;

.field final synthetic b:I

.field final synthetic c:Lxd;


# direct methods
.method constructor <init>(Lxd;Lwy$b;I)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lxd$1;->c:Lxd;

    iput-object p2, p0, Lxd$1;->a:Lwy$b;

    iput p3, p0, Lxd$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lxd$1;->c:Lxd;

    iget-object v0, v0, Lxd;->a:Lxc;

    iget-object v1, p0, Lxd$1;->a:Lwy$b;

    iget v2, p0, Lxd$1;->b:I

    invoke-interface {v0, v1, v2}, Lxc;->a(Lwy$b;I)V

    .line 35
    return-void
.end method
