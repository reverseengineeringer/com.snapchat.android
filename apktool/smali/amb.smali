.class public final Lamb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:[Ljava/io/File;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "^_^"

    iput-object v0, p0, Lamb;->e:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lamb;->c:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lamb;->d:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lamb;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lazk;->a(Landroid/content/Context;Z)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lamb;->a:[Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 53
    iget-object v0, p0, Lamb;->d:Ljava/lang/String;

    const-string v1, "^_^"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&taskId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lamb;->a:[Ljava/io/File;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lamb;->b:Ljava/util/List;

    .line 58
    iget-object v2, p0, Lamb;->a:[Ljava/io/File;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 59
    iget-object v5, p0, Lamb;->b:Ljava/util/List;

    new-instance v6, Lpo;

    invoke-direct {v6, v1, v4}, Lpo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lamb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpo;

    .line 66
    invoke-virtual {v0}, Lpo;->f()V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method
