.class public final Lbp;
.super Lbf;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lbk;Lbo;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lbf;-><init>(Lbk;Lbo;)V

    .line 20
    return-void
.end method

.method public static c()Lbp;
    .locals 4

    .prologue
    .line 15
    new-instance v1, Lbp;

    new-instance v2, Lbk;

    invoke-direct {v2}, Lbk;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    new-instance v0, Lbe$a;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-direct {v0, v3}, Lbe$a;-><init>(Landroid/view/Choreographer;)V

    :goto_0
    invoke-direct {v1, v2, v0}, Lbp;-><init>(Lbk;Lbo;)V

    return-object v1

    :cond_0
    new-instance v0, Lbe$b;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v3}, Lbe$b;-><init>(Landroid/os/Handler;)V

    goto :goto_0
.end method
