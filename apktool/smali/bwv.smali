.class public final Lbwv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public final a:C

.field private b:Ljava/lang/String;

.field private c:C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x2c

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-char v1, p0, Lbwv;->a:C

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lbwv;->b:Ljava/lang/String;

    .line 37
    iput-char v1, p0, Lbwv;->c:C

    .line 48
    iput-object p1, p0, Lbwv;->b:Ljava/lang/String;

    .line 49
    iput-char v1, p0, Lbwv;->c:C

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbwv;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 90
    .line 91
    iget-object v0, p0, Lbwv;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 93
    const/4 v1, 0x0

    move v0, v2

    move v3, v2

    .line 96
    :goto_0
    if-ge v3, v4, :cond_4

    .line 97
    iget-object v5, p0, Lbwv;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 109
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v5, p0, Lbwv;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    .line 100
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 101
    :cond_2
    iget-object v5, p0, Lbwv;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lbwv;->c:C

    if-ne v5, v6, :cond_0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lbwv;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lbwv;->b:Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbwv;->b:Ljava/lang/String;

    .line 112
    :goto_2
    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lbwv;->b:Ljava/lang/String;

    .line 114
    const-string v1, ""

    iput-object v1, p0, Lbwv;->b:Ljava/lang/String;

    .line 117
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lbwv;->a()Z

    move-result v0

    return v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lbwv;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
