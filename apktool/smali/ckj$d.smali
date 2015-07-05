.class final Lckj$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final a:Lckj$b;

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method private constructor <init>(Lckj$b;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p1, p0, Lckj$d;->a:Lckj$b;

    .line 749
    iput-object p2, p0, Lckj$d;->b:Ljava/lang/String;

    .line 750
    iput p3, p0, Lckj$d;->c:I

    .line 751
    return-void
.end method

.method static a(Ljava/io/DataInput;)Lckj$d;
    .locals 10

    .prologue
    .line 740
    new-instance v7, Lckj$d;

    new-instance v0, Lckj$b;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    int-to-char v1, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v5

    invoke-static {p0}, Lckj;->a(Ljava/io/DataInput;)J

    move-result-wide v8

    long-to-int v6, v8

    invoke-direct/range {v0 .. v6}, Lckj$b;-><init>(CIIIZI)V

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lckj;->a(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v7, v0, v1, v2}, Lckj$d;-><init>(Lckj$b;Ljava/lang/String;I)V

    return-object v7
.end method


# virtual methods
.method public final a(JII)J
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 761
    iget-object v2, p0, Lckj$d;->a:Lckj$b;

    iget-char v1, v2, Lckj$b;->a:C

    const/16 v3, 0x77

    if-ne v1, v3, :cond_2

    add-int/2addr p3, p4

    :cond_0
    :goto_0
    int-to-long v4, p3

    add-long/2addr v4, p1

    invoke-static {}, Lcic;->L()Lcic;

    move-result-object v3

    invoke-virtual {v3}, Lcgf;->C()Lcgh;

    move-result-object v1

    iget v6, v2, Lckj$b;->b:I

    invoke-virtual {v1, v4, v5, v6}, Lcgh;->b(JI)J

    move-result-wide v6

    invoke-virtual {v3}, Lcgf;->e()Lcgh;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v0}, Lcgh;->b(JI)J

    move-result-wide v0

    invoke-virtual {v3}, Lcgf;->e()Lcgh;

    move-result-object v6

    iget v7, v2, Lckj$b;->f:I

    invoke-virtual {v6, v0, v1, v7}, Lcgh;->a(JI)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->a(Lcgf;J)J

    move-result-wide v0

    iget v6, v2, Lckj$b;->d:I

    if-nez v6, :cond_3

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    invoke-virtual {v3}, Lcgf;->E()Lcgh;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v8}, Lcgh;->a(JI)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->a(Lcgf;J)J

    move-result-wide v0

    :cond_1
    :goto_1
    int-to-long v2, p3

    sub-long/2addr v0, v2

    return-wide v0

    :cond_2
    iget-char v1, v2, Lckj$b;->a:C

    const/16 v3, 0x73

    if-eq v1, v3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->c(Lcgf;J)J

    move-result-wide v0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    invoke-virtual {v3}, Lcgf;->E()Lcgh;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v8}, Lcgh;->a(JI)J

    move-result-wide v0

    invoke-virtual {v3}, Lcgf;->C()Lcgh;

    move-result-object v4

    iget v5, v2, Lckj$b;->b:I

    invoke-virtual {v4, v0, v1, v5}, Lcgh;->b(JI)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->a(Lcgf;J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->c(Lcgf;J)J

    move-result-wide v0

    goto :goto_1
.end method

.method public final b(JII)J
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 768
    iget-object v2, p0, Lckj$d;->a:Lckj$b;

    iget-char v1, v2, Lckj$b;->a:C

    const/16 v3, 0x77

    if-ne v1, v3, :cond_2

    add-int/2addr p3, p4

    :cond_0
    :goto_0
    int-to-long v4, p3

    add-long/2addr v4, p1

    invoke-static {}, Lcic;->L()Lcic;

    move-result-object v3

    invoke-virtual {v3}, Lcgf;->C()Lcgh;

    move-result-object v1

    iget v6, v2, Lckj$b;->b:I

    invoke-virtual {v1, v4, v5, v6}, Lcgh;->b(JI)J

    move-result-wide v6

    invoke-virtual {v3}, Lcgf;->e()Lcgh;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v0}, Lcgh;->b(JI)J

    move-result-wide v0

    invoke-virtual {v3}, Lcgf;->e()Lcgh;

    move-result-object v6

    iget v7, v2, Lckj$b;->f:I

    invoke-virtual {v6, v0, v1, v7}, Lcgh;->a(JI)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->b(Lcgf;J)J

    move-result-wide v0

    iget v6, v2, Lckj$b;->d:I

    if-nez v6, :cond_3

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lcgf;->E()Lcgh;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v8}, Lcgh;->a(JI)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->b(Lcgf;J)J

    move-result-wide v0

    :cond_1
    :goto_1
    int-to-long v2, p3

    sub-long/2addr v0, v2

    return-wide v0

    :cond_2
    iget-char v1, v2, Lckj$b;->a:C

    const/16 v3, 0x73

    if-eq v1, v3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->c(Lcgf;J)J

    move-result-wide v0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    invoke-virtual {v3}, Lcgf;->E()Lcgh;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v8}, Lcgh;->a(JI)J

    move-result-wide v0

    invoke-virtual {v3}, Lcgf;->C()Lcgh;

    move-result-object v4

    iget v5, v2, Lckj$b;->b:I

    invoke-virtual {v4, v0, v1, v5}, Lcgh;->b(JI)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->b(Lcgf;J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lckj$b;->c(Lcgf;J)J

    move-result-wide v0

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 780
    if-ne p0, p1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 783
    :cond_1
    instance-of v2, p1, Lckj$d;

    if-eqz v2, :cond_3

    .line 784
    check-cast p1, Lckj$d;

    .line 785
    iget v2, p0, Lckj$d;->c:I

    iget v3, p1, Lckj$d;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lckj$d;->b:Ljava/lang/String;

    iget-object v3, p1, Lckj$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lckj$d;->a:Lckj$b;

    iget-object v3, p1, Lckj$d;->a:Lckj$b;

    invoke-virtual {v2, v3}, Lckj$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 790
    goto :goto_0
.end method
