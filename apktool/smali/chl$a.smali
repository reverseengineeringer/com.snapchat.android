.class final Lchl$a;
.super Lcjl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 760
    invoke-static {}, Lcgi;->k()Lcgi;

    move-result-object v0

    invoke-static {}, Lchl;->U()Lcgm;

    move-result-object v1

    invoke-static {}, Lchl;->V()Lcgm;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcjl;-><init>(Lcgi;Lcgm;Lcgm;)V

    .line 761
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 772
    invoke-static {p1}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget v0, v0, Lchy;->m:I

    return v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .prologue
    .line 768
    invoke-static {p4}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget-object v1, v0, Lchy;->f:[Ljava/lang/String;

    array-length v0, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lchl$a;->b(JI)J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Lcgo;

    invoke-static {}, Lcgi;->k()Lcgi;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcgo;-><init>(Lcgi;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    invoke-static {p2}, Lchy;->a(Ljava/util/Locale;)Lchy;

    move-result-object v0

    iget-object v0, v0, Lchy;->f:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
