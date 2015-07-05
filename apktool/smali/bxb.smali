.class public final Lbxb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lbzq;

.field b:Lbzq;


# direct methods
.method public constructor <init>(Lbzq;Lbzq;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lbxb;->a:Lbzq;

    .line 30
    iput-object v0, p0, Lbxb;->b:Lbzq;

    .line 42
    iput-object p1, p0, Lbxb;->a:Lbzq;

    .line 43
    iput-object p2, p0, Lbxb;->b:Lbzq;

    .line 44
    return-void
.end method
