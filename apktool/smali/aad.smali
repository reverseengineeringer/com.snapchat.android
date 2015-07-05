.class public final Laad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContentValues;

.field private final b:Latt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Latt;

    invoke-direct {v0}, Latt;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0, v1}, Laad;-><init>(Latt;Landroid/content/ContentValues;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Latt;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Laad;->a:Landroid/content/ContentValues;

    .line 28
    iput-object p1, p0, Laad;->b:Latt;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lzw;D)Laad;
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Laad;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lzw;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 60
    return-object p0
.end method

.method public final a(Lzw;I)Laad;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Laad;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lzw;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    return-object p0
.end method

.method public final a(Lzw;J)Laad;
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Laad;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lzw;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    return-object p0
.end method

.method public final a(Lzw;Ljava/lang/String;)Laad;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Laad;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lzw;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-object p0
.end method

.method public final a(Lzw;Ljava/util/Map;)Laad;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Laad;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lzw;->getColumnName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laad;->b:Latt;

    invoke-virtual {v2, p2}, Latt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object p0
.end method

.method public final a(Lzw;Z)Laad;
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Laad;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lzw;->getColumnName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    return-object p0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
