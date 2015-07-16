.class public final Lxs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lakr;->bf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxs;->a(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lxs;->a:[Z

    .line 14
    return-void
.end method

.method private static a(Ljava/lang/String;)[Z
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v4, v6, [Z

    .line 71
    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([ZZ)V

    move v3, v2

    .line 72
    :goto_0
    if-ge v3, v6, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 73
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 74
    const/16 v5, 0x31

    if-ne v0, v5, :cond_0

    move v0, v1

    .line 75
    :goto_1
    aput-boolean v0, v4, v3

    .line 72
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 74
    goto :goto_1

    .line 77
    :cond_1
    return-object v4
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    move v1, v0

    .line 21
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 22
    iget-object v2, p0, Lxs;->a:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_1
    return v0
.end method
