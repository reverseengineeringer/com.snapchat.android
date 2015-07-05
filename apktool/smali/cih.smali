.class public abstract Lcih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcij;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcgj;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/Object;)Lcgf;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Converter["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcih;->a()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcih;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
