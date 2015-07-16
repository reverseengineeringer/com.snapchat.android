.class final Lcky$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:[Lckz;

.field private final b:I


# direct methods
.method constructor <init>([Lckz;)V
    .locals 3

    .prologue
    .line 2794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2795
    iput-object p1, p0, Lcky$e;->a:[Lckz;

    .line 2796
    const/4 v1, 0x0

    .line 2797
    array-length v0, p1

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_0

    .line 2798
    aget-object v0, p1, v2

    .line 2799
    if-eqz v0, :cond_1

    .line 2800
    invoke-interface {v0}, Lckz;->b()I

    move-result v0

    .line 2801
    if-le v0, v1, :cond_1

    :goto_1
    move v1, v0

    move v0, v2

    .line 2805
    goto :goto_0

    .line 2806
    :cond_0
    iput v1, p0, Lcky$e;->b:I

    .line 2807
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcla;Ljava/lang/String;I)I
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 2814
    iget-object v7, p0, Lcky$e;->a:[Lckz;

    .line 2815
    array-length v8, v7

    .line 2817
    invoke-virtual {p1}, Lcla;->a()Ljava/lang/Object;

    move-result-object v9

    .line 2821
    const/4 v2, 0x0

    move v6, v5

    move v0, p3

    move v4, p3

    .line 2825
    :goto_0
    if-ge v6, v8, :cond_9

    .line 2826
    aget-object v1, v7, v6

    .line 2827
    if-nez v1, :cond_3

    .line 2829
    if-gt v4, p3, :cond_0

    .line 2867
    :goto_1
    return p3

    .line 2832
    :cond_0
    const/4 v1, 0x1

    .line 2859
    :goto_2
    if-gt v4, p3, :cond_1

    if-ne v4, p3, :cond_7

    if-eqz v1, :cond_7

    .line 2861
    :cond_1
    if-eqz v2, :cond_2

    .line 2862
    invoke-virtual {p1, v2}, Lcla;->a(Ljava/lang/Object;)Z

    :cond_2
    move p3, v4

    .line 2864
    goto :goto_1

    .line 2835
    :cond_3
    invoke-interface {v1, p1, p2, p3}, Lckz;->a(Lcla;Ljava/lang/String;I)I

    move-result v3

    .line 2836
    if-lt v3, p3, :cond_6

    .line 2837
    if-le v3, v4, :cond_8

    .line 2838
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_4

    add-int/lit8 v1, v6, 0x1

    if-ge v1, v8, :cond_4

    add-int/lit8 v1, v6, 0x1

    aget-object v1, v7, v1

    if-nez v1, :cond_5

    :cond_4
    move p3, v3

    .line 2843
    goto :goto_1

    .line 2846
    :cond_5
    invoke-virtual {p1}, Lcla;->a()Ljava/lang/Object;

    move-result-object v1

    move v2, v3

    .line 2856
    :goto_3
    invoke-virtual {p1, v9}, Lcla;->a(Ljava/lang/Object;)Z

    .line 2825
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v2

    move-object v2, v1

    goto :goto_0

    .line 2849
    :cond_6
    if-gez v3, :cond_8

    .line 2850
    xor-int/lit8 v1, v3, -0x1

    .line 2851
    if-le v1, v0, :cond_8

    move v0, v1

    move-object v1, v2

    move v2, v4

    .line 2852
    goto :goto_3

    .line 2867
    :cond_7
    xor-int/lit8 p3, v0, -0x1

    goto :goto_1

    :cond_8
    move-object v1, v2

    move v2, v4

    goto :goto_3

    :cond_9
    move v1, v5

    goto :goto_2
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 2810
    iget v0, p0, Lcky$e;->b:I

    return v0
.end method
