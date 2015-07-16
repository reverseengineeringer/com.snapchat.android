.class final Lcky$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckz;
.implements Lclb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:[Lclb;

.field final b:[Lckz;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 2615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2617
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2618
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2620
    invoke-static {p1, v4, v5}, Lcky$b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2622
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2623
    :cond_0
    iput-object v8, p0, Lcky$b;->a:[Lclb;

    .line 2624
    iput v1, p0, Lcky$b;->c:I

    .line 2637
    :goto_0
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2638
    :cond_1
    iput-object v8, p0, Lcky$b;->b:[Lckz;

    .line 2639
    iput v1, p0, Lcky$b;->d:I

    .line 2651
    :goto_1
    return-void

    .line 2626
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 2627
    new-array v0, v6, [Lclb;

    iput-object v0, p0, Lcky$b;->a:[Lclb;

    move v2, v1

    move v3, v1

    .line 2629
    :goto_2
    if-ge v2, v6, :cond_3

    .line 2630
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclb;

    .line 2631
    invoke-interface {v0}, Lclb;->a()I

    move-result v7

    add-int/2addr v3, v7

    .line 2632
    iget-object v7, p0, Lcky$b;->a:[Lclb;

    aput-object v0, v7, v2

    .line 2629
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2634
    :cond_3
    iput v3, p0, Lcky$b;->c:I

    goto :goto_0

    .line 2641
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 2642
    new-array v0, v3, [Lckz;

    iput-object v0, p0, Lcky$b;->b:[Lckz;

    move v2, v1

    .line 2644
    :goto_3
    if-ge v1, v3, :cond_5

    .line 2645
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckz;

    .line 2646
    invoke-interface {v0}, Lckz;->b()I

    move-result v4

    add-int/2addr v2, v4

    .line 2647
    iget-object v4, p0, Lcky$b;->b:[Lckz;

    aput-object v0, v4, v1

    .line 2644
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2649
    :cond_5
    iput v2, p0, Lcky$b;->d:I

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2759
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 2760
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 2761
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2762
    instance-of v3, v0, Lcky$b;

    if-eqz v3, :cond_0

    .line 2763
    check-cast v0, Lcky$b;

    iget-object v0, v0, Lcky$b;->a:[Lclb;

    invoke-static {p1, v0}, Lcky$b;->a(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2768
    :goto_1
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2769
    instance-of v3, v0, Lcky$b;

    if-eqz v3, :cond_1

    .line 2770
    check-cast v0, Lcky$b;

    iget-object v0, v0, Lcky$b;->b:[Lckz;

    invoke-static {p2, v0}, Lcky$b;->a(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2760
    :goto_2
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 2765
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2772
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2775
    :cond_2
    return-void
.end method

.method private static a(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2778
    if-eqz p1, :cond_0

    .line 2779
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2780
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2783
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2654
    iget v0, p0, Lcky$b;->c:I

    return v0
.end method

.method public final a(Lcla;Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 2734
    iget-object v1, p0, Lcky$b;->b:[Lckz;

    .line 2735
    if-nez v1, :cond_0

    .line 2736
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2739
    :cond_0
    array-length v2, v1

    .line 2740
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz p3, :cond_1

    .line 2741
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lckz;->a(Lcla;Ljava/lang/String;I)I

    move-result p3

    .line 2740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2743
    :cond_1
    return p3
.end method

.method public final a(Ljava/lang/StringBuffer;JLchg;ILchl;Ljava/util/Locale;)V
    .locals 12

    .prologue
    .line 2660
    iget-object v9, p0, Lcky$b;->a:[Lclb;

    .line 2661
    if-nez v9, :cond_0

    .line 2662
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2665
    :cond_0
    if-nez p7, :cond_2

    .line 2667
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 2670
    :goto_0
    array-length v10, v9

    .line 2671
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_1

    .line 2672
    aget-object v0, v9, v8

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lclb;->a(Ljava/lang/StringBuffer;JLchg;ILchl;Ljava/util/Locale;)V

    .line 2671
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 2674
    :cond_1
    return-void

    :cond_2
    move-object/from16 v7, p7

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuffer;Lcic;Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 2696
    iget-object v1, p0, Lcky$b;->a:[Lclb;

    .line 2697
    if-nez v1, :cond_0

    .line 2698
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2701
    :cond_0
    if-nez p3, :cond_1

    .line 2703
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 2706
    :cond_1
    array-length v2, v1

    .line 2707
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 2708
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lclb;->a(Ljava/lang/StringBuffer;Lcic;Ljava/util/Locale;)V

    .line 2707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2710
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2730
    iget v0, p0, Lcky$b;->d:I

    return v0
.end method
