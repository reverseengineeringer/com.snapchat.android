.class public final Lbnb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/net/URL;

.field c:Ljava/lang/String;

.field public d:Lbmv$a;

.field e:Lbnc;

.field f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "GET"

    iput-object v0, p0, Lbnb$a;->c:Ljava/lang/String;

    .line 135
    new-instance v0, Lbmv$a;

    invoke-direct {v0}, Lbmv$a;-><init>()V

    iput-object v0, p0, Lbnb$a;->d:Lbmv$a;

    .line 136
    return-void
.end method

.method private constructor <init>(Lbnb;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget-object v0, p1, Lbnb;->a:Ljava/lang/String;

    iput-object v0, p0, Lbnb$a;->a:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lbnb;->f:Ljava/net/URL;

    iput-object v0, p0, Lbnb$a;->b:Ljava/net/URL;

    .line 141
    iget-object v0, p1, Lbnb;->b:Ljava/lang/String;

    iput-object v0, p0, Lbnb$a;->c:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lbnb;->d:Lbnc;

    iput-object v0, p0, Lbnb$a;->e:Lbnc;

    .line 143
    iget-object v0, p1, Lbnb;->e:Ljava/lang/Object;

    iput-object v0, p0, Lbnb$a;->f:Ljava/lang/Object;

    .line 144
    iget-object v0, p1, Lbnb;->c:Lbmv;

    invoke-virtual {v0}, Lbmv;->b()Lbmv$a;

    move-result-object v0

    iput-object v0, p0, Lbnb$a;->d:Lbmv$a;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lbnb;B)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lbnb$a;-><init>(Lbnb;)V

    return-void
.end method


# virtual methods
.method public final a(Lbmk;)Lbnb$a;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p1}, Lbmk;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lbnb$a;->b(Ljava/lang/String;)Lbnb$a;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lbmv;)Lbnb$a;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p1}, Lbmv;->b()Lbmv$a;

    move-result-object v0

    iput-object v0, p0, Lbnb$a;->d:Lbmv$a;

    .line 187
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbnb$a;
    .locals 2

    .prologue
    .line 148
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lbnb$a;->a:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lbnb$a;->b:Ljava/net/URL;

    .line 151
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lbnc;)Lbnb$a;
    .locals 3

    .prologue
    .line 230
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lbny;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lbny;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    const/4 v0, 0x0

    sget-object v1, Lbnq;->a:[B

    invoke-static {v0, v1}, Lbnc;->a(Lbmx;[B)Lbnc;

    move-result-object p2

    .line 239
    :cond_3
    iput-object p1, p0, Lbnb$a;->c:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lbnb$a;->e:Lbnc;

    .line 241
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lbnb$a;->d:Lbmv$a;

    invoke-virtual {v0, p1, p2}, Lbmv$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 167
    return-object p0
.end method

.method public final a(Ljava/net/URL;)Lbnb$a;
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lbnb$a;->b:Ljava/net/URL;

    .line 157
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbnb$a;->a:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public final a()Lbnb;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lbnb$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    new-instance v0, Lbnb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbnb;-><init>(Lbnb$a;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lbnb$a;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbnb$a;->d:Lbmv$a;

    invoke-virtual {v0, p1}, Lbmv$a;->b(Ljava/lang/String;)Lbmv$a;

    .line 181
    return-object p0
.end method
