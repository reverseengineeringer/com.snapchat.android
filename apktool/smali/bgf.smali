.class public final Lbgf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sZero:Lbgf;


# instance fields
.field public final x:D

.field public final y:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 10
    new-instance v0, Lbgf;

    invoke-direct {v0, v2, v3, v2, v3}, Lbgf;-><init>(DD)V

    sput-object v0, Lbgf;->sZero:Lbgf;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lbgf;->x:D

    .line 22
    iput-wide p3, p0, Lbgf;->y:D

    .line 23
    return-void
.end method

.method public static a()Lbgf;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lbgf;->sZero:Lbgf;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-ne p0, p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    instance-of v2, p1, Lbgf;

    if-nez v2, :cond_2

    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_2
    check-cast p1, Lbgf;

    .line 120
    iget-wide v2, p0, Lbgf;->x:D

    iget-wide v4, p1, Lbgf;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lbgf;->y:D

    iget-wide v4, p1, Lbgf;->y:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 125
    iget-wide v0, p0, Lbgf;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x187

    .line 127
    mul-int/lit8 v0, v0, 0x17

    iget-wide v2, p0, Lbgf;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lbgf;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lbgf;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
