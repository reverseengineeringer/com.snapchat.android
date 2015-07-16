.class public final Lcku;
.super Lchn;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcho;",
            "Lcku;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcho;


# direct methods
.method private constructor <init>(Lcho;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lchn;-><init>()V

    .line 71
    iput-object p1, p0, Lcku;->b:Lcho;

    .line 72
    return-void
.end method

.method public static declared-synchronized a(Lcho;)Lcku;
    .locals 3

    .prologue
    .line 49
    const-class v1, Lcku;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcku;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcku;->a:Ljava/util/HashMap;

    .line 51
    const/4 v0, 0x0

    .line 55
    :goto_0
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcku;

    invoke-direct {v0, p0}, Lcku;-><init>(Lcho;)V

    .line 57
    sget-object v2, Lcku;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v1

    return-object v0

    .line 53
    :cond_1
    :try_start_1
    sget-object v0, Lcku;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcku;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Ljava/lang/UnsupportedOperationException;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcku;->b:Lcho;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(JI)J
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcku;->e()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a(JJ)J
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcku;->e()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a()Lcho;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcku;->b:Lcho;

    return-object v0
.end method

.method public final b(JJ)I
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcku;->e()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public final c(JJ)J
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcku;->e()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 218
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    if-ne p0, p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    instance-of v2, p1, Lcku;

    if-eqz v2, :cond_3

    .line 241
    check-cast p1, Lcku;

    .line 242
    iget-object v2, p1, Lcku;->b:Lcho;

    iget-object v2, v2, Lcho;->m:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 243
    iget-object v2, p0, Lcku;->b:Lcho;

    iget-object v2, v2, Lcho;->m:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p1, Lcku;->b:Lcho;

    iget-object v0, v0, Lcho;->m:Ljava/lang/String;

    iget-object v1, p0, Lcku;->b:Lcho;

    iget-object v1, v1, Lcho;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcku;->b:Lcho;

    iget-object v0, v0, Lcho;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnsupportedDurationField["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcku;->b:Lcho;

    iget-object v1, v1, Lcho;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
