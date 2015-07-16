.class public final Lchu;
.super Lcih;
.source "SourceFile"

# interfaces
.implements Lchw;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchu$a;
    }
.end annotation


# instance fields
.field private c:Lchi;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcih;-><init>()V

    .line 173
    return-void
.end method

.method public constructor <init>(JLchg;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcih;-><init>(JLchg;)V

    .line 238
    return-void
.end method

.method public constructor <init>(JLchl;)V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcih;-><init>(JLchl;)V

    .line 224
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lchu;->d:I

    packed-switch v0, :pswitch_data_0

    .line 474
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcih;->a(J)V

    .line 475
    return-void

    .line 458
    :pswitch_1
    iget-object v0, p0, Lchu;->c:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->d(J)J

    move-result-wide p1

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v0, p0, Lchu;->c:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->e(J)J

    move-result-wide p1

    goto :goto_0

    .line 464
    :pswitch_3
    iget-object v0, p0, Lchu;->c:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->f(J)J

    move-result-wide p1

    goto :goto_0

    .line 467
    :pswitch_4
    iget-object v0, p0, Lchu;->c:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->g(J)J

    move-result-wide p1

    goto :goto_0

    .line 470
    :pswitch_5
    iget-object v0, p0, Lchu;->c:Lchi;

    invoke-virtual {v0, p1, p2}, Lchi;->h(J)J

    move-result-wide p1

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lchg;)V
    .locals 0

    .prologue
    .line 564
    invoke-super {p0, p1}, Lcih;->a(Lchg;)V

    .line 565
    return-void
.end method

.method public final a(Lchl;)V
    .locals 4

    .prologue
    .line 602
    invoke-static {p1}, Lchk;->a(Lchl;)Lchl;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Lcif;->d()Lchg;

    move-result-object v1

    invoke-virtual {v1}, Lchg;->a()Lchl;

    move-result-object v1

    invoke-static {v1}, Lchk;->a(Lchl;)Lchl;

    move-result-object v1

    .line 604
    if-ne v0, v1, :cond_0

    .line 611
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-wide v2, p0, Lcih;->a:J

    invoke-virtual {v1, v0, v2, v3}, Lchl;->a(Lchl;J)J

    move-result-wide v2

    .line 609
    iget-object v1, p0, Lcih;->b:Lchg;

    invoke-virtual {v1, v0}, Lchg;->a(Lchl;)Lchg;

    move-result-object v0

    invoke-super {p0, v0}, Lcih;->a(Lchg;)V

    .line 610
    invoke-virtual {p0, v2, v3}, Lchu;->a(J)V

    goto :goto_0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1217
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1219
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 1230
    invoke-static {}, Lcld$a;->b()Lckx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lckx;->a(Lcia;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
