.class public final Lbnt$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lbnb;

.field public final c:Lbnd;

.field public d:Ljava/util/Date;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Date;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Date;

.field public i:J

.field public j:J

.field public k:Ljava/lang/String;

.field public l:I


# direct methods
.method public constructor <init>(JLbnb;Lbnd;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v6, p0, Lbnt$a;->l:I

    .line 127
    iput-wide p1, p0, Lbnt$a;->a:J

    .line 128
    iput-object p3, p0, Lbnt$a;->b:Lbnb;

    .line 129
    iput-object p4, p0, Lbnt$a;->c:Lbnd;

    .line 131
    if-eqz p4, :cond_7

    .line 132
    iget-object v1, p4, Lbnd;->f:Lbmv;

    .line 133
    const/4 v0, 0x0

    iget-object v2, v1, Lbmv;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 134
    invoke-virtual {v1, v0}, Lbmv;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v1, v0}, Lbmv;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    invoke-static {v4}, Lbnw;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lbnt$a;->d:Ljava/util/Date;

    .line 138
    iput-object v4, p0, Lbnt$a;->e:Ljava/lang/String;

    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    invoke-static {v4}, Lbnw;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lbnt$a;->h:Ljava/util/Date;

    goto :goto_1

    .line 141
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    invoke-static {v4}, Lbnw;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lbnt$a;->f:Ljava/util/Date;

    .line 143
    iput-object v4, p0, Lbnt$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 144
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    iput-object v4, p0, Lbnt$a;->k:Ljava/lang/String;

    goto :goto_1

    .line 146
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    invoke-static {v4, v6}, Lbnu;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lbnt$a;->l:I

    goto :goto_1

    .line 148
    :cond_5
    sget-object v5, Lboa;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lbnt$a;->i:J

    goto :goto_1

    .line 150
    :cond_6
    sget-object v5, Lboa;->c:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lbnt$a;->j:J

    goto :goto_1

    .line 155
    :cond_7
    return-void
.end method

.method public static a(Lbnb;)Z
    .locals 1

    .prologue
    .line 302
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lbnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lbnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
