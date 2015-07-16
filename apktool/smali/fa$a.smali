.class public final Lfa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa$a$a;
    }
.end annotation


# instance fields
.field a:I

.field b:J

.field c:Z

.field d:Ljava/lang/String;

.field e:Z

.field f:I

.field g:Z

.field h:Ljava/lang/String;

.field i:Lfa$a$a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v2, p0, Lfa$a;->a:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfa$a;->b:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lfa$a;->d:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lfa$a;->e:Z

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lfa$a;->f:I

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lfa$a;->h:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lfa$a;->p:Ljava/lang/String;

    .line 39
    sget-object v0, Lfa$a$a;->a:Lfa$a$a;

    iput-object v0, p0, Lfa$a;->i:Lfa$a$a;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Lfa$a;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfa$a;->c:Z

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lfa$a;->d:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public final a(I)Lfa$a;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfa$a;->j:Z

    .line 49
    iput p1, p0, Lfa$a;->a:I

    .line 50
    return-object p0
.end method

.method public final a(J)Lfa$a;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfa$a;->k:Z

    .line 65
    iput-wide p1, p0, Lfa$a;->b:J

    .line 66
    return-object p0
.end method

.method public final a(Lfa$a$a;)Lfa$a;
    .locals 1

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfa$a;->n:Z

    .line 154
    iput-object p1, p0, Lfa$a;->i:Lfa$a$a;

    .line 155
    return-object p0
.end method

.method public final a(Lfa$a;)Lfa$a;
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p1, Lfa$a;->j:Z

    if-eqz v0, :cond_0

    .line 196
    iget v0, p1, Lfa$a;->a:I

    invoke-virtual {p0, v0}, Lfa$a;->a(I)Lfa$a;

    .line 198
    :cond_0
    iget-boolean v0, p1, Lfa$a;->k:Z

    if-eqz v0, :cond_1

    .line 199
    iget-wide v0, p1, Lfa$a;->b:J

    invoke-virtual {p0, v0, v1}, Lfa$a;->a(J)Lfa$a;

    .line 201
    :cond_1
    iget-boolean v0, p1, Lfa$a;->c:Z

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p1, Lfa$a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfa$a;->a(Ljava/lang/String;)Lfa$a;

    .line 204
    :cond_2
    iget-boolean v0, p1, Lfa$a;->l:Z

    if-eqz v0, :cond_3

    .line 205
    iget-boolean v0, p1, Lfa$a;->e:Z

    invoke-virtual {p0, v0}, Lfa$a;->a(Z)Lfa$a;

    .line 207
    :cond_3
    iget-boolean v0, p1, Lfa$a;->m:Z

    if-eqz v0, :cond_4

    .line 208
    iget v0, p1, Lfa$a;->f:I

    invoke-virtual {p0, v0}, Lfa$a;->b(I)Lfa$a;

    .line 210
    :cond_4
    iget-boolean v0, p1, Lfa$a;->g:Z

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, p1, Lfa$a;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfa$a;->b(Ljava/lang/String;)Lfa$a;

    .line 213
    :cond_5
    iget-boolean v0, p1, Lfa$a;->n:Z

    if-eqz v0, :cond_6

    .line 214
    iget-object v0, p1, Lfa$a;->i:Lfa$a$a;

    invoke-virtual {p0, v0}, Lfa$a;->a(Lfa$a$a;)Lfa$a;

    .line 216
    :cond_6
    iget-boolean v0, p1, Lfa$a;->o:Z

    if-eqz v0, :cond_7

    .line 217
    iget-object v0, p1, Lfa$a;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfa$a;->c(Ljava/lang/String;)Lfa$a;

    .line 219
    :cond_7
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lfa$a;
    .locals 1

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfa$a;->c:Z

    .line 84
    iput-object p1, p0, Lfa$a;->d:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public final a(Z)Lfa$a;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfa$a;->l:Z

    .line 100
    iput-boolean p1, p0, Lfa$a;->e:Z

    .line 101
    return-object p0
.end method

.method public final b()Lfa$a;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfa$a;->g:Z

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lfa$a;->h:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public final b(I)Lfa$a;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfa$a;->m:Z

    .line 116
    iput p1, p0, Lfa$a;->f:I

    .line 117
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lfa$a;
    .locals 1

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfa$a;->g:Z

    .line 135
    iput-object p1, p0, Lfa$a;->h:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public final b(Lfa$a;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 223
    if-nez p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 227
    goto :goto_0

    .line 229
    :cond_2
    iget v2, p0, Lfa$a;->a:I

    iget v3, p1, Lfa$a;->a:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lfa$a;->b:J

    iget-wide v4, p1, Lfa$a;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lfa$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lfa$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lfa$a;->e:Z

    iget-boolean v3, p1, Lfa$a;->e:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lfa$a;->f:I

    iget v3, p1, Lfa$a;->f:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lfa$a;->h:Ljava/lang/String;

    iget-object v3, p1, Lfa$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfa$a;->i:Lfa$a$a;

    iget-object v3, p1, Lfa$a;->i:Lfa$a$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lfa$a;->p:Ljava/lang/String;

    iget-object v3, p1, Lfa$a;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lfa$a;->o:Z

    iget-boolean v3, p1, Lfa$a;->o:Z

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final c()Lfa$a;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfa$a;->n:Z

    .line 159
    sget-object v0, Lfa$a$a;->a:Lfa$a$a;

    iput-object v0, p0, Lfa$a;->i:Lfa$a$a;

    .line 160
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lfa$a;
    .locals 1

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 172
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfa$a;->o:Z

    .line 173
    iput-object p1, p0, Lfa$a;->p:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public final d()Lfa$a;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfa$a;->o:Z

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lfa$a;->p:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 239
    instance-of v0, p1, Lfa$a;

    if-eqz v0, :cond_0

    check-cast p1, Lfa$a;

    invoke-virtual {p0, p1}, Lfa$a;->b(Lfa$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 248
    iget v0, p0, Lfa$a;->a:I

    add-int/lit16 v0, v0, 0x87d

    .line 250
    mul-int/lit8 v0, v0, 0x35

    iget-wide v4, p0, Lfa$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 251
    mul-int/lit8 v0, v0, 0x35

    iget-object v3, p0, Lfa$a;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 252
    mul-int/lit8 v3, v0, 0x35

    iget-boolean v0, p0, Lfa$a;->e:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 253
    mul-int/lit8 v0, v0, 0x35

    iget v3, p0, Lfa$a;->f:I

    add-int/2addr v0, v3

    .line 254
    mul-int/lit8 v0, v0, 0x35

    iget-object v3, p0, Lfa$a;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 255
    mul-int/lit8 v0, v0, 0x35

    iget-object v3, p0, Lfa$a;->i:Lfa$a$a;

    invoke-virtual {v3}, Lfa$a$a;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 256
    mul-int/lit8 v0, v0, 0x35

    iget-object v3, p0, Lfa$a;->p:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 257
    mul-int/lit8 v0, v0, 0x35

    iget-boolean v3, p0, Lfa$a;->o:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 258
    return v0

    :cond_0
    move v0, v2

    .line 252
    goto :goto_0

    :cond_1
    move v1, v2

    .line 257
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    const-string v1, "Country Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfa$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, " National Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lfa$a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 266
    iget-boolean v1, p0, Lfa$a;->l:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lfa$a;->e:Z

    if-eqz v1, :cond_0

    .line 267
    const-string v1, " Leading Zero(s): true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_0
    iget-boolean v1, p0, Lfa$a;->m:Z

    if-eqz v1, :cond_1

    .line 270
    const-string v1, " Number of leading zeros: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfa$a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    :cond_1
    iget-boolean v1, p0, Lfa$a;->c:Z

    if-eqz v1, :cond_2

    .line 273
    const-string v1, " Extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfa$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_2
    iget-boolean v1, p0, Lfa$a;->n:Z

    if-eqz v1, :cond_3

    .line 276
    const-string v1, " Country Code Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfa$a;->i:Lfa$a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    :cond_3
    iget-boolean v1, p0, Lfa$a;->o:Z

    if-eqz v1, :cond_4

    .line 279
    const-string v1, " Preferred Domestic Carrier Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfa$a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
