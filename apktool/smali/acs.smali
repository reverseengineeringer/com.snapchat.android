.class public final Lacs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lacq;


# instance fields
.field private final a:Lale;

.field private final b:Lacv;

.field private final c:Lacu;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lale;->a()Lale;

    move-result-object v0

    new-instance v1, Lacv;

    invoke-direct {v1}, Lacv;-><init>()V

    new-instance v2, Lacu;

    invoke-direct {v2}, Lacu;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lacs;-><init>(Lale;Lacv;Lacu;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lale;Lacv;Lacu;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lacs;->a:Lale;

    .line 30
    iput-object p3, p0, Lacs;->c:Lacu;

    .line 31
    iput-object p2, p0, Lacs;->b:Lacv;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lacf;Lcom/snapchat/android/discover/model/DSnapPage;Lalc$a;)Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lacs;->a:Lale;

    invoke-virtual {v0}, Lale;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lacs;->b:Lacv;

    invoke-virtual {v0, p1, p2, p3}, Lacv;->a(Lacf;Lcom/snapchat/android/discover/model/DSnapPage;Lalc$a;)Z

    move-result v0

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lacs;->c:Lacu;

    invoke-virtual {v0, p1, p2, p3}, Lacu;->a(Lacf;Lcom/snapchat/android/discover/model/DSnapPage;Lalc$a;)Z

    move-result v0

    goto :goto_0
.end method
