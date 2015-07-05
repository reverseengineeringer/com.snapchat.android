.class public abstract Lbza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbzq;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lbza;->a:Ljava/lang/String;

    .line 29
    iput v1, p0, Lbza;->b:I

    .line 31
    iput-boolean v1, p0, Lbza;->c:Z

    .line 43
    iput-object p1, p0, Lbza;->a:Ljava/lang/String;

    .line 44
    iput p2, p0, Lbza;->b:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IB)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lbza;->a:Ljava/lang/String;

    .line 29
    iput v1, p0, Lbza;->b:I

    .line 31
    iput-boolean v1, p0, Lbza;->c:Z

    .line 62
    iput-object p1, p0, Lbza;->a:Ljava/lang/String;

    .line 63
    iput p2, p0, Lbza;->b:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbza;->c:Z

    .line 65
    return-void
.end method


# virtual methods
.method public a(D)D
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(DD)D
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lbza;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lbwx;

    const-string v1, "Invalid operation for a string."

    invoke-direct {v0, v1}, Lbwx;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lbza;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lbza;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lbza;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    instance-of v1, p1, Lbza;

    if-nez v1, :cond_2

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid operator object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    check-cast p1, Lbza;

    .line 167
    iget-object v1, p0, Lbza;->a:Ljava/lang/String;

    iget-object v2, p1, Lbza;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbza;->a:Ljava/lang/String;

    return-object v0
.end method
