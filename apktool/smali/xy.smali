.class public final Lxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxy$b;,
        Lxy$a;
    }
.end annotation


# instance fields
.field public final a:Lxy$a;

.field public final b:Lya;

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lxy$b;

    invoke-direct {v0}, Lxy$b;-><init>()V

    new-instance v1, Lya;

    invoke-direct {v1}, Lya;-><init>()V

    invoke-static {}, Lpm;->a()Lpm;

    move-result-object v2

    iget-object v2, v2, Lpm;->mResolution:Lavc;

    invoke-virtual {v2}, Lavc;->b()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lxy;-><init>(Lxy$a;Lya;I)V

    .line 19
    return-void
.end method

.method private constructor <init>(Lxy$a;Lya;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lxy;->a:Lxy$a;

    .line 30
    iput-object p2, p0, Lxy;->b:Lya;

    .line 31
    iput p3, p0, Lxy;->c:I

    .line 32
    return-void
.end method
