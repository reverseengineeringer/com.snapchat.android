.class public final Lckt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcks;


# direct methods
.method public constructor <init>(Lcks;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lckt;->a:Lcks;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lckt;->a:Lcks;

    invoke-virtual {v0}, Lcks;->a()F

    move-result v0

    iget-object v1, p0, Lckt;->a:Lcks;

    invoke-virtual {v1}, Lcks;->b()F

    move-result v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lckt;->a:Lcks;

    invoke-virtual {v2}, Lcks;->b()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
