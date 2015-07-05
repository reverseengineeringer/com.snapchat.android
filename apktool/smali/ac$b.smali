.class public final Lac$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput p1, p0, Lac$b;->a:I

    .line 586
    iput p2, p0, Lac$b;->b:I

    .line 587
    iput p3, p0, Lac$b;->c:I

    .line 588
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 611
    if-ne p0, p1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    .line 614
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 615
    goto :goto_0

    .line 618
    :cond_3
    check-cast p1, Lac$b;

    .line 620
    iget v2, p0, Lac$b;->a:I

    iget v3, p1, Lac$b;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 621
    goto :goto_0

    .line 623
    :cond_4
    iget v2, p0, Lac$b;->a:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget v2, p0, Lac$b;->c:I

    iget v3, p0, Lac$b;->b:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 625
    iget v2, p0, Lac$b;->c:I

    iget v3, p1, Lac$b;->b:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lac$b;->b:I

    iget v3, p1, Lac$b;->c:I

    if-eq v2, v3, :cond_0

    .line 629
    :cond_5
    iget v2, p0, Lac$b;->c:I

    iget v3, p1, Lac$b;->c:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 630
    goto :goto_0

    .line 632
    :cond_6
    iget v2, p0, Lac$b;->b:I

    iget v3, p1, Lac$b;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 633
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 641
    iget v0, p0, Lac$b;->a:I

    .line 642
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lac$b;->b:I

    add-int/2addr v0, v1

    .line 643
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lac$b;->c:I

    add-int/2addr v0, v1

    .line 644
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lac$b;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "??"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lac$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lac$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "add"

    goto :goto_0

    :pswitch_1
    const-string v0, "rm"

    goto :goto_0

    :pswitch_2
    const-string v0, "up"

    goto :goto_0

    :pswitch_3
    const-string v0, "mv"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
