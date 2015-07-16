.class public final Lclu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lclt;


# direct methods
.method public constructor <init>(Lclt;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lclu;->a:Lclt;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lclu;->a:Lclt;

    invoke-virtual {v0}, Lclt;->a()F

    move-result v0

    iget-object v1, p0, Lclu;->a:Lclt;

    invoke-virtual {v1}, Lclt;->b()F

    move-result v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lclu;->a:Lclt;

    invoke-virtual {v2}, Lclt;->b()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
