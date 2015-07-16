.class final Lckj$a;
.super Lckd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lckj;


# direct methods
.method constructor <init>(Lckj;Lcho;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lckj$a;->a:Lckj;

    .line 153
    invoke-direct {p0, p2}, Lckd;-><init>(Lcho;)V

    .line 154
    return-void
.end method


# virtual methods
.method public final a(JI)J
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lckj$a;->a:Lckj;

    invoke-virtual {v0, p1, p2, p3}, Lckj;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lckj$a;->a:Lckj;

    invoke-virtual {v0, p1, p2, p3, p4}, Lckj;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JJ)I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lckj$a;->a:Lckj;

    invoke-virtual {v0, p1, p2, p3, p4}, Lckj;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final c(JJ)J
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lckj$a;->a:Lckj;

    invoke-virtual {v0, p1, p2, p3, p4}, Lckj;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lckj$a;->a:Lckj;

    iget-wide v0, v0, Lckj;->b:J

    return-wide v0
.end method
