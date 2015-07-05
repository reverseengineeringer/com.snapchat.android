.class final Lbmg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final E_()Lcak;
    .locals 1

    .prologue
    .line 819
    sget-object v0, Lcak;->b:Lcak;

    return-object v0
.end method

.method public final a_(Lbzu;J)V
    .locals 0

    .prologue
    .line 812
    invoke-virtual {p1, p2, p3}, Lbzu;->f(J)V

    .line 813
    return-void
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 816
    return-void
.end method
