.class final Lcjg$b;
.super Lckf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcjg;


# direct methods
.method constructor <init>(Lcjg;Lchn;)V
    .locals 1

    .prologue
    .line 391
    iput-object p1, p0, Lcjg$b;->a:Lcjg;

    .line 392
    invoke-virtual {p2}, Lchn;->a()Lcho;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lckf;-><init>(Lchn;Lcho;)V

    .line 393
    return-void
.end method


# virtual methods
.method public final a(JI)J
    .locals 5

    .prologue
    .line 416
    iget-object v0, p0, Lcjg$b;->a:Lcjg;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcjg;->a(JLjava/lang/String;)V

    .line 417
    iget-object v0, p0, Lckf;->b:Lchn;

    invoke-virtual {v0, p1, p2, p3}, Lchn;->a(JI)J

    move-result-wide v0

    .line 418
    iget-object v2, p0, Lcjg$b;->a:Lcjg;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcjg;->a(JLjava/lang/String;)V

    .line 419
    return-wide v0
.end method

.method public final a(JJ)J
    .locals 5

    .prologue
    .line 423
    iget-object v0, p0, Lcjg$b;->a:Lcjg;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcjg;->a(JLjava/lang/String;)V

    .line 424
    iget-object v0, p0, Lckf;->b:Lchn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchn;->a(JJ)J

    move-result-wide v0

    .line 425
    iget-object v2, p0, Lcjg$b;->a:Lcjg;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcjg;->a(JLjava/lang/String;)V

    .line 426
    return-wide v0
.end method

.method public final b(JJ)I
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcjg$b;->a:Lcjg;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lcjg;->a(JLjava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcjg$b;->a:Lcjg;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lcjg;->a(JLjava/lang/String;)V

    .line 432
    iget-object v0, p0, Lckf;->b:Lchn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchn;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final c(JJ)J
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcjg$b;->a:Lcjg;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lcjg;->a(JLjava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcjg$b;->a:Lcjg;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lcjg;->a(JLjava/lang/String;)V

    .line 438
    iget-object v0, p0, Lckf;->b:Lchn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchn;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method
