.class public final Ladm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Laej;

.field final b:Laed;

.field final c:Lauz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauz",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Laej$b;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lauz;)V
    .locals 2
    .param p1    # Lauz;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauz",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Laej;->a()Laej;

    move-result-object v0

    invoke-static {}, Laed;->a()Laed;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ladm;-><init>(Lauz;Laej;Laed;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Lauz;Laej;Laed;)V
    .locals 1
    .param p1    # Lauz;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laej;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Laed;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauz",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;",
            "Laej;",
            "Laed;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "ResetAdsOperation"

    iput-object v0, p0, Ladm;->e:Ljava/lang/String;

    .line 45
    new-instance v0, Ladm$1;

    invoke-direct {v0, p0}, Ladm$1;-><init>(Ladm;)V

    iput-object v0, p0, Ladm;->d:Laej$b;

    .line 32
    iput-object p2, p0, Ladm;->a:Laej;

    .line 33
    iput-object p3, p0, Ladm;->b:Laed;

    .line 34
    iput-object p1, p0, Ladm;->c:Lauz;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Ladm;->c:Lauz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 42
    iget-object v0, p0, Ladm;->a:Laej;

    new-array v1, v2, [Laej$b;

    iget-object v2, p0, Ladm;->d:Laej$b;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Laej;->a([Laej$b;)V

    .line 43
    return-void
.end method
