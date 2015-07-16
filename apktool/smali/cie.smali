.class public abstract Lcie;
.super Lcif;
.source "SourceFile"

# interfaces
.implements Lchy;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcif;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public final f()I
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lcie;->d()Lchg;

    move-result-object v0

    invoke-virtual {v0}, Lchg;->E()Lchi;

    move-result-object v0

    invoke-virtual {p0}, Lcie;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lchi;->a(J)I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p0}, Lcie;->d()Lchg;

    move-result-object v0

    invoke-virtual {v0}, Lchg;->u()Lchi;

    move-result-object v0

    invoke-virtual {p0}, Lcie;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lchi;->a(J)I

    move-result v0

    return v0
.end method
