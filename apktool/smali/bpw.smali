.class public final Lbpw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbpv;

.field public final b:Lbpy;


# direct methods
.method public constructor <init>(Lbpy;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lbpv;

    invoke-direct {v0}, Lbpv;-><init>()V

    invoke-direct {p0, p1, v0}, Lbpw;-><init>(Lbpy;Lbpv;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Lbpy;Lbpv;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lbpw;->b:Lbpy;

    .line 27
    iput-object p2, p0, Lbpw;->a:Lbpv;

    .line 28
    return-void
.end method
