.class final Lcky$k;
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
    name = "k"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lchl;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 2477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2478
    iput p1, p0, Lcky$k;->b:I

    .line 2479
    const/4 v0, 0x0

    iput-object v0, p0, Lcky$k;->a:Ljava/util/Map;

    .line 2480
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 2483
    iget v0, p0, Lcky$k;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public final a(Lcla;Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 2524
    iget-object v0, p0, Lcky$k;->a:Ljava/util/Map;

    .line 2525
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2526
    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2527
    const/4 v2, 0x0

    .line 2528
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2529
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2530
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_4

    :cond_0
    :goto_2
    move-object v2, v0

    .line 2531
    goto :goto_1

    .line 2525
    :cond_1
    invoke-static {}, Lchk;->b()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2535
    :cond_2
    if-eqz v2, :cond_3

    .line 2536
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchl;

    invoke-virtual {p1, v0}, Lcla;->a(Lchl;)V

    .line 2537
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    .line 2539
    :goto_3
    return v0

    :cond_3
    xor-int/lit8 v0, p3, -0x1

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/StringBuffer;JLchg;ILchl;Ljava/util/Locale;)V
    .locals 6

    .prologue
    .line 2489
    int-to-long v0, p5

    sub-long v2, p2, v0

    if-eqz p6, :cond_0

    iget v0, p0, Lcky$k;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2490
    return-void

    .line 2489
    :pswitch_0
    if-nez p7, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p7

    :cond_2
    invoke-virtual {p6, v2, v3}, Lchl;->a(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p6, Lchl;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v1, Lchl;->b:Lcln;

    iget-object v4, p6, Lchl;->c:Ljava/lang/String;

    invoke-interface {v1, p7, v4, v0}, Lcln;->b(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p6, v2, v3}, Lchl;->b(J)I

    move-result v0

    invoke-static {v0}, Lchl;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    if-nez p7, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p7

    :cond_4
    invoke-virtual {p6, v2, v3}, Lchl;->a(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p6, Lchl;->c:Ljava/lang/String;

    goto :goto_0

    :cond_5
    sget-object v1, Lchl;->b:Lcln;

    iget-object v4, p6, Lchl;->c:Ljava/lang/String;

    invoke-interface {v1, p7, v4, v0}, Lcln;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p6, v2, v3}, Lchl;->b(J)I

    move-result v0

    invoke-static {v0}, Lchl;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/StringBuffer;Lcic;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 2513
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 2520
    iget v0, p0, Lcky$k;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method
