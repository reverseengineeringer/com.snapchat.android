.class final Lbxd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lbzq;

.field b:I


# direct methods
.method public constructor <init>(Lbzq;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lbxd;->a:Lbzq;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lbxd;->b:I

    .line 41
    iput-object p1, p0, Lbxd;->a:Lbzq;

    .line 42
    iput p2, p0, Lbxd;->b:I

    .line 43
    return-void
.end method
