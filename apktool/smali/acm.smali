.class public final Lacm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ladj;

.field final b:Ladd;

.field final c:Laub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laub",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ladj$b;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laub;)V
    .locals 2
    .param p1    # Laub;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laub",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v0

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lacm;-><init>(Laub;Ladj;Ladd;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Laub;Ladj;Ladd;)V
    .locals 1
    .param p1    # Laub;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ladj;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ladd;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laub",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;",
            "Ladj;",
            "Ladd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "ResetAdsOperation"

    iput-object v0, p0, Lacm;->e:Ljava/lang/String;

    .line 45
    new-instance v0, Lacm$1;

    invoke-direct {v0, p0}, Lacm$1;-><init>(Lacm;)V

    iput-object v0, p0, Lacm;->d:Ladj$b;

    .line 32
    iput-object p2, p0, Lacm;->a:Ladj;

    .line 33
    iput-object p3, p0, Lacm;->b:Ladd;

    .line 34
    iput-object p1, p0, Lacm;->c:Laub;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    const-string v0, "ResetAdsOperation"

    const-string v1, "Resetting state of failed ads using %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lacm;->c:Laub;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lacm;->a:Ladj;

    new-array v1, v5, [Ladj$b;

    iget-object v2, p0, Lacm;->d:Ladj$b;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$b;)V

    .line 43
    return-void
.end method
