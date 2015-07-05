.class public abstract Lchd;
.super Lche;
.source "SourceFile"

# interfaces
.implements Lcgx;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lche;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public final f()I
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lchd;->d()Lcgf;

    move-result-object v0

    invoke-virtual {v0}, Lcgf;->E()Lcgh;

    move-result-object v0

    invoke-virtual {p0}, Lchd;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p0}, Lchd;->d()Lcgf;

    move-result-object v0

    invoke-virtual {v0}, Lcgf;->u()Lcgh;

    move-result-object v0

    invoke-virtual {p0}, Lchd;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    return v0
.end method
