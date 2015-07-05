.class public final Lcki;
.super Lcgk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcki$a;
    }
.end annotation


# static fields
.field private static final d:I


# instance fields
.field private final e:Lcgk;

.field private final f:[Lcki$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    const-string v0, "org.joda.time.tz.CachedDateTimeZone.size"

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    if-nez v0, :cond_0

    .line 48
    const/16 v0, 0x200

    .line 61
    :goto_1
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcki;->d:I

    .line 62
    return-void

    .line 41
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    add-int/lit8 v1, v0, -0x1

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_2
    if-lez v1, :cond_1

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 58
    :cond_1
    const/4 v1, 0x1

    shl-int v0, v1, v0

    goto :goto_1
.end method

.method private constructor <init>(Lcgk;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p1, Lcgk;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcgk;-><init>(Ljava/lang/String;)V

    .line 84
    sget v0, Lcki;->d:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcki$a;

    iput-object v0, p0, Lcki;->f:[Lcki$a;

    .line 88
    iput-object p1, p0, Lcki;->e:Lcgk;

    .line 89
    return-void
.end method

.method public static a(Lcgk;)Lcki;
    .locals 1

    .prologue
    .line 68
    instance-of v0, p0, Lcki;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lcki;

    .line 71
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcki;

    invoke-direct {v0, p0}, Lcki;-><init>(Lcgk;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private h(J)Lcki$a;
    .locals 11

    .prologue
    const/16 v4, 0x20

    .line 140
    shr-long v0, p1, v4

    long-to-int v0, v0

    .line 141
    iget-object v6, p0, Lcki;->f:[Lcki$a;

    .line 142
    sget v1, Lcki;->d:I

    and-int v7, v0, v1

    .line 143
    aget-object v5, v6, v7

    .line 144
    if-eqz v5, :cond_0

    iget-wide v2, v5, Lcki$a;->a:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    if-eq v1, v0, :cond_2

    .line 145
    :cond_0
    const-wide v0, -0x100000000L

    and-long/2addr v0, p1

    new-instance v5, Lcki$a;

    iget-object v2, p0, Lcki;->e:Lcgk;

    invoke-direct {v5, v2, v0, v1}, Lcki$a;-><init>(Lcgk;J)V

    const-wide v2, 0xffffffffL

    or-long v8, v0, v2

    move-object v4, v5

    :goto_0
    iget-object v2, p0, Lcki;->e:Lcgk;

    invoke-virtual {v2, v0, v1}, Lcgk;->f(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    new-instance v0, Lcki$a;

    iget-object v1, p0, Lcki;->e:Lcgk;

    invoke-direct {v0, v1, v2, v3}, Lcki$a;-><init>(Lcgk;J)V

    iput-object v0, v4, Lcki$a;->c:Lcki$a;

    move-object v4, v0

    move-wide v0, v2

    goto :goto_0

    .line 146
    :cond_1
    aput-object v5, v6, v7

    .line 148
    :cond_2
    return-object v5
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcki;->h(J)Lcki$a;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lcki$a;->c:Lcki$a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcki$a;->c:Lcki$a;

    iget-wide v2, v1, Lcki$a;->a:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    :cond_0
    iget-object v1, v0, Lcki$a;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcki$a;->b:Lcgk;

    iget-wide v2, v0, Lcki$a;->a:J

    invoke-virtual {v1, v2, v3}, Lcgk;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcki$a;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, v0, Lcki$a;->d:Ljava/lang/String;

    return-object v0

    :cond_2
    iget-object v0, v0, Lcki$a;->c:Lcki$a;

    goto :goto_0
.end method

.method public final b(J)I
    .locals 5

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcki;->h(J)Lcki$a;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lcki$a;->c:Lcki$a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcki$a;->c:Lcki$a;

    iget-wide v2, v1, Lcki$a;->a:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    :cond_0
    iget v1, v0, Lcki$a;->e:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcki$a;->b:Lcgk;

    iget-wide v2, v0, Lcki$a;->a:J

    invoke-virtual {v1, v2, v3}, Lcgk;->b(J)I

    move-result v1

    iput v1, v0, Lcki$a;->e:I

    :cond_1
    iget v0, v0, Lcki$a;->e:I

    return v0

    :cond_2
    iget-object v0, v0, Lcki$a;->c:Lcki$a;

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcki;->e:Lcgk;

    invoke-virtual {v0}, Lcgk;->c()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 127
    if-ne p0, p1, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 130
    :cond_0
    instance-of v0, p1, Lcki;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcki;->e:Lcgk;

    check-cast p1, Lcki;

    iget-object v1, p1, Lcki;->e:Lcgk;

    invoke-virtual {v0, v1}, Lcgk;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(J)J
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcki;->e:Lcgk;

    invoke-virtual {v0, p1, p2}, Lcgk;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(J)J
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcki;->e:Lcgk;

    invoke-virtual {v0, p1, p2}, Lcgk;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcki;->e:Lcgk;

    invoke-virtual {v0}, Lcgk;->hashCode()I

    move-result v0

    return v0
.end method
