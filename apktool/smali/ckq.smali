.class public final Lckq;
.super Lckf;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lchn;Lcho;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lckf;-><init>(Lchn;Lcho;)V

    .line 48
    const/16 v0, 0x64

    iput v0, p0, Lckq;->a:I

    .line 52
    return-void
.end method


# virtual methods
.method public final a(JI)J
    .locals 5

    .prologue
    .line 91
    int-to-long v0, p3

    iget v2, p0, Lckq;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 92
    iget-object v2, p0, Lckf;->b:Lchn;

    invoke-virtual {v2, p1, p2, v0, v1}, Lchn;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 7

    .prologue
    .line 96
    iget v2, p0, Lckq;->a:I

    packed-switch v2, :pswitch_data_0

    int-to-long v0, v2

    mul-long/2addr v0, p3

    int-to-long v4, v2

    div-long v4, v0, v4

    cmp-long v3, v4, p3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Multiplication overflows a long: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " * "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Multiplication overflows a long: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " * "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    neg-long p3, p3

    .line 97
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lckf;->b:Lchn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchn;->a(JJ)J

    move-result-wide v0

    return-wide v0

    .line 96
    :pswitch_2
    const-wide/16 p3, 0x0

    goto :goto_0

    :cond_1
    move-wide p3, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(JJ)I
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lckf;->b:Lchn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchn;->b(JJ)I

    move-result v0

    iget v1, p0, Lckq;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final c(JJ)J
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lckf;->b:Lchn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchn;->c(JJ)J

    move-result-wide v0

    iget v2, p0, Lckq;->a:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()J
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lckf;->b:Lchn;

    invoke-virtual {v0}, Lchn;->d()J

    move-result-wide v0

    iget v2, p0, Lckq;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    instance-of v2, p1, Lckq;

    if-eqz v2, :cond_3

    .line 133
    check-cast p1, Lckq;

    .line 134
    iget-object v2, p0, Lckf;->b:Lchn;

    iget-object v3, p1, Lckf;->b:Lchn;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lckd;->d:Lcho;

    iget-object v3, p1, Lckd;->d:Lcho;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lckq;->a:I

    iget v3, p1, Lckq;->a:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 147
    iget v0, p0, Lckq;->a:I

    int-to-long v0, v0

    .line 148
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 149
    iget-object v1, p0, Lckd;->d:Lcho;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    iget-object v1, p0, Lckf;->b:Lchn;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    return v0
.end method
