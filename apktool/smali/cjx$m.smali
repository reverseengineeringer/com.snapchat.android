.class final Lcjx$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcjy;
.implements Lcka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# instance fields
.field private final a:Lcgi;

.field private final b:I

.field private final c:Z


# direct methods
.method constructor <init>(Lcgi;IZ)V
    .locals 0

    .prologue
    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1562
    iput-object p1, p0, Lcjx$m;->a:Lcgi;

    .line 1563
    iput p2, p0, Lcjx$m;->b:I

    .line 1564
    iput-boolean p3, p0, Lcjx$m;->c:Z

    .line 1565
    return-void
.end method

.method private a(JLcgf;)I
    .locals 1

    .prologue
    .line 1700
    :try_start_0
    iget-object v0, p0, Lcjx$m;->a:Lcgi;

    invoke-virtual {v0, p3}, Lcgi;->a(Lcgf;)Lcgh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    .line 1701
    if-gez v0, :cond_0

    .line 1702
    neg-int v0, v0

    .line 1704
    :cond_0
    rem-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Lchb;)I
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcjx$m;->a:Lcgi;

    invoke-interface {p1, v0}, Lchb;->b(Lcgi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1733
    :try_start_0
    iget-object v0, p0, Lcjx$m;->a:Lcgi;

    invoke-interface {p1, v0}, Lchb;->a(Lcgi;)I

    move-result v0

    .line 1734
    if-gez v0, :cond_0

    .line 1735
    neg-int v0, v0

    .line 1737
    :cond_0
    rem-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1671
    const/4 v0, 0x2

    return v0
.end method

.method public final a(Lcjz;Ljava/lang/String;I)I
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 1572
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    .line 1574
    iget-boolean v3, p0, Lcjx$m;->c:Z

    if-nez v3, :cond_0

    .line 1575
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1576
    if-ge v1, v8, :cond_b

    .line 1577
    xor-int/lit8 v1, p3, -0x1

    .line 1667
    :goto_0
    return v1

    :cond_0
    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v1

    .line 1583
    :goto_1
    if-ge v3, v6, :cond_5

    .line 1584
    add-int v1, p3, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1585
    if-nez v3, :cond_4

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_1

    const/16 v7, 0x2b

    if-ne v1, v7, :cond_4

    .line 1587
    :cond_1
    const/16 v4, 0x2d

    if-ne v1, v4, :cond_2

    move v1, v2

    .line 1588
    :goto_2
    if-eqz v1, :cond_3

    .line 1589
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    move v5, v2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 1587
    goto :goto_2

    .line 1592
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 1593
    add-int/lit8 v4, v6, -0x1

    move v5, v2

    move v6, v4

    move v4, v1

    .line 1595
    goto :goto_1

    .line 1597
    :cond_4
    if-lt v1, v9, :cond_5

    if-gt v1, v10, :cond_5

    .line 1598
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 1601
    goto :goto_1

    .line 1603
    :cond_5
    if-nez v3, :cond_6

    .line 1604
    xor-int/lit8 v1, p3, -0x1

    goto :goto_0

    .line 1607
    :cond_6
    if-nez v5, :cond_7

    if-eq v3, v8, :cond_b

    .line 1609
    :cond_7
    const/16 v0, 0x9

    if-lt v3, v0, :cond_9

    .line 1612
    add-int v1, p3, v3

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1632
    :cond_8
    :goto_3
    iget-object v2, p0, Lcjx$m;->a:Lcgi;

    invoke-virtual {p1, v2, v0}, Lcjz;->a(Lcgi;I)V

    goto :goto_0

    .line 1615
    :cond_9
    if-eqz v4, :cond_13

    .line 1616
    add-int/lit8 v0, p3, 0x1

    .line 1619
    :goto_4
    add-int/lit8 v2, v0, 0x1

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 1623
    add-int v1, p3, v3

    .line 1624
    :goto_5
    if-ge v2, v1, :cond_a

    .line 1625
    shl-int/lit8 v3, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x30

    move v2, v3

    goto :goto_5

    .line 1621
    :catch_0
    move-exception v0

    xor-int/lit8 v1, p3, -0x1

    goto :goto_0

    .line 1627
    :cond_a
    if-eqz v4, :cond_8

    .line 1628
    neg-int v0, v0

    goto :goto_3

    .line 1638
    :cond_b
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1639
    if-lt v1, v9, :cond_c

    if-le v1, v10, :cond_d

    .line 1640
    :cond_c
    xor-int/lit8 v1, p3, -0x1

    goto/16 :goto_0

    .line 1642
    :cond_d
    add-int/lit8 v1, v1, -0x30

    .line 1643
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1644
    if-lt v2, v9, :cond_e

    if-le v2, v10, :cond_f

    .line 1645
    :cond_e
    xor-int/lit8 v1, p3, -0x1

    goto/16 :goto_0

    .line 1647
    :cond_f
    shl-int/lit8 v3, v1, 0x3

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x30

    .line 1649
    iget v1, p0, Lcjx$m;->b:I

    .line 1651
    iget-object v3, p1, Lcjz;->e:Ljava/lang/Integer;

    if-eqz v3, :cond_10

    .line 1652
    iget-object v1, p1, Lcjz;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1655
    :cond_10
    add-int/lit8 v3, v1, -0x32

    .line 1658
    if-ltz v3, :cond_12

    .line 1659
    rem-int/lit8 v1, v3, 0x64

    .line 1664
    :goto_6
    if-ge v2, v1, :cond_11

    const/16 v0, 0x64

    :cond_11
    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1666
    iget-object v1, p0, Lcjx$m;->a:Lcgi;

    invoke-virtual {p1, v1, v0}, Lcjz;->a(Lcgi;I)V

    .line 1667
    add-int/lit8 v1, p3, 0x2

    goto/16 :goto_0

    .line 1661
    :cond_12
    add-int/lit8 v1, v3, 0x1

    rem-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0x63

    goto :goto_6

    :cond_13
    move v0, p3

    goto :goto_4
.end method

.method public final a(Ljava/lang/StringBuffer;JLcgf;ILcgk;Ljava/util/Locale;)V
    .locals 2

    .prologue
    const v1, 0xfffd

    .line 1677
    invoke-direct {p0, p2, p3, p4}, Lcjx$m;->a(JLcgf;)I

    move-result v0

    .line 1678
    if-gez v0, :cond_0

    .line 1679
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1680
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1684
    :goto_0
    return-void

    .line 1682
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lckb;->a(Ljava/lang/StringBuffer;II)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuffer;Lchb;Ljava/util/Locale;)V
    .locals 2

    .prologue
    const v1, 0xfffd

    .line 1711
    invoke-direct {p0, p2}, Lcjx$m;->a(Lchb;)I

    move-result v0

    .line 1712
    if-gez v0, :cond_0

    .line 1713
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1714
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1718
    :goto_0
    return-void

    .line 1716
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lckb;->a(Ljava/lang/StringBuffer;II)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcjx$m;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
