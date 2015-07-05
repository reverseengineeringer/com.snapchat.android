.class public final Lxc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc$b;,
        Lxc$a;
    }
.end annotation


# instance fields
.field public final a:Lxc$a;

.field public final b:Lxe;

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lxc$b;

    invoke-direct {v0}, Lxc$b;-><init>()V

    new-instance v1, Lxe;

    invoke-direct {v1}, Lxe;-><init>()V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v2

    iget-object v2, v2, Lov;->mResolution:Laue;

    invoke-virtual {v2}, Laue;->b()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lxc;-><init>(Lxc$a;Lxe;I)V

    .line 19
    return-void
.end method

.method private constructor <init>(Lxc$a;Lxe;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lxc;->a:Lxc$a;

    .line 30
    iput-object p2, p0, Lxc;->b:Lxe;

    .line 31
    iput p3, p0, Lxc;->c:I

    .line 32
    return-void
.end method
